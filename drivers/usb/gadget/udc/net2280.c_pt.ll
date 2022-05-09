; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/net2280.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/net2280.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.73 = type { ptr, %struct.usb_ep_caps }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.net2280 = type { %struct.usb_gadget, %struct.spinlock, [9 x %struct.net2280_ep], ptr, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.net2280_ep = type { %struct.usb_ep, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.net2280_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net2280_usb_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net2280_dma = type { i32, i32, i32, i32 }
%struct.net2280_dma_regs = type { i32, i32, [2 x i32], i32, i32, i32, i32 }
%struct.net2280_ep_regs = type { i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.net2280_dep_regs = type { i32, i32, [2 x i32] }
%struct.usb338x_usb_ext_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb338x_ll_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [2 x i32], i32, i32, [8 x i32], [3 x i32], i32, i32, [3 x i32], i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.net2280_request = type { %struct.usb_request, ptr, i32, %struct.list_head, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb338x_pl_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.77 = type { [2 x i32] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__param_str_fifo_mode = internal constant [18 x i8] c"net2280.fifo_mode\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@fifo_mode = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_fifo_mode = internal constant %struct.kernel_param { ptr @__param_str_fifo_mode, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @fifo_mode } }, section "__param", align 4
@__UNIQUE_ID_fifo_modetype236 = internal constant [34 x i8] c"net2280.parmtype=fifo_mode:ushort\00", section ".modinfo", align 1
@__param_str_enable_suspend = internal constant [23 x i8] c"net2280.enable_suspend\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_suspend = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_suspend = internal constant %struct.kernel_param { ptr @__param_str_enable_suspend, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable_suspend } }, section "__param", align 4
@__UNIQUE_ID_enable_suspendtype237 = internal constant [37 x i8] c"net2280.parmtype=enable_suspend:bool\00", section ".modinfo", align 1
@__initcall__kmod_net2280__275_3886_net2280_pci_driver_init6 = internal global ptr @net2280_pci_driver_init, section ".initcall6.init", align 4
@net2280_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @driver_name, ptr @pci_ids, ptr @net2280_probe, ptr @net2280_remove, ptr null, ptr null, ptr @net2280_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_net2280_pci_driver_exit = internal global ptr @net2280_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description276 = internal constant [66 x i8] c"net2280.description=PLX NET228x/USB338x USB Peripheral Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [30 x i8] c"net2280.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [44 x i8] c"net2280.file=drivers/usb/gadget/udc/net2280\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [20 x i8] c"net2280.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net2280\00", [24 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"net2280\00", [24 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 6092, i32 8832, i32 -1, i32 -1, i32 787454, i32 -1, i32 3, i32 0 }, %struct.pci_device_id { i32 6092, i32 8834, i32 -1, i32 -1, i32 787454, i32 -1, i32 1, i32 0 }, %struct.pci_device_id { i32 4277, i32 9088, i32 -1, i32 -1, i32 787454, i32 -1, i32 8, i32 0 }, %struct.pci_device_id { i32 4277, i32 13184, i32 -1, i32 -1, i32 787454, i32 -1, i32 12, i32 0 }, %struct.pci_device_id { i32 4277, i32 13186, i32 -1, i32 -1, i32 787454, i32 -1, i32 12, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@net2280_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@net2280_ops = internal constant { %struct.usb_gadget_ops, [36 x i8] } { %struct.usb_gadget_ops { ptr @net2280_get_frame, ptr @net2280_wakeup, ptr @net2280_set_selfpowered, ptr null, ptr null, ptr @net2280_pullup, ptr null, ptr null, ptr @net2280_start, ptr @net2280_stop, ptr null, ptr null, ptr @net2280_async_callbacks, ptr @net2280_match_ep, ptr null }, [36 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@net2280_probe.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 3, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net2280_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/gadget/udc/net2280.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"controller already in use\0A\00", [37 x i8] zeroinitializer }, align 32
@net2280_probe.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 3, i8 -105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can't map memory\0A\00", [46 x i8] zeroinitializer }, align 32
@net2280_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 3722, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No IRQ.  Check PCI setup!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@net2280_probe._entry_ptr = internal global ptr @net2280_probe._entry, section ".printk_index", align 4
@net2280_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 3729, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable MSI mode\0A\00", [37 x i8] zeroinitializer }, align 32
@net2280_probe._entry_ptr.11 = internal global ptr @net2280_probe._entry.9, section ".printk_index", align 4
@net2280_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 3733, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request interrupt %d failed\0A\00", [35 x i8] zeroinitializer }, align 32
@net2280_probe._entry_ptr.14 = internal global ptr @net2280_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"requests\00", [23 x i8] zeroinitializer }, align 32
@net2280_probe.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 3, i8 -88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't get request pool\0A\00", [40 x i8] zeroinitializer }, align 32
@net2280_probe.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 3, i8 -85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't get dummy %d\0A\00", [44 x i8] zeroinitializer }, align 32
@net2280_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 3783, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@net2280_probe._entry_ptr.21 = internal global ptr @net2280_probe._entry.18, section ".printk_index", align 4
@driver_desc = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PLX NET228x/USB338x USB Peripheral Controller\00", [50 x i8] zeroinitializer }, align 32
@net2280_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 3785, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"irq %d, pci mem %p, chip rev %04x\0A\00", [61 x i8] zeroinitializer }, align 32
@net2280_probe._entry_ptr.24 = internal global ptr @net2280_probe._entry.22, section ".printk_index", align 4
@net2280_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 3787, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"version: 2005 Sept 27/v3.0; %s\0A\00", [32 x i8] zeroinitializer }, align 32
@net2280_probe._entry_ptr.27 = internal global ptr @net2280_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enhanced mode\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"legacy mode\00", [20 x i8] zeroinitializer }, align 32
@dev_attr_registers = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @registers_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@scan_dma_completions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1177, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s lost packet sync!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scan_dma_completions\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scan_dma_completions._entry_ptr = internal global ptr @scan_dma_completions._entry, section ".printk_index", align 4
@scan_dma_completions.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 1, i8 40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s dma, discard %d len %d\0A\00", [37 x i8] zeroinitializer }, align 32
@done.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -13, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", [58 x i8] zeroinitializer }, align 32
@dev_attr_function = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @function_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_queues = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @queues_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queues\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0A%s (ep%d%s-%s) max %04x %s fifo %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pio\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ep0 max 64 pio %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09(nothing queued)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\09req %p len %d/%d buf %p (dmacount %08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09req %p len %d/%d buf %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\09    td %08x  count %08x buf %08x desc %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iso\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@defect7374_enable_data_eps_zero._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 1995, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Operate Defect 7374 workaround soft this time\00", [50 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"defect7374_enable_data_eps_zero\00", [32 x i8] zeroinitializer }, align 32
@defect7374_enable_data_eps_zero._entry_ptr = internal global ptr @defect7374_enable_data_eps_zero._entry, section ".printk_index", align 4
@defect7374_enable_data_eps_zero._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 1996, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"It will operate on cold-reboot and SS connect\00", [50 x i8] zeroinitializer }, align 32
@defect7374_enable_data_eps_zero._entry_ptr.56 = internal global ptr @defect7374_enable_data_eps_zero._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-e\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-f\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep2in\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep4in\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep1out\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep3out\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep1in\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep3in\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep2out\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep4out\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%d%s\00", [25 x i8] zeroinitializer }, align 32
@ep_info_dft = internal constant { [9 x %struct.anon.73], [56 x i8] } { [9 x %struct.anon.73] [%struct.anon.73 { ptr @ep0name, %struct.usb_ep_caps { i8 -116, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.68, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.69, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.70, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.71, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.57, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.58, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.72, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.73, %struct.usb_ep_caps { i8 124, [3 x i8] undef } }], [56 x i8] zeroinitializer }, align 32
@ep0name = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ep0\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-a\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-b\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-c\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-d\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-g\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep-h\00", [27 x i8] zeroinitializer }, align 32
@net2280_ep_ops = internal constant { %struct.usb_ep_ops, [52 x i8] } { %struct.usb_ep_ops { ptr @net2280_enable, ptr @net2280_disable, ptr null, ptr @net2280_alloc_request, ptr @net2280_free_request, ptr @net2280_queue, ptr @net2280_dequeue, ptr @net2280_set_halt, ptr @net2280_set_wedge, ptr @net2280_fifo_status, ptr @net2280_fifo_flush }, [52 x i8] zeroinitializer }, align 32
@net2280_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: failed at line=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net2280_enable\00", [17 x i8] zeroinitializer }, align 32
@net2280_enable._entry_ptr = internal global ptr @net2280_enable._entry, section ".printk_index", align 4
@net2280_enable.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"enabled %s (ep%d%s-%s) %s max %04x\0A\00", [60 x i8] zeroinitializer }, align 32
@net2280_enable._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.3, i32 357, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: error=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@net2280_enable._entry_ptr.79 = internal global ptr @net2280_enable._entry.77, section ".printk_index", align 4
@set_max_speed.ep_enhanced = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 16, i32 96, i32 48, i32 128, i32 80, i32 32, i32 112, i32 64, i32 144], [60 x i8] zeroinitializer }, align 32
@ep_clear_seqnum.ep_pl = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 3, i32 4, i32 7, i32 8, i32 2, i32 5, i32 6, i32 9], [60 x i8] zeroinitializer }, align 32
@ep_bit = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 17, i32 2, i32 19, i32 4, i32 1, i32 18, i32 3, i32 20], [60 x i8] zeroinitializer }, align 32
@net2280_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: Invalid ep=%p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net2280_disable\00", [16 x i8] zeroinitializer }, align 32
@net2280_disable._entry_ptr = internal global ptr @net2280_disable._entry, section ".printk_index", align 4
@net2280_disable.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 -124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disabled %s %s\0A\00", [16 x i8] zeroinitializer }, align 32
@ep_reset_338x._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 478, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"The dmastat return = %x!!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep_reset_338x\00", [18 x i8] zeroinitializer }, align 32
@ep_reset_338x._entry_ptr = internal global ptr @ep_reset_338x._entry, section ".printk_index", align 4
@net2280_alloc_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: Invalid ep\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net2280_alloc_request\00", [42 x i8] zeroinitializer }, align 32
@net2280_alloc_request._entry_ptr = internal global ptr @net2280_alloc_request._entry, section ".printk_index", align 4
@net2280_free_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 588, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Invalid ep=%p or req=%p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net2280_free_request\00", [43 x i8] zeroinitializer }, align 32
@net2280_free_request._entry_ptr = internal global ptr @net2280_free_request._entry, section ".printk_index", align 4
@net2280_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Invalid ep=%p or ep->desc\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net2280_queue\00", [18 x i8] zeroinitializer }, align 32
@net2280_queue._entry_ptr = internal global ptr @net2280_queue._entry, section ".printk_index", align 4
@net2280_queue.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 1, i8 2, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s queue req %p, len %d buf %p\0A\00", [32 x i8] zeroinitializer }, align 32
@net2280_queue.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.92, i8 1, i8 7, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s status ack\0A\00", [17 x i8] zeroinitializer }, align 32
@net2280_queue._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.90, ptr @.str.3, i32 1120, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@net2280_queue._entry_ptr.94 = internal global ptr @net2280_queue._entry.93, section ".printk_index", align 4
@write_fifo.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_fifo\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"write %s fifo (IN) %d bytes%s req %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (short)\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@read_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 751, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s out fifo %d bytes, expected %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_fifo\00", [22 x i8] zeroinitializer }, align 32
@read_fifo._entry_ptr = internal global ptr @read_fifo._entry, section ".printk_index", align 4
@read_fifo.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 0, i8 -65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"read %s fifo (OUT) %d bytes%s%s%s req %p %d/%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" flush\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" nak\00", [27 x i8] zeroinitializer }, align 32
@out_flush.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 0, i8 -87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"out_flush\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s %s %08x !NAK\0A\00", [47 x i8] zeroinitializer }, align 32
@net2280_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Invalid ep=%p or ep->desc or req=%p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net2280_dequeue\00", [16 x i8] zeroinitializer }, align 32
@net2280_dequeue._entry_ptr = internal global ptr @net2280_dequeue._entry, section ".printk_index", align 4
@net2280_dequeue.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.108, i8 1, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Request mismatch\0A\00", [42 x i8] zeroinitializer }, align 32
@net2280_dequeue.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.109, i8 1, i8 64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unlink (%s) dma\0A\00", [47 x i8] zeroinitializer }, align 32
@net2280_dequeue.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.110, i8 1, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unlink (%s) pio\0A\00", [47 x i8] zeroinitializer }, align 32
@net2280_set_halt_and_wedge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.111, ptr @.str.3, i32 1335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net2280_set_halt_and_wedge\00", [37 x i8] zeroinitializer }, align 32
@net2280_set_halt_and_wedge._entry_ptr = internal global ptr @net2280_set_halt_and_wedge._entry, section ".printk_index", align 4
@net2280_set_halt_and_wedge.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 1, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wedge\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"halt\00", [27 x i8] zeroinitializer }, align 32
@net2280_set_halt_and_wedge._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.111, ptr @.str.3, i32 1383, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@net2280_set_halt_and_wedge._entry_ptr.118 = internal global ptr @net2280_set_halt_and_wedge._entry.117, section ".printk_index", align 4
@net2280_set_wedge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Invalid ep=%p or ep0\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net2280_set_wedge\00", [46 x i8] zeroinitializer }, align 32
@net2280_set_wedge._entry_ptr = internal global ptr @net2280_set_wedge._entry, section ".printk_index", align 4
@net2280_fifo_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.121, ptr @.str.3, i32 1408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net2280_fifo_status\00", [44 x i8] zeroinitializer }, align 32
@net2280_fifo_status._entry_ptr = internal global ptr @net2280_fifo_status._entry, section ".printk_index", align 4
@net2280_fifo_status._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.3, i32 1414, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Invalid driver=%p or speed=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@net2280_fifo_status._entry_ptr.124 = internal global ptr @net2280_fifo_status._entry.122, section ".printk_index", align 4
@net2280_fifo_status._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.3, i32 1420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Fifo overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@net2280_fifo_status._entry_ptr.127 = internal global ptr @net2280_fifo_status._entry.125, section ".printk_index", align 4
@net2280_fifo_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.128, ptr @.str.3, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net2280_fifo_flush\00", [45 x i8] zeroinitializer }, align 32
@net2280_fifo_flush._entry_ptr = internal global ptr @net2280_fifo_flush._entry, section ".printk_index", align 4
@net2280_fifo_flush._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.128, ptr @.str.3, i32 1440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@net2280_fifo_flush._entry_ptr.130 = internal global ptr @net2280_fifo_flush._entry.129, section ".printk_index", align 4
@usb_reinit_338x.ne = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 1, i32 2, i32 3, i32 4], [60 x i8] zeroinitializer }, align 32
@usb_reinit_338x.ep_reg_addr = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 192, i32 0, i32 192, i32 0, i32 0, i32 192, i32 0, i32 192], [60 x i8] zeroinitializer }, align 32
@ep_info_adv = internal constant { [9 x %struct.anon.73], [56 x i8] } { [9 x %struct.anon.73] [%struct.anon.73 { ptr @ep0name, %struct.usb_ep_caps { i8 -116, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.63, %struct.usb_ep_caps { i8 120, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.65, %struct.usb_ep_caps { i8 116, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.64, %struct.usb_ep_caps { i8 120, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.66, %struct.usb_ep_caps { i8 116, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.61, %struct.usb_ep_caps { i8 116, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.59, %struct.usb_ep_caps { i8 120, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.62, %struct.usb_ep_caps { i8 116, [3 x i8] undef } }, %struct.anon.73 { ptr @.str.60, %struct.usb_ep_caps { i8 120, [3 x i8] undef } }], [56 x i8] zeroinitializer }, align 32
@handle_stat1_irqs.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 3, i8 80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"handle_stat1_irqs\00", [46 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disconnect %s\0A\00", [17 x i8] zeroinitializer }, align 32
@handle_stat1_irqs.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.3, ptr @.str.133, i8 3, i8 82, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset %s\0A\00", [22 x i8] zeroinitializer }, align 32
@handle_stat1_irqs.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.3, ptr @.str.134, i8 3, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s no xact done? %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_stat1_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.131, ptr @.str.3, i32 3529, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci dma error; stat %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@handle_stat1_irqs._entry_ptr = internal global ptr @handle_stat1_irqs._entry, section ".printk_index", align 4
@handle_stat1_irqs.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.3, ptr @.str.136, i8 3, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unhandled irqstat1 %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.19, i8 3, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"handle_stat0_irqs\00", [46 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.138, i8 3, i8 42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s stat %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.139, i8 3, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s wedged, halt not cleared\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.140, i8 3, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s clear halt\0A\00", [17 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.141, i8 3, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s set halt\0A\00", [19 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.142, i8 3, i8 56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"setup %02x.%02x v%04x i%04x l%04x ep_cfg %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.143, i8 3, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"req %02x.%02x protocol STALL; stat %d\0A\00", [57 x i8] zeroinitializer }, align 32
@handle_stat0_irqs.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.144, i8 3, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unhandled irqstat0 %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@defect7374_workaround._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 2833, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"FAIL: Defect 7374 workaround waited but failed to detect SS host's data phase ACK.\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"defect7374_workaround\00", [42 x i8] zeroinitializer }, align 32
@defect7374_workaround._entry_ptr = internal global ptr @defect7374_workaround._entry, section ".printk_index", align 4
@defect7374_workaround._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.3, i32 2835, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"PL_EP_STATUS_1(23:16):.Expected from 0x11 to 0x16got 0x%2.2x.\0A\00", [33 x i8] zeroinitializer }, align 32
@defect7374_workaround._entry_ptr.149 = internal global ptr @defect7374_workaround._entry.147, section ".printk_index", align 4
@defect7374_workaround._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.146, ptr @.str.3, i32 2839, ptr @.str.32, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"INFO: Defect 7374 workaround waited about\0A%duSec for Control Read Data Phase ACK\0A\00", [46 x i8] zeroinitializer }, align 32
@defect7374_workaround._entry_ptr.152 = internal global ptr @defect7374_workaround._entry.150, section ".printk_index", align 4
@handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.140, i8 2, i8 -27, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle_stat0_irqs_superspeed\00", [35 x i8] zeroinitializer }, align 32
@handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.142, i8 2, i8 -6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.143, i8 2, i8 -3, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@handle_ep_small.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.3, ptr @.str.155, i8 2, i8 123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"handle_ep_small\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s ack ep_stat %08x, req %p\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_ep_small.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.3, ptr @.str.156, i8 2, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s escape stuck %d, count %u\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_ep_small.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.3, ptr @.str.157, i8 2, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s dma ep_stat %08x ??\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"%s version 2005 Sept 27/v3.0, chiprev %04x\0A\0Adevinit %03x fifoctl %08x gadget '%s'\0Apci irqenb0 %02x irqenb1 %08x irqstat0 %04x irqstat1 %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high speed\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"powered\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full speed\00", [21 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"not attached\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"stdrsp %08x usbctl %08x usbstat %08x addr 0x%02x (%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\0A%s\09cfg %05x rsp (%02x) %s%s%s%s%s%s%s%sirqenb %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NAK \00", [27 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hide \00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CRC \00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupt \00", [21 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"status \00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NAKmode \00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DATA1 \00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DATA0 \00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HALT \00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\09stat %08x avail %04x (ep%d%s-%s)%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"  dma\09ctl %08x stat %08x count %08x\0A\09addr %08x desc %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0Airqs:  \00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %s/%lu\00", [24 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@net2280_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.3, i32 3618, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unbind\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net2280_remove\00", [17 x i8] zeroinitializer }, align 32
@net2280_remove._entry_ptr = internal global ptr @net2280_remove._entry, section ".printk_index", align 4
@switch.table.queues_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.49, ptr @.str.48, ptr @.str.50], [20 x i8] zeroinitializer }, align 32
@switch.table.net2280_enable = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.49, ptr @.str.48, ptr @.str.50], [20 x i8] zeroinitializer }, align 32
@switch.table.registers_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.49, ptr @.str.48, ptr @.str.50], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 1]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 7, i64 18, i64 20]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 7, i64 18, i64 20]
@__sancov_gen_cov_switch_values.193 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 9]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 130]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 16, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 16, i64 48, i64 49, i64 50]
@___asan_gen_.199 = private unnamed_addr constant [10 x i8] c"fifo_mode\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 130, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"enable_suspend\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 140, i32 13 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"net2280_pci_driver\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3875, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3886, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 69, i32 19 }
@___asan_gen_.214 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3826, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3642, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"net2280_ops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1622, i32 36 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3666, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3678, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3722, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3729, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3733, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3741, i32 34 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3746, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3756, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3783, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"driver_desc\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 70, i32 19 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3784, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3786, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [19 x i8] c"dev_attr_registers\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1176, i32 5 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1184, i32 6 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 970, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"dev_attr_function\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [16 x i8] c"dev_attr_queues\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1653, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1896, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1833, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1835, i32 24 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1835, i32 31 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1838, i32 15 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1838, i32 23 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1841, i32 30 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1849, i32 30 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1859, i32 6 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1866, i32 6 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1878, i32 31 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 150, i32 38 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 151, i32 38 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 152, i32 37 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 154, i32 9 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1995, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1996, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1561, i32 40 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1564, i32 40 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1575, i32 40 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1578, i32 40 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1583, i32 40 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1586, i32 40 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1591, i32 40 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1594, i32 40 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1599, i32 40 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1602, i32 40 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1608, i32 31 }
@___asan_gen_.427 = private unnamed_addr constant [12 x i8] c"ep_info_dft\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 84, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant [8 x i8] c"ep0name\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 73, i32 19 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 87, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 89, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 91, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 93, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 99, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 101, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [15 x i8] c"net2280_ep_ops\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1448, i32 32 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 196, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 347, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 357, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [12 x i8] c"ep_enhanced\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [36 x i8] c"../drivers/usb/gadget/udc/net2280.h\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 365, i32 19 }
@___asan_gen_.475 = private unnamed_addr constant [6 x i8] c"ep_pl\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2858, i32 19 }
@___asan_gen_.478 = private unnamed_addr constant [7 x i8] c"ep_bit\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 72, i32 18 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 519, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 530, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 477, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 552, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 587, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 998, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1031, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1052, i32 5 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1120, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 631, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 749, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 764, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 677, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1250, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1276, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1283, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1294, i32 4 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1335, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1356, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1383, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1395, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1408, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1412, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1420, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1434, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1438, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2197, i32 19 }
@___asan_gen_.655 = private unnamed_addr constant [12 x i8] c"ep_reg_addr\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2198, i32 19 }
@___asan_gen_.658 = private unnamed_addr constant [12 x i8] c"ep_info_adv\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 103, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3394, i32 5 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3400, i32 5 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3499, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3529, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3540, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3134, i32 4 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3240, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3256, i32 5 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3259, i32 5 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3286, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3292, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3308, i32 4 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3352, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2832, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2834, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2837, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2965, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2539, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2656, i32 7 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 2698, i32 4 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1804, i32 8 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1674, i32 7 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1677, i32 28 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1698, i32 8 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1700, i32 8 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1702, i32 8 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1705, i32 8 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1707, i32 4 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1729, i32 5 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1733, i32 8 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1735, i32 8 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1737, i32 8 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1739, i32 8 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1741, i32 8 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1743, i32 8 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1745, i32 8 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1745, i32 19 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1747, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1753, i32 5 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1759, i32 19 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1767, i32 5 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1782, i32 28 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1791, i32 29 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 1796, i32 28 }
@___asan_gen_.814 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.820 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.821 = private constant [36 x i8] c"../drivers/usb/gadget/udc/net2280.c\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.821, i32 3618, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [25 x i8] c"switch.table.queues_show\00", align 1
@___asan_gen_.824 = private unnamed_addr constant [28 x i8] c"switch.table.net2280_enable\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [28 x i8] c"switch.table.registers_show\00", align 1
@llvm.compiler.used = appending global [254 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_enable_suspendtype237, ptr @__UNIQUE_ID_fifo_modetype236, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_net2280_pci_driver_exit, ptr @__initcall__kmod_net2280__275_3886_net2280_pci_driver_init6, ptr @__param_enable_suspend, ptr @__param_fifo_mode, ptr @defect7374_enable_data_eps_zero._entry, ptr @defect7374_enable_data_eps_zero._entry.54, ptr @defect7374_enable_data_eps_zero._entry_ptr, ptr @defect7374_enable_data_eps_zero._entry_ptr.56, ptr @defect7374_workaround._entry, ptr @defect7374_workaround._entry.147, ptr @defect7374_workaround._entry.150, ptr @defect7374_workaround._entry_ptr, ptr @defect7374_workaround._entry_ptr.149, ptr @defect7374_workaround._entry_ptr.152, ptr @ep_reset_338x._entry, ptr @ep_reset_338x._entry_ptr, ptr @handle_stat1_irqs._entry, ptr @handle_stat1_irqs._entry_ptr, ptr @net2280_alloc_request._entry, ptr @net2280_alloc_request._entry_ptr, ptr @net2280_dequeue._entry, ptr @net2280_dequeue._entry_ptr, ptr @net2280_disable._entry, ptr @net2280_disable._entry_ptr, ptr @net2280_enable._entry, ptr @net2280_enable._entry.77, ptr @net2280_enable._entry_ptr, ptr @net2280_enable._entry_ptr.79, ptr @net2280_fifo_flush._entry, ptr @net2280_fifo_flush._entry.129, ptr @net2280_fifo_flush._entry_ptr, ptr @net2280_fifo_flush._entry_ptr.130, ptr @net2280_fifo_status._entry, ptr @net2280_fifo_status._entry.122, ptr @net2280_fifo_status._entry.125, ptr @net2280_fifo_status._entry_ptr, ptr @net2280_fifo_status._entry_ptr.124, ptr @net2280_fifo_status._entry_ptr.127, ptr @net2280_free_request._entry, ptr @net2280_free_request._entry_ptr, ptr @net2280_pci_driver_exit, ptr @net2280_probe._entry, ptr @net2280_probe._entry.12, ptr @net2280_probe._entry.18, ptr @net2280_probe._entry.22, ptr @net2280_probe._entry.25, ptr @net2280_probe._entry.9, ptr @net2280_probe._entry_ptr, ptr @net2280_probe._entry_ptr.11, ptr @net2280_probe._entry_ptr.14, ptr @net2280_probe._entry_ptr.21, ptr @net2280_probe._entry_ptr.24, ptr @net2280_probe._entry_ptr.27, ptr @net2280_queue._entry, ptr @net2280_queue._entry.93, ptr @net2280_queue._entry_ptr, ptr @net2280_queue._entry_ptr.94, ptr @net2280_remove._entry, ptr @net2280_remove._entry_ptr, ptr @net2280_set_halt_and_wedge._entry, ptr @net2280_set_halt_and_wedge._entry.117, ptr @net2280_set_halt_and_wedge._entry_ptr, ptr @net2280_set_halt_and_wedge._entry_ptr.118, ptr @net2280_set_wedge._entry, ptr @net2280_set_wedge._entry_ptr, ptr @read_fifo._entry, ptr @read_fifo._entry_ptr, ptr @scan_dma_completions._entry, ptr @scan_dma_completions._entry_ptr, ptr @fifo_mode, ptr @enable_suspend, ptr @net2280_pci_driver, ptr @.str, ptr @driver_name, ptr @pci_ids, ptr @net2280_probe.__key, ptr @.str.1, ptr @net2280_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @driver_desc, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @dev_attr_registers, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @dev_attr_function, ptr @dev_attr_queues, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @ep_info_dft, ptr @ep0name, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @net2280_ep_ops, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @set_max_speed.ep_enhanced, ptr @ep_clear_seqnum.ep_pl, ptr @ep_bit, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @usb_reinit_338x.ne, ptr @usb_reinit_338x.ep_reg_addr, ptr @ep_info_adv, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @switch.table.queues_show, ptr @switch.table.net2280_enable, ptr @switch.table.registers_show], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_suspend to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_desc to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_registers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_dma_completions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_function to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_queues to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defect7374_enable_data_eps_zero._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defect7374_enable_data_eps_zero._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_info_dft to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep0name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_ep_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_enable._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_max_speed.ep_enhanced to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_clear_seqnum.ep_pl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_bit to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_reset_338x._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_alloc_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_free_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_queue._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_set_halt_and_wedge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_set_halt_and_wedge._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_set_wedge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_fifo_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_fifo_status._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_fifo_status._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_fifo_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_fifo_flush._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_reinit_338x.ne to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_reinit_338x.ep_reg_addr to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_info_adv to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_stat1_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defect7374_workaround._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defect7374_workaround._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defect7374_workaround._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net2280_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.queues_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.net2280_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.registers_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @net2280_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @net2280_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @net2280_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1952) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup259_crit_edge, label %if.end

entry.cleanup259_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup259

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @usb_initialize_gadget(ptr noundef %dev2, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @gadget_release) #12
  %lock = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @net2280_probe.__key, i16 noundef signext 3) #12
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %quirks = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %quirks, align 4
  %pdev4 = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %pdev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev4, align 8
  %ops = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @net2280_ops, ptr %ops, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 3, i32 5
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %max_speed, align 4
  %name = getelementptr inbounds %struct.usb_gadget, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @driver_name, ptr %name, align 4
  %call9 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.if.then257_crit_edge, label %if.end12

if.end.if.then257_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then257

if.end12:                                         ; preds = %if.end
  %enabled = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %enabled, align 8
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %enabled, align 8
  %resource13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %10 = ptrtoint ptr %resource13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource13, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp eq i32 %13, 0
  %sub = sub i32 1, %11
  %add = add i32 %sub, %13
  %cond23 = select i1 %cmp16, i32 0, i32 %add
  %call24 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %cond23, ptr noundef nonnull @driver_name, i32 noundef 0) #12
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.body27, label %if.end39

do.body27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_probe.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_probe, %if.then257)) #12
          to label %if.then33 [label %if.then257], !srcloc !446

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev4, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_probe.__UNIQUE_ID_ddebug271, ptr noundef %dev35, ptr noundef nonnull @.str.4) #12
  br label %if.then257

if.end39:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load40 = load i16, ptr %enabled, align 8
  %bf.set42 = or i16 %bf.load40, 2048
  store i16 %bf.set42, ptr %enabled, align 8
  %call43 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %cond23) #12
  %cmp44 = icmp eq ptr %call43, null
  br i1 %cmp44, label %do.body46, label %if.end66

do.body46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_probe.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_probe, %if.then257)) #12
          to label %if.then60 [label %if.then257], !srcloc !446

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev4, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_probe.__UNIQUE_ID_ddebug272, ptr noundef %dev62, ptr noundef nonnull @.str.5) #12
  br label %if.then257

if.end66:                                         ; preds = %if.end39
  %regs = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call43, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %call43, i32 128
  %usb = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %usb, align 8
  %add.ptr67 = getelementptr i8, ptr %call43, i32 256
  %pci = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr67, ptr %pci, align 8
  %add.ptr68 = getelementptr i8, ptr %call43, i32 384
  %dma = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 14
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr68, ptr %dma, align 4
  %add.ptr69 = getelementptr i8, ptr %call43, i32 512
  %dep = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %dep to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr69, ptr %dep, align 8
  %add.ptr70 = getelementptr i8, ptr %call43, i32 768
  %epregs = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %epregs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr70, ptr %epregs, align 4
  %25 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quirks, align 4
  %and72 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else109, label %if.then74

if.then74:                                        ; preds = %if.end66
  %add.ptr75 = getelementptr i8, ptr %call43, i32 180
  %usb_ext = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %usb_ext to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr75, ptr %usb_ext, align 4
  %add.ptr76 = getelementptr i8, ptr %call43, i32 1792
  %llregs = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %llregs to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr76, ptr %llregs, align 8
  %add.ptr77 = getelementptr i8, ptr %call43, i32 2048
  %plregs = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 18
  %29 = ptrtoint ptr %plregs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr77, ptr %plregs, align 4
  %usbstat79 = getelementptr i8, ptr %call43, i32 144
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbstat79) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !448
  %31 = and i32 %30, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool84.not = icmp eq i32 %31, 0
  %.lobit = lshr exact i32 %31, 19
  %enhanced_mode = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %enhanced_mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.lobit, ptr %enhanced_mode, align 4
  %cond91 = select i1 %tobool84.not, i32 5, i32 9
  %n_ep = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %n_ep to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond91, ptr %n_ep, align 8
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %idxaddr.i = getelementptr inbounds %struct.net2280_regs, ptr %35, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i, i32 184549376) #12, !srcloc !450
  %idxdata.i = getelementptr inbounds %struct.net2280_regs, ptr %35, i32 0, i32 13
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %idxdata.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  %37 = and i32 %36, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %37)
  %cmp95 = icmp eq i32 %37, 48
  %38 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load97 = load i16, ptr %enabled, align 8
  br i1 %cmp95, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set99 = or i16 %bf.load97, 8
  %39 = ptrtoint ptr %enabled to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %bf.set99, ptr %enabled, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !452
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %41, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl, i32 0) #12, !srcloc !450
  br label %if.end117

if.else:                                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear106 = and i16 %bf.load97, -9
  %42 = ptrtoint ptr %enabled to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %bf.clear106, ptr %enabled, align 8
  br label %if.end117

if.else109:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %enhanced_mode110 = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %enhanced_mode110 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %enhanced_mode110, align 4
  %n_ep111 = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %n_ep111 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 7, ptr %n_ep111, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !453
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %usb, align 8
  %usbctl116 = getelementptr inbounds %struct.net2280_usb_regs, ptr %46, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl116, i32 0) #12, !srcloc !450
  br label %if.end117

if.end117:                                        ; preds = %if.else109, %if.else, %if.then96
  tail call fastcc void @usb_reset(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @usb_reinit(ptr noundef nonnull %call7.i.i)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool118.not = icmp eq i32 %48, 0
  br i1 %tobool118.not, label %do.end122, label %if.end125

do.end122:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev4, align 8
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev124, ptr noundef nonnull @.str.6) #16
  br label %if.then257

if.end125:                                        ; preds = %if.end117
  %51 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %quirks, align 4
  %and127 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end125.if.end139_crit_edge, label %if.then129

if.end125.if.end139_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then129:                                       ; preds = %if.end125
  %call130 = tail call i32 @pci_enable_msi(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then129.if.end139_crit_edge, label %do.end135

if.then129.if.end139_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

do.end135:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev4, align 8
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev137, ptr noundef nonnull @.str.10) #16
  br label %if.end139

if.end139:                                        ; preds = %do.end135, %if.then129.if.end139_crit_edge, %if.end125.if.end139_crit_edge
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %56, ptr noundef nonnull @net2280_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool142.not = icmp eq i32 %call.i, 0
  br i1 %tobool142.not, label %if.end150, label %do.end146

do.end146:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev4, align 8
  %dev148 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev148, ptr noundef nonnull @.str.13, i32 noundef %60) #16
  br label %if.then257

if.end150:                                        ; preds = %if.end139
  %61 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load151 = load i16, ptr %enabled, align 8
  %bf.set153 = or i16 %bf.load151, 4096
  store i16 %bf.set153, ptr %enabled, align 8
  %call155 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.15, ptr noundef %dev2, i32 noundef 16, i32 noundef 0, i32 noundef 0) #12
  %requests = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 19
  %62 = ptrtoint ptr %requests to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call155, ptr %requests, align 8
  %tobool157.not = icmp eq ptr %call155, null
  br i1 %tobool157.not, label %do.body159, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end150
  %63 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %requests, align 8
  %td_dma = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 5
  %call183 = tail call ptr @dma_pool_alloc(ptr noundef %64, i32 noundef 3264, ptr noundef %td_dma) #12
  %tobool184.not = icmp eq ptr %call183, null
  br i1 %tobool184.not, label %for.body.preheader.do.body186_crit_edge, label %for.inc

for.body.preheader.do.body186_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body186

do.body159:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_probe.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_probe, %if.then257)) #12
          to label %if.then173 [label %if.then257], !srcloc !446

if.then173:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev4, align 8
  %dev175 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_probe.__UNIQUE_ID_ddebug273, ptr noundef %dev175, ptr noundef nonnull @.str.16) #12
  br label %if.then257

do.body186:                                       ; preds = %for.inc.2.do.body186_crit_edge, %for.inc.1.do.body186_crit_edge, %for.inc.do.body186_crit_edge, %for.body.preheader.do.body186_crit_edge
  %i.0390.lcssa = phi i32 [ 1, %for.body.preheader.do.body186_crit_edge ], [ 2, %for.inc.do.body186_crit_edge ], [ 3, %for.inc.1.do.body186_crit_edge ], [ 4, %for.inc.2.do.body186_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_probe.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_probe, %if.then257)) #12
          to label %if.then200 [label %if.then257], !srcloc !446

if.then200:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev4, align 8
  %dev202 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_probe.__UNIQUE_ID_ddebug274, ptr noundef %dev202, ptr noundef nonnull @.str.17, i32 noundef %i.0390.lcssa) #12
  br label %if.then257

for.inc:                                          ; preds = %for.body.preheader
  %69 = ptrtoint ptr %call183 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %call183, align 16
  %dmaaddr = getelementptr inbounds %struct.net2280_dma, ptr %call183, i32 0, i32 1
  %70 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dmaaddr, align 4
  %dmadesc = getelementptr inbounds %struct.net2280_dma, ptr %call183, i32 0, i32 2
  %72 = ptrtoint ptr %dmadesc to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dmadesc, align 8
  %dummy = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 4
  %73 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call183, ptr %dummy, align 4
  %74 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %requests, align 8
  %td_dma.1 = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 5
  %call183.1 = tail call ptr @dma_pool_alloc(ptr noundef %75, i32 noundef 3264, ptr noundef %td_dma.1) #12
  %tobool184.not.1 = icmp eq ptr %call183.1, null
  br i1 %tobool184.not.1, label %for.inc.do.body186_crit_edge, label %for.inc.1

for.inc.do.body186_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body186

for.inc.1:                                        ; preds = %for.inc
  %76 = ptrtoint ptr %call183.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %call183.1, align 16
  %dmaaddr.1 = getelementptr inbounds %struct.net2280_dma, ptr %call183.1, i32 0, i32 1
  %77 = ptrtoint ptr %dmaaddr.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dmaaddr.1, align 4
  %dmadesc.1 = getelementptr inbounds %struct.net2280_dma, ptr %call183.1, i32 0, i32 2
  %79 = ptrtoint ptr %dmadesc.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %dmadesc.1, align 8
  %dummy.1 = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 4
  %80 = ptrtoint ptr %dummy.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call183.1, ptr %dummy.1, align 4
  %81 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %requests, align 8
  %td_dma.2 = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 5
  %call183.2 = tail call ptr @dma_pool_alloc(ptr noundef %82, i32 noundef 3264, ptr noundef %td_dma.2) #12
  %tobool184.not.2 = icmp eq ptr %call183.2, null
  br i1 %tobool184.not.2, label %for.inc.1.do.body186_crit_edge, label %for.inc.2

for.inc.1.do.body186_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body186

for.inc.2:                                        ; preds = %for.inc.1
  %83 = ptrtoint ptr %call183.2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %call183.2, align 16
  %dmaaddr.2 = getelementptr inbounds %struct.net2280_dma, ptr %call183.2, i32 0, i32 1
  %84 = ptrtoint ptr %dmaaddr.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dmaaddr.2, align 4
  %dmadesc.2 = getelementptr inbounds %struct.net2280_dma, ptr %call183.2, i32 0, i32 2
  %86 = ptrtoint ptr %dmadesc.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %dmadesc.2, align 8
  %dummy.2 = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 4
  %87 = ptrtoint ptr %dummy.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call183.2, ptr %dummy.2, align 4
  %88 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %requests, align 8
  %td_dma.3 = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 5
  %call183.3 = tail call ptr @dma_pool_alloc(ptr noundef %89, i32 noundef 3264, ptr noundef %td_dma.3) #12
  %tobool184.not.3 = icmp eq ptr %call183.3, null
  br i1 %tobool184.not.3, label %for.inc.2.do.body186_crit_edge, label %for.inc.3

for.inc.2.do.body186_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body186

for.inc.3:                                        ; preds = %for.inc.2
  %90 = ptrtoint ptr %call183.3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %call183.3, align 16
  %dmaaddr.3 = getelementptr inbounds %struct.net2280_dma, ptr %call183.3, i32 0, i32 1
  %91 = ptrtoint ptr %dmaaddr.3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dmaaddr.3, align 4
  %dmadesc.3 = getelementptr inbounds %struct.net2280_dma, ptr %call183.3, i32 0, i32 2
  %93 = ptrtoint ptr %dmadesc.3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %dmadesc.3, align 8
  %dummy.3 = getelementptr %struct.net2280, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 4
  %94 = ptrtoint ptr %dummy.3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call183.3, ptr %dummy.3, align 4
  %95 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %quirks, align 4
  %and210 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %for.inc.3.if.end217_crit_edge, label %do.body213

for.inc.3.if.end217_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end217

do.body213:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !454
  tail call void @arm_heavy_mb() #12
  %97 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pci, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 458752) #12, !srcloc !450
  br label %if.end217

if.end217:                                        ; preds = %do.body213, %for.inc.3.if.end217_crit_edge
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %call218 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #12
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %idxaddr.i376 = getelementptr inbounds %struct.net2280_regs, ptr %100, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i376, i32 50331648) #12, !srcloc !450
  %idxdata.i377 = getelementptr inbounds %struct.net2280_regs, ptr %100, i32 0, i32 13
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %idxdata.i377) #12, !srcloc !447
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  %conv = trunc i32 %102 to i16
  %chiprev = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 5
  %103 = ptrtoint ptr %chiprev to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv, ptr %chiprev, align 2
  %104 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev4, align 8
  %dev226 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev226, ptr noundef nonnull @.str.19, ptr noundef nonnull @driver_desc) #16
  %106 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev4, align 8
  %dev231 = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %108 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irq, align 4
  %110 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %chiprev, align 2
  %conv234 = zext i16 %111 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev231, ptr noundef nonnull @.str.23, i32 noundef %109, ptr noundef nonnull %call43, i32 noundef %conv234) #16
  %112 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pdev4, align 8
  %dev239 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  %enhanced_mode240 = getelementptr inbounds %struct.net2280, ptr %call7.i.i, i32 0, i32 6
  %114 = ptrtoint ptr %enhanced_mode240 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %enhanced_mode240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool241.not = icmp eq i32 %115, 0
  %cond242 = select i1 %tobool241.not, ptr @.str.29, ptr @.str.28
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev239, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond242) #16
  %call244 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef nonnull @dev_attr_registers) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.end217.if.then257_crit_edge

if.end217.if.then257_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then257

if.end247:                                        ; preds = %if.end217
  %call249 = tail call i32 @usb_add_gadget(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %if.end247.if.then257_crit_edge

if.end247.if.then257_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then257

if.end252:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %enabled to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load253 = load i16, ptr %enabled, align 8
  %bf.set255 = or i16 %bf.load253, 1024
  store i16 %bf.set255, ptr %enabled, align 8
  br label %cleanup259

if.then257:                                       ; preds = %if.end247.if.then257_crit_edge, %if.end217.if.then257_crit_edge, %if.then200, %do.body186, %if.then173, %do.body159, %do.end146, %do.end122, %if.then60, %do.body46, %if.then33, %do.body27, %if.end.if.then257_crit_edge
  %retval1.2386 = phi i32 [ -12, %if.then173 ], [ -14, %if.then60 ], [ -16, %if.then33 ], [ -19, %if.end.if.then257_crit_edge ], [ -19, %do.end122 ], [ -16, %do.end146 ], [ -16, %do.body27 ], [ -14, %do.body46 ], [ -12, %do.body159 ], [ %call244, %if.end217.if.then257_crit_edge ], [ %call249, %if.end247.if.then257_crit_edge ], [ -12, %if.then200 ], [ -12, %do.body186 ]
  tail call void @net2280_remove(ptr noundef %pdev)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup259

cleanup259:                                       ; preds = %if.then257, %if.end252, %entry.cleanup259_crit_edge
  %retval.0 = phi i32 [ 0, %if.end252 ], [ %retval1.2386, %if.then257 ], [ -12, %entry.cleanup259_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2280_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %added = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %added to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %added, align 8
  %3 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_del_gadget(ptr noundef %1) #12
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %driver = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %do.end11, label %do.body5, !prof !455

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/udc/net2280.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3590, 0\0A.popsection", ""() #12, !srcloc !456
  unreachable

do.end11:                                         ; preds = %do.body
  %requests = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %requests, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %do.end11.if.end24_crit_edge, label %for.body.preheader

do.end11.if.end24_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

for.body.preheader:                               ; preds = %do.end11
  %dummy = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 1, i32 4
  %8 = ptrtoint ptr %dummy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dummy, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %for.body.preheader.for.inc_crit_edge, label %if.end16

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end16:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %requests, align 8
  %td_dma = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 1, i32 5
  %12 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %td_dma, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef nonnull %9, i32 noundef %13) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %for.body.preheader.for.inc_crit_edge
  %dummy.1 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 2, i32 4
  %14 = ptrtoint ptr %dummy.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dummy.1, align 4
  %tobool14.not.1 = icmp eq ptr %15, null
  br i1 %tobool14.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end16.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end16.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %requests, align 8
  %td_dma.1 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 2, i32 5
  %18 = ptrtoint ptr %td_dma.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %td_dma.1, align 4
  tail call void @dma_pool_free(ptr noundef %17, ptr noundef nonnull %15, i32 noundef %19) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end16.1, %for.inc.for.inc.1_crit_edge
  %dummy.2 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 3, i32 4
  %20 = ptrtoint ptr %dummy.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dummy.2, align 4
  %tobool14.not.2 = icmp eq ptr %21, null
  br i1 %tobool14.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end16.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end16.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %requests, align 8
  %td_dma.2 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 3, i32 5
  %24 = ptrtoint ptr %td_dma.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %td_dma.2, align 4
  tail call void @dma_pool_free(ptr noundef %23, ptr noundef nonnull %21, i32 noundef %25) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end16.2, %for.inc.1.for.inc.2_crit_edge
  %dummy.3 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 4, i32 4
  %26 = ptrtoint ptr %dummy.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dummy.3, align 4
  %tobool14.not.3 = icmp eq ptr %27, null
  br i1 %tobool14.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end16.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end16.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %requests, align 8
  %td_dma.3 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 4, i32 5
  %30 = ptrtoint ptr %td_dma.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %td_dma.3, align 4
  tail call void @dma_pool_free(ptr noundef %29, ptr noundef nonnull %27, i32 noundef %31) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end16.3, %for.inc.2.for.inc.3_crit_edge
  %32 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %requests, align 8
  tail call void @dma_pool_destroy(ptr noundef %33) #12
  br label %if.end24

if.end24:                                         ; preds = %for.inc.3, %do.end11.if.end24_crit_edge
  %34 = ptrtoint ptr %added to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load25 = load i16, ptr %added, align 8
  %35 = and i16 %bf.load25, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool29.not = icmp eq i16 %35, 0
  br i1 %tobool29.not, label %if.end24.if.end32_crit_edge, label %if.then30

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %call31 = tail call ptr @free_irq(i32 noundef %37, ptr noundef %1) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end24.if.end32_crit_edge
  %quirks = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %quirks, align 4
  %and = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end32.if.end35_crit_edge, label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_msi(ptr noundef %pdev) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  %regs = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %tobool36.not = icmp eq ptr %41, null
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !457
  tail call void @arm_heavy_mb() #12
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %gpioctl.i = getelementptr inbounds %struct.net2280_regs, ptr %43, i32 0, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpioctl.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !458
  %45 = and i32 %44, -251658241
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %gpioctl3.i = getelementptr inbounds %struct.net2280_regs, ptr %47, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpioctl3.i, i32 %45) #12, !srcloc !450
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %49) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %50 = ptrtoint ptr %added to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load40 = load i16, ptr %added, align 8
  %51 = and i16 %bf.load40, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool44.not = icmp eq i16 %51, 0
  br i1 %tobool44.not, label %if.end39.if.end56_crit_edge, label %if.then45

if.end39.if.end56_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %52 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %54 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp49 = icmp eq i32 %55, 0
  %sub = sub i32 1, %53
  %add = add i32 %sub, %55
  %cond = select i1 %cmp49, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %53, i32 noundef %cond) #12
  %56 = ptrtoint ptr %added to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load57.pr = load i16, ptr %added, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then45, %if.end39.if.end56_crit_edge
  %bf.load57 = phi i16 [ %bf.load57.pr, %if.then45 ], [ %bf.load40, %if.end39.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load57)
  %tobool60.not = icmp sgt i16 %bf.load57, -1
  br i1 %tobool60.not, label %if.end56.if.end62_crit_edge, label %if.then61

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end56.if.end62_crit_edge
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev63, ptr noundef nonnull @dev_attr_registers) #12
  %pdev67 = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 9
  %57 = ptrtoint ptr %pdev67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev67, align 8
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.182) #16
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void @put_device(ptr noundef %dev.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2280_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !459
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %pciirqenb0 = getelementptr inbounds %struct.net2280_regs, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb0, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !460
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %pciirqenb1 = getelementptr inbounds %struct.net2280_regs, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !461
  tail call void @arm_heavy_mb() #12
  %usb = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl, i32 0) #12, !srcloc !450
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_initialize_gadget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_release(ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_dev, i32 -88
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %speed.i3 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %speed.i3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %speed.i3, align 8
  %usb.i4 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %3 = ptrtoint ptr %usb.i4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb.i4, align 8
  %usbctl.i5 = getelementptr inbounds %struct.net2280_usb_regs, ptr %4, i32 0, i32 3
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl.i5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %regs.i.i6 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i6, align 4
  %gpioctl.i.i7 = getelementptr inbounds %struct.net2280_regs, ptr %7, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpioctl.i.i7, i32 -267386880) #12
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !462
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %usb.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb.i4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !463
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i6, align 4
  %pciirqenb0.i = getelementptr inbounds %struct.net2280_regs, ptr %11, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb0.i, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i6, align 4
  %pciirqenb1.i = getelementptr inbounds %struct.net2280_regs, ptr %13, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1.i, i32 0) #12, !srcloc !450
  %dma.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 3
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %dma.1.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 3
  %16 = ptrtoint ptr %dma.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %17, null
  br i1 %tobool.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.1.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.1.i) #12
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i.if.end.1.i_crit_edge
  %dma.2.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 3
  %18 = ptrtoint ptr %dma.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %19, null
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.2.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.2.i) #12
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %dma.3.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4, i32 3
  %20 = ptrtoint ptr %dma.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %21, null
  br i1 %tobool.not.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %if.then.3.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.3.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.3.i) #12
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %if.end.2.i.if.end.3.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !465
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i6, align 4
  %irqstat0.i = getelementptr inbounds %struct.net2280_regs, ptr %23, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat0.i, i32 -1) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !466
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i6, align 4
  %irqstat1.i = getelementptr inbounds %struct.net2280_regs, ptr %25, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat1.i, i32 -134217729) #12, !srcloc !450
  %26 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i6, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !467
  %29 = or i32 %28, 855638016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !468
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #12, !srcloc !450
  %32 = load i16, ptr @fifo_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %32)
  %cmp34.i = icmp ult i16 %32, 3
  %narrow.i = select i1 %cmp34.i, i16 %32, i16 0
  %spec.select.i = zext i16 %narrow.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  tail call void @arm_heavy_mb() #12
  %or.i.i = or i32 %spec.select.i, -65536
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %34 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i6, align 4
  %fifoctl.i.i = getelementptr inbounds %struct.net2280_regs, ptr %35, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fifoctl.i.i, i32 %33) #12, !srcloc !450
  %ep_list.i.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %36 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %ep_list.i.i, ptr %ep_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ep_list.i.i, ptr %prev.i.i.i, align 4
  %ep_list2.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list2.i.i, ptr noundef %ep_list.i.i, ptr noundef %ep_list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.3.i.list_add_tail.exit.i.i_crit_edge

if.end.3.i.list_add_tail.exit.i.i_crit_edge:      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ep_list2.i.i, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %ep_list2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ep_list.i.i, ptr %ep_list2.i.i, align 4
  %prev3.i.i.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ep_list.i.i, ptr %prev3.i.i.i.i, align 4
  %41 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %ep_list2.i.i, ptr %ep_list.i.i, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.3.i.list_add_tail.exit.i.i_crit_edge
  %ep_list8.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 0, i32 3
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i99.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list8.i.i, ptr noundef %43, ptr noundef %ep_list.i.i) #12
  br i1 %call.i.i99.i.i, label %if.end.i.i101.i.i, label %list_add_tail.exit.i.i.list_add_tail.exit102.i.i_crit_edge

list_add_tail.exit.i.i.list_add_tail.exit102.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit102.i.i

if.end.i.i101.i.i:                                ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %ep_list8.i.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %ep_list8.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ep_list.i.i, ptr %ep_list8.i.i, align 4
  %prev3.i.i100.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %prev3.i.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i100.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %ep_list8.i.i, ptr %43, align 4
  br label %list_add_tail.exit102.i.i

list_add_tail.exit102.i.i:                        ; preds = %if.end.i.i101.i.i, %list_add_tail.exit.i.i.list_add_tail.exit102.i.i_crit_edge
  %48 = zext i16 %narrow.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i16 %narrow.i, label %list_add_tail.exit102.i.i.sw.epilog.i.i_crit_edge [
    i16 0, label %sw.bb.i.i
    i16 1, label %sw.bb31.i.i
    i16 2, label %sw.bb44.i.i
  ]

list_add_tail.exit102.i.i.sw.epilog.i.i_crit_edge: ; preds = %list_add_tail.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %list_add_tail.exit102.i.i
  %ep_list14.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 0, i32 3
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i104.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list14.i.i, ptr noundef %50, ptr noundef %ep_list.i.i) #12
  br i1 %call.i.i104.i.i, label %if.end.i.i106.i.i, label %sw.bb.i.i.list_add_tail.exit107.i.i_crit_edge

sw.bb.i.i.list_add_tail.exit107.i.i_crit_edge:    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit107.i.i

if.end.i.i106.i.i:                                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ep_list14.i.i, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %ep_list14.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %ep_list.i.i, ptr %ep_list14.i.i, align 4
  %prev3.i.i105.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %prev3.i.i105.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i105.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %ep_list14.i.i, ptr %50, align 4
  br label %list_add_tail.exit107.i.i

list_add_tail.exit107.i.i:                        ; preds = %if.end.i.i106.i.i, %sw.bb.i.i.list_add_tail.exit107.i.i_crit_edge
  %ep_list20.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4, i32 0, i32 3
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i109.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list20.i.i, ptr noundef %56, ptr noundef %ep_list.i.i) #12
  br i1 %call.i.i109.i.i, label %if.end.i.i111.i.i, label %list_add_tail.exit107.i.i.list_add_tail.exit112.i.i_crit_edge

list_add_tail.exit107.i.i.list_add_tail.exit112.i.i_crit_edge: ; preds = %list_add_tail.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit112.i.i

if.end.i.i111.i.i:                                ; preds = %list_add_tail.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ep_list20.i.i, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %ep_list20.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %ep_list.i.i, ptr %ep_list20.i.i, align 4
  %prev3.i.i110.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %prev3.i.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i110.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %ep_list20.i.i, ptr %56, align 4
  br label %list_add_tail.exit112.i.i

list_add_tail.exit112.i.i:                        ; preds = %if.end.i.i111.i.i, %list_add_tail.exit107.i.i.list_add_tail.exit112.i.i_crit_edge
  %fifo_size.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 10
  %61 = ptrtoint ptr %fifo_size.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i.i = load i32, ptr %fifo_size.i.i, align 4
  %bf.clear.i.i = and i32 %bf.load.i.i, -16773121
  %bf.set.i.i = or i32 %bf.clear.i.i, 4194304
  store i32 %bf.set.i.i, ptr %fifo_size.i.i, align 4
  %fifo_size27.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 10
  br label %sw.epilog.sink.split.i.i

sw.bb31.i.i:                                      ; preds = %list_add_tail.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %fifo_size34.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 10
  %62 = ptrtoint ptr %fifo_size34.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load35.i.i = load i32, ptr %fifo_size34.i.i, align 4
  %bf.clear36.i.i = and i32 %bf.load35.i.i, -16773121
  %bf.set37.i.i = or i32 %bf.clear36.i.i, 8388608
  store i32 %bf.set37.i.i, ptr %fifo_size34.i.i, align 4
  %fifo_size40.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 10
  br label %sw.epilog.sink.split.i.i

sw.bb44.i.i:                                      ; preds = %list_add_tail.exit102.i.i
  %ep_list48.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 0, i32 3
  %63 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i114.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list48.i.i, ptr noundef %64, ptr noundef %ep_list.i.i) #12
  br i1 %call.i.i114.i.i, label %if.end.i.i116.i.i, label %sw.bb44.i.i.list_add_tail.exit117.i.i_crit_edge

sw.bb44.i.i.list_add_tail.exit117.i.i_crit_edge:  ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit117.i.i

if.end.i.i116.i.i:                                ; preds = %sw.bb44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ep_list48.i.i, ptr %prev.i.i.i, align 4
  %66 = ptrtoint ptr %ep_list48.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ep_list.i.i, ptr %ep_list48.i.i, align 4
  %prev3.i.i115.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %prev3.i.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i115.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %ep_list48.i.i, ptr %64, align 4
  br label %list_add_tail.exit117.i.i

list_add_tail.exit117.i.i:                        ; preds = %if.end.i.i116.i.i, %sw.bb44.i.i.list_add_tail.exit117.i.i_crit_edge
  %fifo_size53.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 10
  %69 = ptrtoint ptr %fifo_size53.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load54.i.i = load i32, ptr %fifo_size53.i.i, align 4
  %bf.clear55.i.i = and i32 %bf.load54.i.i, -16773121
  %bf.set56.i.i = or i32 %bf.clear55.i.i, 8388608
  store i32 %bf.set56.i.i, ptr %fifo_size53.i.i, align 4
  %fifo_size59.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 10
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %list_add_tail.exit117.i.i, %sw.bb31.i.i, %list_add_tail.exit112.i.i
  %fifo_size59.sink128.i.i = phi ptr [ %fifo_size59.i.i, %list_add_tail.exit117.i.i ], [ %fifo_size40.i.i, %sw.bb31.i.i ], [ %fifo_size27.i.i, %list_add_tail.exit112.i.i ]
  %.sink.i.i = phi i32 [ 4194304, %list_add_tail.exit117.i.i ], [ 8388608, %sw.bb31.i.i ], [ 4194304, %list_add_tail.exit112.i.i ]
  %70 = ptrtoint ptr %fifo_size59.sink128.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load60.i.i = load i32, ptr %fifo_size59.sink128.i.i, align 4
  %bf.clear61.i.i = and i32 %bf.load60.i.i, -16773121
  %bf.set62.i.i = or i32 %bf.clear61.i.i, %.sink.i.i
  store i32 %bf.set62.i.i, ptr %fifo_size59.sink128.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %list_add_tail.exit102.i.i.sw.epilog.i.i_crit_edge
  %ep_list66.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 5, i32 0, i32 3
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i119.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list66.i.i, ptr noundef %72, ptr noundef %ep_list.i.i) #12
  br i1 %call.i.i119.i.i, label %if.end.i.i121.i.i, label %sw.epilog.i.i.list_add_tail.exit122.i.i_crit_edge

sw.epilog.i.i.list_add_tail.exit122.i.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit122.i.i

if.end.i.i121.i.i:                                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ep_list66.i.i, ptr %prev.i.i.i, align 4
  %74 = ptrtoint ptr %ep_list66.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %ep_list.i.i, ptr %ep_list66.i.i, align 4
  %prev3.i.i120.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 5, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %prev3.i.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i120.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %ep_list66.i.i, ptr %72, align 4
  br label %list_add_tail.exit122.i.i

list_add_tail.exit122.i.i:                        ; preds = %if.end.i.i121.i.i, %sw.epilog.i.i.list_add_tail.exit122.i.i_crit_edge
  %ep_list72.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 6, i32 0, i32 3
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i124.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list72.i.i, ptr noundef %78, ptr noundef %ep_list.i.i) #12
  br i1 %call.i.i124.i.i, label %if.end.i.i126.i.i, label %list_add_tail.exit122.i.i.return_crit_edge

list_add_tail.exit122.i.i.return_crit_edge:       ; preds = %list_add_tail.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.i126.i.i:                                ; preds = %list_add_tail.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %ep_list72.i.i, ptr %prev.i.i.i, align 4
  %80 = ptrtoint ptr %ep_list72.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %ep_list.i.i, ptr %ep_list72.i.i, align 4
  %prev3.i.i125.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 6, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %prev3.i.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i125.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %ep_list72.i.i, ptr %78, align 4
  br label %return

if.end:                                           ; preds = %entry
  %bug7734_patched.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %83 = ptrtoint ptr %bug7734_patched.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load.i = load i16, ptr %bug7734_patched.i, align 8
  %84 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool.not.i8 = icmp eq i16 %84, 0
  br i1 %tobool.not.i8, label %if.end.if.end.i11_crit_edge, label %do.body.i

if.end.if.end.i11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i11

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @arm_heavy_mb() #12
  %85 = ptrtoint ptr %usb.i4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %usb.i4, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !471
  tail call void @arm_heavy_mb() #12
  %87 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i6, align 4
  %pciirqenb0.i9 = getelementptr inbounds %struct.net2280_regs, ptr %88, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb0.i9, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !472
  tail call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i6, align 4
  %pciirqenb1.i10 = getelementptr inbounds %struct.net2280_regs, ptr %90, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1.i10, i32 0) #12, !srcloc !450
  br label %if.end.i11

if.end.i11:                                       ; preds = %do.body.i, %if.end.if.end.i11_crit_edge
  %dma15.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 14
  %dma12.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 3
  %91 = ptrtoint ptr %dma12.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma12.i, align 4
  %tobool13.not.i = icmp eq ptr %92, null
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i12 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.i12) #12
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %dma15.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma15.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @arm_heavy_mb() #12
  %dmastat.i = getelementptr %struct.net2280_dma_regs, ptr %94, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat.i, i32 33554432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #12, !srcloc !450
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then14.i
  %dma12.1.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 3
  %95 = ptrtoint ptr %dma12.1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma12.1.i, align 4
  %tobool13.not.1.i = icmp eq ptr %96, null
  br i1 %tobool13.not.1.i, label %if.else.1.i, label %if.then14.1.i

if.then14.1.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.1.i13 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.1.i13) #12
  br label %if.end23.1.i

if.else.1.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %dma15.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dma15.i, align 4
  %arrayidx16.1.i = getelementptr %struct.net2280_dma_regs, ptr %98, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @arm_heavy_mb() #12
  %dmastat.1.i = getelementptr %struct.net2280_dma_regs, ptr %98, i32 1, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat.1.i, i32 33554432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.1.i, i32 0) #12, !srcloc !450
  br label %if.end23.1.i

if.end23.1.i:                                     ; preds = %if.else.1.i, %if.then14.1.i
  %dma12.2.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 3
  %99 = ptrtoint ptr %dma12.2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma12.2.i, align 4
  %tobool13.not.2.i = icmp eq ptr %100, null
  br i1 %tobool13.not.2.i, label %if.else.2.i, label %if.then14.2.i

if.then14.2.i:                                    ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.2.i14 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.2.i14) #12
  br label %if.end23.2.i

if.else.2.i:                                      ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %dma15.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dma15.i, align 4
  %arrayidx16.2.i = getelementptr %struct.net2280_dma_regs, ptr %102, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @arm_heavy_mb() #12
  %dmastat.2.i = getelementptr %struct.net2280_dma_regs, ptr %102, i32 2, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat.2.i, i32 33554432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.2.i, i32 0) #12, !srcloc !450
  br label %if.end23.2.i

if.end23.2.i:                                     ; preds = %if.else.2.i, %if.then14.2.i
  %dma12.3.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4, i32 3
  %103 = ptrtoint ptr %dma12.3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dma12.3.i, align 4
  %tobool13.not.3.i = icmp eq ptr %104, null
  br i1 %tobool13.not.3.i, label %if.else.3.i, label %if.then14.3.i

if.then14.3.i:                                    ; preds = %if.end23.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.3.i15 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4
  tail call fastcc void @abort_dma(ptr noundef %arrayidx.3.i15) #12
  br label %if.end23.3.i

if.else.3.i:                                      ; preds = %if.end23.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %dma15.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma15.i, align 4
  %arrayidx16.3.i = getelementptr %struct.net2280_dma_regs, ptr %106, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @arm_heavy_mb() #12
  %dmastat.3.i = getelementptr %struct.net2280_dma_regs, ptr %106, i32 3, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat.3.i, i32 33554432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.3.i, i32 0) #12, !srcloc !450
  br label %if.end23.3.i

if.end23.3.i:                                     ; preds = %if.else.3.i, %if.then14.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i6, align 4
  %irqstat0.i16 = getelementptr inbounds %struct.net2280_regs, ptr %108, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat0.i16, i32 -1) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !476
  tail call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i.i6, align 4
  %irqstat1.i17 = getelementptr inbounds %struct.net2280_regs, ptr %110, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat1.i17, i32 -1) #12, !srcloc !450
  %111 = ptrtoint ptr %bug7734_patched.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load33.i = load i16, ptr %bug7734_patched.i, align 8
  %112 = and i16 %bf.load33.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool37.not.i = icmp eq i16 %112, 0
  br i1 %tobool37.not.i, label %if.end23.3.i.if.end53.i_crit_edge, label %if.then38.i

if.end23.3.i.if.end53.i_crit_edge:                ; preds = %if.end23.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.then38.i:                                      ; preds = %if.end23.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i6, align 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !477
  %116 = or i32 %115, 855638016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !478
  tail call void @arm_heavy_mb() #12
  %117 = ptrtoint ptr %regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #12, !srcloc !450
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then38.i, %if.end23.3.i.if.end53.i_crit_edge
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %119 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %n_ep.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 7
  %121 = ptrtoint ptr %n_ep.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %n_ep.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp5695.i = icmp ugt i32 %122, 1
  br i1 %cmp5695.i, label %if.end53.i.for.body57.i_crit_edge, label %if.end53.i.return_crit_edge

if.end53.i.return_crit_edge:                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end53.i.for.body57.i_crit_edge:                ; preds = %if.end53.i
  br label %for.body57.i

for.body57.i:                                     ; preds = %list_add_tail.exit.i.for.body57.i_crit_edge, %if.end53.i.for.body57.i_crit_edge
  %tmp.196.i = phi i32 [ %inc65.i, %list_add_tail.exit.i.for.body57.i_crit_edge ], [ 1, %if.end53.i.for.body57.i_crit_edge ]
  %ep_list61.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.196.i, i32 0, i32 3
  %123 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ep_list61.i, ptr noundef %124, ptr noundef %ep_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body57.i.list_add_tail.exit.i_crit_edge

for.body57.i.list_add_tail.exit.i_crit_edge:      ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %ep_list61.i, ptr %prev.i.i, align 4
  %126 = ptrtoint ptr %ep_list61.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %ep_list.i, ptr %ep_list61.i, align 4
  %prev3.i.i.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.196.i, i32 0, i32 3, i32 1
  %127 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev3.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %ep_list61.i, ptr %124, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body57.i.list_add_tail.exit.i_crit_edge
  %inc65.i = add nuw i32 %tmp.196.i, 1
  %129 = ptrtoint ptr %n_ep.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %n_ep.i, align 8
  %cmp56.i = icmp ult i32 %inc65.i, %130
  br i1 %cmp56.i, label %list_add_tail.exit.i.for.body57.i_crit_edge, label %list_add_tail.exit.i.return_crit_edge

list_add_tail.exit.i.return_crit_edge:            ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

list_add_tail.exit.i.for.body57.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body57.i

return:                                           ; preds = %list_add_tail.exit.i.return_crit_edge, %if.end53.i.return_crit_edge, %if.end.i.i126.i.i, %list_add_tail.exit122.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_reinit(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %epregs.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 16
  %regs23.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %dma.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %tmp.085.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.085.i
  %arrayidx2.i = getelementptr [9 x %struct.anon.73], ptr @ep_info_dft, i32 0, i32 %tmp.085.i
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.i, align 4
  %name4.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 1
  %4 = ptrtoint ptr %name4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name4.i, align 4
  %caps.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i, i32 0, i32 4
  %caps7.i = getelementptr [9 x %struct.anon.73], ptr @ep_info_dft, i32 0, i32 %tmp.085.i, i32 1
  %5 = ptrtoint ptr %caps7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps7.i, align 4
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %caps.i, align 4
  %dev8.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.085.i, i32 6
  %8 = ptrtoint ptr %dev8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev8.i, align 4
  %num.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.085.i, i32 10
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %num.i, align 4
  %bf.shl.i = shl nuw nsw i32 %tmp.085.i, 24
  %bf.clear.i = and i32 %bf.load.i, 4095
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  %10 = add nsw i32 %tmp.085.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set13.i = or i32 %bf.set.i, 4194304
  %12 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set13.i, ptr %num.i, align 4
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma.i, align 4
  %arrayidx14.i = getelementptr %struct.net2280_dma_regs, ptr %14, i32 %10
  %dma15.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.085.i, i32 3
  %15 = ptrtoint ptr %dma15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx14.i, ptr %dma15.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set19.i = or i32 %bf.set.i, 262144
  %16 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.set19.i, ptr %num.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %17 = ptrtoint ptr %epregs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %epregs.i, align 4
  %arrayidx20.i = getelementptr %struct.net2280_ep_regs, ptr %18, i32 %tmp.085.i
  %regs.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.085.i, i32 2
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx20.i, ptr %regs.i, align 4
  %20 = load ptr, ptr %epregs.i, align 4
  %arrayidx22.i = getelementptr %struct.net2280_ep_regs, ptr %20, i32 %tmp.085.i
  %cfg.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %tmp.085.i, i32 1
  %21 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx22.i, ptr %cfg.i, align 4
  %22 = ptrtoint ptr %regs23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs23.i, align 4
  tail call fastcc void @ep_reset_228x(ptr noundef %23, ptr noundef %arrayidx.i) #12
  %inc.i = add nuw nsw i32 %tmp.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %usb_reinit_228x.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

usb_reinit_228x.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ep24.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep24.i, i32 noundef 64) #12
  %arrayidx28.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 5
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx28.i, i32 noundef 64) #12
  %arrayidx31.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 6
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %arrayidx31.i, i32 noundef 64) #12
  %ep0.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %ep0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ep24.i, ptr %ep0.i, align 4
  %stopped.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 10
  %25 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load38.i = load i32, ptr %stopped.i, align 4
  %bf.clear39.i = and i32 %bf.load38.i, -513
  store i32 %bf.clear39.i, ptr %stopped.i, align 4
  %ep_list.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %ep_list.i, ptr %ep_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ep_list.i, ptr %prev.i.i, align 4
  %dep.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dep.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 218103808) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dep.i, align 8
  %arrayidx46.1.i = getelementptr %struct.net2280_dep_regs, ptr %31, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx46.1.i, i32 218103808) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dep.i, align 8
  %arrayidx46.2.i = getelementptr %struct.net2280_dep_regs, ptr %33, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx46.2.i, i32 218103808) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dep.i, align 8
  %arrayidx46.3.i = getelementptr %struct.net2280_dep_regs, ptr %35, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx46.3.i, i32 218103808) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dep.i, align 8
  %arrayidx46.4.i = getelementptr %struct.net2280_dep_regs, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx46.4.i, i32 218103808) #12, !srcloc !450
  br label %return

if.end:                                           ; preds = %entry
  %n_ep.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 7
  %38 = ptrtoint ptr %n_ep.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_ep.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp270.i = icmp sgt i32 %39, 0
  br i1 %cmp270.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %enhanced_mode.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 6
  %dma.i3 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 14
  %epregs.i4 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 16
  %regs52.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  br label %for.body.i12

for.body.i12:                                     ; preds = %if.end44.i.for.body.i12_crit_edge, %for.body.lr.ph.i
  %i.0271.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i18, %if.end44.i.for.body.i12_crit_edge ]
  %arrayidx.i5 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.0271.i
  %40 = ptrtoint ptr %enhanced_mode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %enhanced_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  %ep_info_dft.ep_info_adv.i = select i1 %tobool.not.i, ptr @ep_info_dft, ptr @ep_info_adv
  %cond.in.i = getelementptr [9 x %struct.anon.73], ptr %ep_info_dft.ep_info_adv.i, i32 0, i32 %i.0271.i
  %42 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %name6.i = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i5, i32 0, i32 1
  %43 = ptrtoint ptr %name6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cond.i, ptr %name6.i, align 4
  %caps.i6 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx.i5, i32 0, i32 4
  %storemerge.in.i = getelementptr [9 x %struct.anon.73], ptr %ep_info_dft.ep_info_adv.i, i32 0, i32 %i.0271.i, i32 1
  %44 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %45 = ptrtoint ptr %caps.i6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge.i, ptr %caps.i6, align 4
  %dev17.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.0271.i, i32 6
  %46 = ptrtoint ptr %dev17.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev, ptr %dev17.i, align 4
  %num.i7 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.0271.i, i32 10
  %47 = ptrtoint ptr %num.i7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load.i8 = load i32, ptr %num.i7, align 4
  %bf.shl.i9 = shl i32 %i.0271.i, 24
  %bf.clear.i10 = and i32 %bf.load.i8, 16777215
  %bf.set.i11 = or i32 %bf.clear.i10, %bf.shl.i9
  store i32 %bf.set.i11, ptr %num.i7, align 4
  %48 = add nsw i32 %i.0271.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %if.then.i14, label %for.body.i12.if.end.i15_crit_edge

for.body.i12.if.end.i15_crit_edge:                ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i15

if.then.i14:                                      ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %dma.i3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma.i3, align 4
  %arrayidx20.i13 = getelementptr %struct.net2280_dma_regs, ptr %51, i32 %48
  %dma21.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.0271.i, i32 3
  %52 = ptrtoint ptr %dma21.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %arrayidx20.i13, ptr %dma21.i, align 4
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i14, %for.body.i12.if.end.i15_crit_edge
  %53 = ptrtoint ptr %enhanced_mode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %enhanced_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool23.not.i = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %epregs.i4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %epregs.i4, align 4
  br i1 %tobool23.not.i, label %if.else.i17, label %if.then24.i

if.then24.i:                                      ; preds = %if.end.i15
  %arrayidx25.i = getelementptr [9 x i32], ptr @usb_reinit_338x.ne, i32 0, i32 %i.0271.i
  %57 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx25.i, align 4
  %arrayidx26.i = getelementptr %struct.net2280_ep_regs, ptr %56, i32 %58
  %cfg.i16 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.0271.i, i32 1
  %59 = ptrtoint ptr %cfg.i16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx26.i, ptr %cfg.i16, align 4
  br i1 %49, label %do.body.i, label %if.then24.i.if.end33.i_crit_edge

if.then24.i.if.end33.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

do.body.i:                                        ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !480
  tail call void @arm_heavy_mb() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  %61 = ptrtoint ptr %cfg.i16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #12, !srcloc !450
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body.i, %if.then24.i.if.end33.i_crit_edge
  %63 = ptrtoint ptr %epregs.i4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %epregs.i4, align 4
  %arrayidx36.i = getelementptr %struct.net2280_ep_regs, ptr %64, i32 %58
  %arrayidx37.i = getelementptr [9 x i32], ptr @usb_reinit_338x.ep_reg_addr, i32 0, i32 %i.0271.i
  %65 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx37.i, align 4
  %add.ptr.i = getelementptr i8, ptr %arrayidx36.i, i32 %66
  br label %if.end44.i

if.else.i17:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx39.i = getelementptr %struct.net2280_ep_regs, ptr %56, i32 %i.0271.i
  %cfg40.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.0271.i, i32 1
  %67 = ptrtoint ptr %cfg40.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx39.i, ptr %cfg40.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i17, %if.end33.i
  %arrayidx39.sink.i = phi ptr [ %arrayidx39.i, %if.else.i17 ], [ %add.ptr.i, %if.end33.i ]
  %regs43.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.0271.i, i32 2
  %68 = ptrtoint ptr %regs43.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx39.sink.i, ptr %regs43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0271.i)
  %cmp45.not.i = icmp eq i32 %i.0271.i, 0
  %cond46.i = select i1 %cmp45.not.i, i32 2097152, i32 8388608
  %69 = ptrtoint ptr %num.i7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load47.i = load i32, ptr %num.i7, align 4
  %bf.clear50.i = and i32 %bf.load47.i, -16773121
  %bf.set51.i = or i32 %bf.clear50.i, %cond46.i
  store i32 %bf.set51.i, ptr %num.i7, align 4
  %70 = ptrtoint ptr %regs52.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs52.i, align 4
  tail call fastcc void @ep_reset_338x(ptr noundef %71, ptr noundef %arrayidx.i5) #12
  %inc.i18 = add nuw nsw i32 %i.0271.i, 1
  %72 = ptrtoint ptr %n_ep.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_ep.i, align 8
  %cmp.i = icmp slt i32 %inc.i18, %73
  br i1 %cmp.i, label %if.end44.i.for.body.i12_crit_edge, label %if.end44.i.for.end.i_crit_edge

if.end44.i.for.end.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end44.i.for.body.i12_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i12

for.end.i:                                        ; preds = %if.end44.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %ep53.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep53.i, i32 noundef 512) #12
  %ep0.i19 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 3
  %74 = ptrtoint ptr %ep0.i19 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %ep53.i, ptr %ep0.i19, align 4
  %stopped.i20 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 10
  %75 = ptrtoint ptr %stopped.i20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load61.i = load i32, ptr %stopped.i20, align 4
  %bf.clear62.i = and i32 %bf.load61.i, -513
  store i32 %bf.clear62.i, ptr %stopped.i20, align 4
  %bug7734_patched.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %76 = ptrtoint ptr %bug7734_patched.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load64.i = load i16, ptr %bug7734_patched.i, align 8
  %77 = and i16 %bf.load64.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool66.not.i = icmp eq i16 %77, 0
  br i1 %tobool66.not.i, label %for.end.i.usb_reinit_338x.exit_crit_edge, label %if.then67.i

for.end.i.usb_reinit_338x.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_reinit_338x.exit

if.then67.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %usb_ext.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 12
  %78 = ptrtoint ptr %usb_ext.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %usb_ext.i, align 4
  %usbctl2.i = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %79, i32 0, i32 5
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl2.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !481
  %81 = and i32 %80, 536870911
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  tail call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %usb_ext.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %usb_ext.i, align 4
  %usbctl274.i = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %83, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl274.i, i32 %81) #12, !srcloc !450
  br label %usb_reinit_338x.exit

usb_reinit_338x.exit:                             ; preds = %if.then67.i, %for.end.i.usb_reinit_338x.exit_crit_edge
  %llregs.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 17
  %84 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %llregs.i, align 8
  %ll_lfps_5.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %85, i32 0, i32 14
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ll_lfps_5.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !483
  %87 = and i32 %86, -3841
  %88 = or i32 %87, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !484
  tail call void @arm_heavy_mb() #12
  %89 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %llregs.i, align 8
  %ll_lfps_586.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %90, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ll_lfps_586.i, i32 %88) #12, !srcloc !450
  %91 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %llregs.i, align 8
  %ll_lfps_6.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %92, i32 0, i32 15
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ll_lfps_6.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !485
  %94 = and i32 %93, 65535
  %95 = or i32 %94, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !486
  tail call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %llregs.i, align 8
  %ll_lfps_699.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %97, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ll_lfps_699.i, i32 %95) #12, !srcloc !450
  %98 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %llregs.i, align 8
  %ll_tsn_counters_2.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %99, i32 0, i32 18
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ll_tsn_counters_2.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !487
  %101 = and i32 %100, -32
  %102 = or i32 %101, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !488
  tail call void @arm_heavy_mb() #12
  %103 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %llregs.i, align 8
  %ll_tsn_counters_2112.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %104, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ll_tsn_counters_2112.i, i32 %102) #12, !srcloc !450
  %105 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %llregs.i, align 8
  %ll_tsn_counters_3.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %106, i32 0, i32 19
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ll_tsn_counters_3.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !489
  %108 = and i32 %107, -520093697
  %109 = or i32 %108, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !490
  tail call void @arm_heavy_mb() #12
  %110 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %llregs.i, align 8
  %ll_tsn_counters_3125.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %111, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ll_tsn_counters_3125.i, i32 %109) #12, !srcloc !450
  %112 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %llregs.i, align 8
  %ll_lfps_timers_2.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %113, i32 0, i32 22
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ll_lfps_timers_2.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !491
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !492
  tail call void @arm_heavy_mb() #12
  %115 = and i32 %114, 65535
  %116 = or i32 %115, 1292369920
  %117 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %llregs.i, align 8
  %ll_lfps_timers_2138.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %118, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ll_lfps_timers_2138.i, i32 %116) #12, !srcloc !450
  %119 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %llregs.i, align 8
  %ll_tsn_chicken_bit.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %120, i32 0, i32 24
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ll_tsn_chicken_bit.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !493
  %122 = or i32 %121, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !494
  tail call void @arm_heavy_mb() #12
  %123 = ptrtoint ptr %llregs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %llregs.i, align 8
  %ll_tsn_chicken_bit150.i = getelementptr inbounds %struct.usb338x_ll_regs, ptr %124, i32 0, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ll_tsn_chicken_bit150.i, i32 %122) #12, !srcloc !450
  %125 = ptrtoint ptr %ep0.i19 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ep0.i19, align 4
  %ep_list.i21 = getelementptr inbounds %struct.usb_ep, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %ep_list.i21 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %ep_list.i21, ptr %ep_list.i21, align 4
  %prev.i.i22 = getelementptr inbounds %struct.usb_ep, ptr %126, i32 0, i32 3, i32 1
  %128 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %ep_list.i21, ptr %prev.i.i22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !495
  tail call void @arm_heavy_mb() #12
  %dep.i23 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 15
  %129 = ptrtoint ptr %dep.i23 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dep.i23, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 218103808) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !496
  tail call void @arm_heavy_mb() #12
  %131 = ptrtoint ptr %dep.i23 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dep.i23, align 8
  %arrayidx161.i = getelementptr %struct.net2280_dep_regs, ptr %132, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx161.i, i32 218103808) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !497
  tail call void @arm_heavy_mb() #12
  %133 = ptrtoint ptr %dep.i23 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dep.i23, align 8
  %arrayidx167.i = getelementptr %struct.net2280_dep_regs, ptr %134, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx167.i, i32 234881024) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !498
  tail call void @arm_heavy_mb() #12
  %135 = ptrtoint ptr %dep.i23 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dep.i23, align 8
  %arrayidx173.i = getelementptr %struct.net2280_dep_regs, ptr %136, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx173.i, i32 234881024) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !499
  tail call void @arm_heavy_mb() #12
  %137 = ptrtoint ptr %dep.i23 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dep.i23, align 8
  %arrayidx179.i = getelementptr %struct.net2280_dep_regs, ptr %138, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx179.i, i32 251658240) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !500
  tail call void @arm_heavy_mb() #12
  %139 = ptrtoint ptr %dep.i23 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dep.i23, align 8
  %arrayidx185.i = getelementptr %struct.net2280_dep_regs, ptr %140, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx185.i, i32 201326592) #12, !srcloc !450
  br label %return

return:                                           ; preds = %usb_reinit_338x.exit, %usb_reinit_228x.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_irq(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.net2280, ptr %_dev, i32 0, i32 8
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %regs = getelementptr inbounds %struct.net2280, ptr %_dev, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %irqstat0 = getelementptr inbounds %struct.net2280_regs, ptr %3, i32 0, i32 10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %irqstat0) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !501
  %5 = and i32 %4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.net2280, ptr %_dev, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %regs6 = getelementptr inbounds %struct.net2280, ptr %_dev, i32 0, i32 10
  %6 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs6, align 4
  %irqstat1 = getelementptr inbounds %struct.net2280_regs, ptr %7, i32 0, i32 11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %irqstat1) #12, !srcloc !447
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !502
  tail call fastcc void @handle_stat1_irqs(ptr noundef %_dev, i32 noundef %9)
  %10 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs6, align 4
  %irqstat013 = getelementptr inbounds %struct.net2280_regs, ptr %11, i32 0, i32 10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %irqstat013) #12, !srcloc !447
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !503
  tail call fastcc void @handle_stat0_irqs(ptr noundef %_dev, i32 noundef %13)
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %and18 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end.if.end36_crit_edge, label %if.then20

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs6, align 4
  %pciirqenb124 = getelementptr inbounds %struct.net2280_regs, ptr %17, i32 0, i32 5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb124) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !505
  tail call void @arm_heavy_mb() #12
  %19 = and i32 %18, -129
  %20 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs6, align 4
  %pciirqenb130 = getelementptr inbounds %struct.net2280_regs, ptr %21, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb130, i32 %19) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !506
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs6, align 4
  %pciirqenb135 = getelementptr inbounds %struct.net2280_regs, ptr %23, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb135, i32 %18) #12, !srcloc !450
  br label %if.end36

if.end36:                                         ; preds = %if.then20, %if.end.if.end36_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end36 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_get_frame(ptr noundef %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %regs = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %idxaddr.i = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i, i32 33554432) #12, !srcloc !450
  %idxdata.i = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %idxdata.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  %3 = and i32 %2, -16580608
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_wakeup(ptr noundef %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %usb = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 11
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !507
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %do.body12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !508
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb, align 8
  %usbstat = getelementptr inbounds %struct.net2280_usb_regs, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbstat, i32 536870912) #12, !srcloc !450
  br label %if.end16

if.end16:                                         ; preds = %do.body12, %if.end.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_set_selfpowered(ptr noundef %_gadget, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %usb = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 11
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl) #12, !srcloc !447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !509
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool10.not = icmp eq i32 %value, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %3, 1
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 17
  %4 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %is_selfpowered, align 4
  %bf.set = or i32 %bf.load, 262144
  store i32 %bf.set, ptr %is_selfpowered, align 4
  br label %do.body17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %3, -2
  %is_selfpowered12 = getelementptr inbounds %struct.usb_gadget, ptr %_gadget, i32 0, i32 17
  %5 = ptrtoint ptr %is_selfpowered12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load13 = load i32, ptr %is_selfpowered12, align 4
  %bf.clear14 = and i32 %bf.load13, -262145
  store i32 %bf.clear14, ptr %is_selfpowered12, align 4
  br label %do.body17

do.body17:                                        ; preds = %if.else, %if.then11
  %tmp.0 = phi i32 [ %or, %if.then11 ], [ %and, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !510
  tail call void @arm_heavy_mb() #12
  %6 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %7 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb, align 8
  %usbctl21 = getelementptr inbounds %struct.net2280_usb_regs, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl21, i32 %6) #12, !srcloc !450
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_pullup(ptr noundef %_gadget, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_gadget, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %usb = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 11
  %0 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl) #12, !srcloc !447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp10.not = icmp eq i32 %is_on, 0
  %softconnect = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 4
  %4 = ptrtoint ptr %softconnect to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %softconnect, align 8
  %bf.shl = select i1 %cmp10.not, i16 0, i16 8192
  %bf.clear = and i16 %bf.load, -8193
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %softconnect, align 8
  br i1 %cmp10.not, label %do.body19, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ep0_start(ptr noundef nonnull %_gadget)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !512
  tail call void @arm_heavy_mb() #12
  %or = or i32 %3, 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb, align 8
  %usbctl18 = getelementptr inbounds %struct.net2280_usb_regs, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl18, i32 %5) #12, !srcloc !450
  br label %if.end24

do.body19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !513
  tail call void @arm_heavy_mb() #12
  %and = and i32 %3, -9
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb, align 8
  %usbctl23 = getelementptr inbounds %struct.net2280_usb_regs, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl23, i32 %8) #12, !srcloc !450
  tail call fastcc void @stop_activity(ptr noundef nonnull %_gadget, ptr noundef null)
  br label %if.end24

if.end24:                                         ; preds = %do.body19, %if.then13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_start(ptr nocapture noundef %_gadget, ptr noundef %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_speed = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 1
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 4
  %2 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false2
  %n_ep = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 7
  %4 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp445.not = icmp eq i32 %5, 0
  br i1 %cmp445.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %irqs = getelementptr %struct.net2280, ptr %_gadget, i32 0, i32 2, i32 %i.046, i32 7
  %6 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %irqs, align 4
  %inc = add nuw i32 %i.046, 1
  %7 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_ep, align 8
  %cmp4 = icmp ult i32 %inc, %8
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bus = getelementptr inbounds %struct.usb_gadget_driver, ptr %driver, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bus, align 4
  %driver6 = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 3
  %10 = ptrtoint ptr %driver6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %driver, ptr %driver6, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 9
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call = tail call i32 @device_create_file(ptr noundef %dev7, ptr noundef nonnull @dev_attr_function) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %for.end.err_unbind_crit_edge

for.end.err_unbind_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unbind

if.end10:                                         ; preds = %for.end
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call13 = tail call i32 @device_create_file(ptr noundef %dev12, ptr noundef nonnull @dev_attr_queues) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %err_func

if.end16:                                         ; preds = %if.end10
  %regs.i = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 10
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %gpioctl.i = getelementptr inbounds %struct.net2280_regs, ptr %16, i32 0, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpioctl.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !514
  %18 = or i32 %17, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !515
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %gpioctl3.i = getelementptr inbounds %struct.net2280_regs, ptr %20, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpioctl3.i, i32 %18) #12, !srcloc !450
  %quirks = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 8
  %21 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks, align 4
  %and = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %land.lhs.true

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end16
  %bug7734_patched = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 4
  %23 = ptrtoint ptr %bug7734_patched to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %bug7734_patched, align 8
  %24 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool18.not = icmp eq i16 %24, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @defect7374_enable_data_eps_zero(ptr noundef %_gadget)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  tail call fastcc void @ep0_start(ptr noundef %_gadget)
  br label %cleanup

err_func:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev22, ptr noundef nonnull @dev_attr_function) #12
  br label %err_unbind

err_unbind:                                       ; preds = %err_func, %for.end.err_unbind_crit_edge
  %retval1.0 = phi i32 [ %call, %for.end.err_unbind_crit_edge ], [ %call13, %err_func ]
  %27 = ptrtoint ptr %driver6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %driver6, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_unbind, %if.end20, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_unbind ], [ 0, %if.end20 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_stop(ptr noundef %_gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @stop_activity(ptr noundef %_gadget, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %regs.i = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 10
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %gpioctl.i = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpioctl.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !514
  %3 = and i32 %2, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !515
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %gpioctl3.i = getelementptr inbounds %struct.net2280_regs, ptr %5, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpioctl3.i, i32 %3) #12, !srcloc !450
  %pdev = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 9
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev7, ptr noundef nonnull @dev_attr_function) #12
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev9, ptr noundef nonnull @dev_attr_queues) #12
  %driver = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 3
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2280_async_callbacks(ptr noundef %_gadget, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %async_callbacks = getelementptr inbounds %struct.net2280, ptr %_gadget, i32 0, i32 4
  %0 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %async_callbacks, align 8
  %bf.shl = select i1 %enable, i16 16, i16 0
  %bf.clear = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %async_callbacks, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net2280_match_ep(ptr noundef %_gadget, ptr noundef %desc, ptr noundef %ep_comp) #2 align 64 {
entry:
  %name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #12
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %name, align 8
  %1 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bmAttributes.i, align 1
  %3 = and i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.57) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call1, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %call5 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.58) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %land.lhs.true7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true7:                                   ; preds = %if.end
  %call8 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call5, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end12_crit_edge, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true7.if.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true7.if.end12_crit_edge, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %4 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmAttributes.i, align 1
  %6 = and i8 %5, 3
  %and.i197 = zext i8 %6 to i32
  %7 = zext i32 %and.i197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %and.i197, label %if.end12.land.lhs.true56_crit_edge [
    i32 3, label %land.lhs.true15
    i32 2, label %if.end12.if.end98_crit_edge
  ]

if.end12.if.end98_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.end12.land.lhs.true56_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true56

land.lhs.true15:                                  ; preds = %if.end12
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool17.not = icmp sgt i8 %9, -1
  br i1 %tobool17.not, label %land.lhs.true35, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  %call19 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.59) #12
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then18.if.end25_crit_edge, label %land.lhs.true21

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.then18
  %call22 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call19, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.if.end25_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %if.then18.if.end25_crit_edge
  %call26 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.60) #12
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.if.end98_crit_edge, label %land.lhs.true28

if.end25.if.end98_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true28:                                  ; preds = %if.end25
  %call29 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call26, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.if.end98_crit_edge, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true28.if.end98_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true35:                                  ; preds = %land.lhs.true15
  %10 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool37.not = icmp sgt i8 %11, -1
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true35.land.lhs.true56_crit_edge

land.lhs.true35.land.lhs.true56_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true56

if.then38:                                        ; preds = %land.lhs.true35
  %call39 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.61) #12
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then38.if.end45_crit_edge, label %land.lhs.true41

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true41:                                  ; preds = %if.then38
  %call42 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call39, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.if.end45_crit_edge, label %land.lhs.true41.cleanup_crit_edge

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true41.if.end45_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true41.if.end45_crit_edge, %if.then38.if.end45_crit_edge
  %call46 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.62) #12
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end45.if.end98_crit_edge, label %land.lhs.true48

if.end45.if.end98_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true48:                                  ; preds = %if.end45
  %call49 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call46, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.if.end98_crit_edge, label %land.lhs.true48.cleanup_crit_edge

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true48.if.end98_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true56:                                  ; preds = %land.lhs.true35.land.lhs.true56_crit_edge, %if.end12.land.lhs.true56_crit_edge
  %bEndpointAddress.i204 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress.i204 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress.i204, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool58.not = icmp sgt i8 %13, -1
  br i1 %tobool58.not, label %land.lhs.true77, label %if.then59

if.then59:                                        ; preds = %land.lhs.true56
  %call60 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.63) #12
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.then59.if.end66_crit_edge, label %land.lhs.true62

if.then59.if.end66_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

land.lhs.true62:                                  ; preds = %if.then59
  %call63 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call60, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.if.end66_crit_edge, label %land.lhs.true62.cleanup_crit_edge

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true62.if.end66_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true62.if.end66_crit_edge, %if.then59.if.end66_crit_edge
  %call67 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.64) #12
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end66.if.end98_crit_edge, label %land.lhs.true69

if.end66.if.end98_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true69:                                  ; preds = %if.end66
  %call70 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call67, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.if.end98_crit_edge, label %land.lhs.true69.cleanup_crit_edge

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true69.if.end98_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true77:                                  ; preds = %land.lhs.true56
  %14 = ptrtoint ptr %bEndpointAddress.i204 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i204, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool79.not = icmp sgt i8 %15, -1
  br i1 %tobool79.not, label %if.then80, label %land.lhs.true77.if.end98_crit_edge

land.lhs.true77.if.end98_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.then80:                                        ; preds = %land.lhs.true77
  %call81 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.65) #12
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.then80.if.end87_crit_edge, label %land.lhs.true83

if.then80.if.end87_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true83:                                  ; preds = %if.then80
  %call84 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call81, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %land.lhs.true83.if.end87_crit_edge, label %land.lhs.true83.cleanup_crit_edge

land.lhs.true83.cleanup_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true83.if.end87_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.end87:                                         ; preds = %land.lhs.true83.if.end87_crit_edge, %if.then80.if.end87_crit_edge
  %call88 = tail call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull @.str.66) #12
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %if.end87.if.end98_crit_edge, label %land.lhs.true90

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

land.lhs.true90:                                  ; preds = %if.end87
  %call91 = tail call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call88, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true90.if.end98_crit_edge, label %land.lhs.true90.cleanup_crit_edge

land.lhs.true90.cleanup_crit_edge:                ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true90.if.end98_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.end98:                                         ; preds = %land.lhs.true90.if.end98_crit_edge, %if.end87.if.end98_crit_edge, %land.lhs.true77.if.end98_crit_edge, %land.lhs.true69.if.end98_crit_edge, %if.end66.if.end98_crit_edge, %land.lhs.true48.if.end98_crit_edge, %if.end45.if.end98_crit_edge, %land.lhs.true28.if.end98_crit_edge, %if.end25.if.end98_crit_edge, %if.end12.if.end98_crit_edge
  %bEndpointAddress.i210 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress.i210 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress.i210, align 1
  %18 = and i8 %17, 15
  %and.i211 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool101.not = icmp sgt i8 %17, -1
  %cond = select i1 %tobool101.not, ptr @.str.40, ptr @.str.39
  %call102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 8, ptr noundef nonnull @.str.67, i32 noundef %and.i211, ptr noundef nonnull %cond)
  %call104 = call ptr @gadget_find_ep_by_name(ptr noundef %_gadget, ptr noundef nonnull %name) #12
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.end98.if.end110_crit_edge, label %land.lhs.true106

if.end98.if.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true106:                                 ; preds = %if.end98
  %call107 = call i32 @usb_gadget_ep_match_desc(ptr noundef %_gadget, ptr noundef nonnull %call104, ptr noundef %desc, ptr noundef %ep_comp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.lhs.true106.if.end110_crit_edge, label %land.lhs.true106.cleanup_crit_edge

land.lhs.true106.cleanup_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true106.if.end110_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.end110:                                        ; preds = %land.lhs.true106.if.end110_crit_edge, %if.end98.if.end110_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %land.lhs.true106.cleanup_crit_edge, %land.lhs.true90.cleanup_crit_edge, %land.lhs.true83.cleanup_crit_edge, %land.lhs.true69.cleanup_crit_edge, %land.lhs.true62.cleanup_crit_edge, %land.lhs.true48.cleanup_crit_edge, %land.lhs.true41.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end110 ], [ %call1, %land.lhs.true.cleanup_crit_edge ], [ %call5, %land.lhs.true7.cleanup_crit_edge ], [ %call19, %land.lhs.true21.cleanup_crit_edge ], [ %call26, %land.lhs.true28.cleanup_crit_edge ], [ %call39, %land.lhs.true41.cleanup_crit_edge ], [ %call46, %land.lhs.true48.cleanup_crit_edge ], [ %call60, %land.lhs.true62.cleanup_crit_edge ], [ %call67, %land.lhs.true69.cleanup_crit_edge ], [ %call81, %land.lhs.true83.cleanup_crit_edge ], [ %call88, %land.lhs.true90.cleanup_crit_edge ], [ %call104, %land.lhs.true106.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep0_start(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !516
  tail call void @arm_heavy_mb() #12
  %epregs.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %epregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epregs.i, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 -939524096) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !517
  tail call void @arm_heavy_mb() #12
  %usb.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %4 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 52953344) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !518
  tail call void @arm_heavy_mb() #12
  %softconnect.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %6 = ptrtoint ptr %softconnect.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %softconnect.i, align 8
  %7 = lshr i16 %bf.load.i, 10
  %8 = and i16 %7, 8
  %9 = or i16 %8, 2145
  %or5.i = zext i16 %9 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #12
  %11 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb.i, align 8
  %usbctl.i = getelementptr inbounds %struct.net2280_usb_regs, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl.i, i32 %10) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !519
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %pciirqenb0.i = getelementptr inbounds %struct.net2280_regs, ptr %14, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb0.i, i32 -2130706432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !520
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %pciirqenb1.i = getelementptr inbounds %struct.net2280_regs, ptr %16, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1.i, i32 -1811932544) #12, !srcloc !450
  %17 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb.i, align 8
  %usbctl13.i = getelementptr inbounds %struct.net2280_usb_regs, ptr %18, i32 0, i32 3
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl13.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !521
  br label %return

if.end:                                           ; preds = %entry
  %bug7734_patched.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %bug7734_patched.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i3 = load i16, ptr %bug7734_patched.i, align 8
  %21 = and i16 %bf.load.i3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.end.ep0_start_338x.exit_crit_edge, label %do.body.i

if.end.ep0_start_338x.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ep0_start_338x.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @arm_heavy_mb() #12
  %epregs.i4 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 16
  %22 = ptrtoint ptr %epregs.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %epregs.i4, align 4
  %ep_rsp.i5 = getelementptr inbounds %struct.net2280_ep_regs, ptr %23, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i5, i32 71303168) #12, !srcloc !450
  br label %ep0_start_338x.exit

ep0_start_338x.exit:                              ; preds = %do.body.i, %if.end.ep0_start_338x.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !523
  tail call void @arm_heavy_mb() #12
  %usb.i6 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %24 = ptrtoint ptr %usb.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb.i6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 52445441) #12, !srcloc !450
  %26 = ptrtoint ptr %bug7734_patched.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load3.i = load i16, ptr %bug7734_patched.i, align 8
  %bf.set.i = or i16 %bf.load3.i, 64
  store i16 %bf.set.i, ptr %bug7734_patched.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !524
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %bug7734_patched.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load7.i = load i16, ptr %bug7734_patched.i, align 8
  %28 = lshr i16 %bf.load7.i, 10
  %29 = and i16 %28, 8
  %30 = or i16 %29, 2050
  %or11.i = zext i16 %30 to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #12
  %32 = ptrtoint ptr %usb.i6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb.i6, align 8
  %usbctl.i7 = getelementptr inbounds %struct.net2280_usb_regs, ptr %33, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl.i7, i32 %31) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !525
  tail call void @arm_heavy_mb() #12
  %regs.i8 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %34 = ptrtoint ptr %regs.i8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i8, align 4
  %pciirqenb0.i9 = getelementptr inbounds %struct.net2280_regs, ptr %35, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb0.i9, i32 -2130706432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !526
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %regs.i8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i8, align 4
  %pciirqenb1.i10 = getelementptr inbounds %struct.net2280_regs, ptr %37, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1.i10, i32 -1811939200) #12, !srcloc !450
  %38 = ptrtoint ptr %usb.i6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb.i6, align 8
  %usbctl19.i = getelementptr inbounds %struct.net2280_usb_regs, ptr %39, i32 0, i32 3
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl19.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !527
  br label %return

return:                                           ; preds = %ep0_start_338x.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_activity(ptr noundef %dev, ptr noundef readonly %driver) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp, ptr null, ptr %driver
  tail call fastcc void @usb_reset(ptr noundef %dev)
  %n_ep = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp118 = icmp sgt i32 %3, 0
  br i1 %cmp118, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %nuke.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %nuke.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.019
  %stopped.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.019, i32 10
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %stopped.i, align 4
  %bf.set.i = or i32 %bf.load.i, 512
  store i32 %bf.set.i, ptr %stopped.i, align 4
  %dma.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.019, i32 3
  %5 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @abort_dma(ptr noundef %arrayidx) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %queue.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %i.019, i32 8
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not8.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.i.not8.i, label %if.end.i.nuke.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.nuke.exit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %9 = phi ptr [ %11, %while.body.i.while.body.i_crit_edge ], [ %8, %if.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %9, i32 -64
  tail call fastcc void @done(ptr noundef %arrayidx, ptr noundef %add.ptr.i, i32 noundef -108) #12
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end.i.nuke.exit_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %12 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_ep, align 8
  %cmp1 = icmp slt i32 %inc, %13
  br i1 %cmp1, label %nuke.exit.for.body_crit_edge, label %nuke.exit.for.end_crit_edge

nuke.exit.for.end_crit_edge:                      ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

nuke.exit.for.body_crit_edge:                     ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %nuke.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %async_callbacks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %async_callbacks, align 8
  %15 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  %tobool2.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %for.end.if.end6_crit_edge, label %if.then3

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %disconnect = getelementptr inbounds %struct.usb_gadget_driver, ptr %spec.select, i32 0, i32 5
  %16 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disconnect, align 4
  tail call void %17(ptr noundef %dev) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %for.end.if.end6_crit_edge
  tail call fastcc void @usb_reinit(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abort_dma(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %if.else, label %do.body, !prof !528

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !529
  tail call void @arm_heavy_mb() #12
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %dmastat = getelementptr inbounds %struct.net2280_dma_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat, i32 33554432) #12, !srcloc !450
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %call.i.i = tail call i64 @ktime_get() #12
  %add.i.i.i = add i64 %call.i.i, 50000
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp53.i.i = icmp eq i32 %6, -1
  %or.cond4.i.i = or i1 %cmp53.i.i, %cmp2.i.i
  br i1 %or.cond4.i.i, label %do.body.if.end_crit_edge, label %do.body.land.lhs.true.i.i_crit_edge

do.body.land.lhs.true.i.i_crit_edge:              ; preds = %do.body
  br label %land.lhs.true.i.i

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %do.body.land.lhs.true.i.i_crit_edge
  %call7.i.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call7.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then11.i.i, label %cond.false.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %if.end

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp5.i.i = icmp eq i32 %10, -1
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %cond.false.i.i.if.end_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

cond.false.i.i.if.end_crit_edge:                  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dma5 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %12 = ptrtoint ptr %dma5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma5, align 4
  tail call fastcc void @stop_dma(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false.i.i.if.end_crit_edge, %if.then11.i.i, %do.body.if.end_crit_edge
  %call6 = tail call fastcc i32 @scan_dma_completions(ptr noundef %ep)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @done(ptr noundef %ep, ptr noundef %req, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stopped1 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %0 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %stopped1, align 4
  %queue = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 3, i32 1
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
  %prev.i3.i = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %prev.i3.i, align 4
  %status3 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %9 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %10)
  %cmp = icmp eq i32 %10, -115
  br i1 %cmp, label %if.then, label %list_del_init.exit.if.end_crit_edge

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %status, ptr %status3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %status.addr.0 = phi i32 [ %status, %if.then ], [ %10, %list_del_init.exit.if.end_crit_edge ]
  %dev8 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 4
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load11 = load i32, ptr %stopped1, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 7
  %bf.clear13 = and i32 %bf.lshr12, 1
  tail call void @usb_gadget_unmap_request(ptr noundef %13, ptr noundef %req, i32 noundef %bf.clear13) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %17 = zext i32 %status.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %status.addr.0, label %do.body [
    i32 0, label %if.end14.if.end29_crit_edge
    i32 -108, label %if.end14.if.end29_crit_edge62
  ]

if.end14.if.end29_crit_edge62:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @done.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@done, %if.end29)) #12
          to label %if.then22 [label %if.end29], !srcloc !446

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.net2280, ptr %13, i32 0, i32 9
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %22 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @done.__UNIQUE_ID_ddebug245, ptr noundef %dev23, ptr noundef nonnull @.str.35, ptr noundef %21, ptr noundef %req, i32 noundef %status.addr.0, i32 noundef %23, i32 noundef %25) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %do.body, %if.end14.if.end29_crit_edge, %if.end14.if.end29_crit_edge62
  %bf.clear = and i32 %bf.load, 512
  %26 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load31 = load i32, ptr %stopped1, align 4
  %bf.set = or i32 %bf.load31, 512
  store i32 %bf.set, ptr %stopped1, align 4
  %lock = getelementptr inbounds %struct.net2280, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @usb_gadget_giveback_request(ptr noundef %ep, ptr noundef %req) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %27 = ptrtoint ptr %stopped1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load37 = load i32, ptr %stopped1, align 4
  %bf.clear38 = and i32 %bf.load37, -513
  %bf.set39 = or i32 %bf.clear38, %bf.clear
  store i32 %bf.set39, ptr %stopped1, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_dma(ptr noundef %dma) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !532
  tail call void @arm_heavy_mb() #12
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !533
  %1 = and i32 %0, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dma, i32 %1) #12, !srcloc !450
  %call.i.i = tail call i64 @ktime_get() #12
  %add.i.i.i = add i64 %call.i.i, 50000
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp53.i.i = icmp eq i32 %2, -1
  %or.cond4.i.i = or i1 %cmp53.i.i, %cmp2.i.i
  br i1 %or.cond4.i.i, label %entry.spin_stop_dma.exit_crit_edge, label %entry.land.lhs.true.i.i_crit_edge

entry.land.lhs.true.i.i_crit_edge:                ; preds = %entry
  br label %land.lhs.true.i.i

entry.spin_stop_dma.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %spin_stop_dma.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %entry.land.lhs.true.i.i_crit_edge
  %call7.i.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call7.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then11.i.i, label %cond.false.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %spin_stop_dma.exit

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dma) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp5.i.i = icmp eq i32 %6, -1
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %cond.false.i.i.spin_stop_dma.exit_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

cond.false.i.i.spin_stop_dma.exit_crit_edge:      ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %spin_stop_dma.exit

spin_stop_dma.exit:                               ; preds = %cond.false.i.i.spin_stop_dma.exit_crit_edge, %if.then11.i.i, %entry.spin_stop_dma.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_dma_completions(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not130 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not130, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %name76 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup89.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %55, %cleanup89.while.body_crit_edge ]
  %num_completed.0131 = phi i32 [ 0, %while.body.lr.ph ], [ %inc88, %cleanup89.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -64
  %valid = getelementptr i8, ptr %2, i32 8
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %valid, align 4
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !534
  %td = getelementptr i8, ptr %2, i32 -8
  %5 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %td, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp sgt i32 %9, -1
  br i1 %cmp.not, label %if.end5, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end5:                                          ; preds = %if.end
  %dmadesc = getelementptr inbounds %struct.net2280_dma, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %dmadesc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dmadesc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then11, label %if.else, !prof !528

if.then11:                                        ; preds = %if.end5
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma, align 4
  %dmacount12 = getelementptr inbounds %struct.net2280_dma_regs, ptr %13, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacount12) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !535
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %14)
  %tobool17.not = icmp ult i32 %14, 256
  br i1 %tobool17.not, label %if.end19, label %if.then11.while.end_crit_edge

if.then11.while.end_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %length.i = getelementptr i8, ptr %2, i32 -60
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 4
  %and.i = and i32 %9, 16777215
  %sub.i = sub i32 %16, %and.i
  %actual.i = getelementptr i8, ptr %2, i32 -12
  %17 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %actual.i, align 4
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef 0) #12
  %inc = add i32 %num_completed.0131, 1
  br label %while.end

if.else:                                          ; preds = %if.end5
  %18 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load20 = load i32, ptr %is_in, align 4
  %19 = and i32 %bf.load20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool23.not = icmp eq i32 %19, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.else.cleanup89_crit_edge

if.else.cleanup89_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

land.lhs.true:                                    ; preds = %if.else
  %length = getelementptr i8, ptr %2, i32 -60
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  %22 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %22, i32 7)
  %bf.load26 = load i56, ptr %maxpacket, align 2
  %bf.lshr27 = lshr i56 %bf.load26, 40
  %bf.cast28 = trunc i56 %bf.lshr27 to i32
  %rem = urem i32 %21, %bf.cast28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool29.not = icmp eq i32 %rem, 0
  br i1 %tobool29.not, label %land.lhs.true.cleanup89_crit_edge, label %land.lhs.true30

land.lhs.true.cleanup89_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

land.lhs.true30:                                  ; preds = %land.lhs.true
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %quirks = getelementptr inbounds %struct.net2280, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quirks, align 4
  %and31 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true30.cleanup89_crit_edge

land.lhs.true30.cleanup89_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.then33:                                        ; preds = %land.lhs.true30
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %ep_stat36 = getelementptr inbounds %struct.net2280_ep_regs, ptr %28, i32 0, i32 3
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat36) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !536
  %30 = and i32 %29, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp41 = icmp eq i32 %30, 0
  br i1 %cmp41, label %do.end, label %if.else47

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %name76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name76, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev44, ptr noundef nonnull @.str.30, ptr noundef %36) #16
  br label %cleanup89.sink.split

if.else47:                                        ; preds = %if.then33
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %ep_avail51 = getelementptr inbounds %struct.net2280_ep_regs, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_avail51) #12, !srcloc !447
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  br i1 %tobool55.not, label %if.else47.cleanup89_crit_edge, label %if.then56

if.else47.cleanup89_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup89

if.then56:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load57 = load i32, ptr %is_in, align 4
  %bf.set = or i32 %bf.load57, 1024
  store i32 %bf.set, ptr %is_in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scan_dma_completions.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@scan_dma_completions, %cleanup89.sink.split)) #12
          to label %if.then71 [label %cleanup89.sink.split], !srcloc !446

if.then71:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %pdev73 = getelementptr inbounds %struct.net2280, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev73, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %name76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name76, align 4
  %48 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scan_dma_completions.__UNIQUE_ID_ddebug248, ptr noundef %dev74, ptr noundef nonnull @.str.33, ptr noundef %47, i32 noundef %40, i32 noundef %49) #12
  br label %cleanup89.sink.split

cleanup89.sink.split:                             ; preds = %if.then71, %if.then56, %do.end
  %status83 = getelementptr i8, ptr %2, i32 -16
  %50 = ptrtoint ptr %status83 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -75, ptr %status83, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup89.sink.split, %if.else47.cleanup89_crit_edge, %land.lhs.true30.cleanup89_crit_edge, %land.lhs.true.cleanup89_crit_edge, %if.else.cleanup89_crit_edge
  %length.i119 = getelementptr i8, ptr %2, i32 -60
  %51 = ptrtoint ptr %length.i119 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.i119, align 4
  %and.i120 = and i32 %9, 16777215
  %sub.i121 = sub i32 %52, %and.i120
  %actual.i122 = getelementptr i8, ptr %2, i32 -12
  %53 = ptrtoint ptr %actual.i122 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.i121, ptr %actual.i122, align 4
  tail call fastcc void @done(ptr noundef %ep, ptr noundef %add.ptr, i32 noundef 0) #12
  %inc88 = add i32 %num_completed.0131, 1
  %54 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %55, %queue
  br i1 %cmp.i.not, label %cleanup89.while.end_crit_edge, label %cleanup89.while.body_crit_edge

cleanup89.while.body_crit_edge:                   ; preds = %cleanup89
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup89.while.end_crit_edge:                    ; preds = %cleanup89
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup89.while.end_crit_edge, %if.end19, %if.then11.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %num_completed.3 = phi i32 [ %num_completed.0131, %if.then11.while.end_crit_edge ], [ %inc, %if.end19 ], [ 0, %entry.while.end_crit_edge ], [ %inc88, %cleanup89.while.end_crit_edge ], [ %num_completed.0131, %while.body.while.end_crit_edge ], [ %num_completed.0131, %if.end.while.end_crit_edge ]
  ret i32 %num_completed.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

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
define internal fastcc void @defect7374_enable_data_eps_zero(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %idxaddr.i = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i, i32 184549376) #12, !srcloc !450
  %idxdata.i = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %idxdata.i) #12, !srcloc !447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  %and = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %and)
  %cmp = icmp eq i32 %and, 805306368
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !528

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1991, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pdev = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.52) #16
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29, ptr noundef nonnull @.str.55) #16
  %enhanced_mode = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %enhanced_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enhanced_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool30.not = icmp eq i32 %9, 0
  %or = select i1 %tobool30.not, i32 9856, i32 26240
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !538
  tail call void @arm_heavy_mb() #12
  %cfg = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !538
  tail call void @arm_heavy_mb() #12
  %cfg.1 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 1
  %13 = ptrtoint ptr %cfg.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !538
  tail call void @arm_heavy_mb() #12
  %cfg.2 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %cfg.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !538
  tail call void @arm_heavy_mb() #12
  %cfg.3 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4, i32 1
  %17 = ptrtoint ptr %cfg.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %10) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !539
  tail call void @arm_heavy_mb() #12
  %dep = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 15
  %19 = ptrtoint ptr %dep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dep, align 8
  %arrayidx38 = getelementptr %struct.net2280_dep_regs, ptr %20, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx38, i32 262144) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !540
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %dep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dep, align 8
  %arrayidx43 = getelementptr %struct.net2280_dep_regs, ptr %22, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx43, i32 262144) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !541
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %dep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dep, align 8
  %arrayidx49 = getelementptr %struct.net2280_dep_regs, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx49, i32 262144) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !542
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %dep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dep, align 8
  %arrayidx55 = getelementptr %struct.net2280_dep_regs, ptr %26, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx55, i32 262144) #12, !srcloc !450
  %plregs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 18
  br label %for.body60

for.body60:                                       ; preds = %for.inc136.for.body60_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.inc136.for.body60_crit_edge ]
  %ep_sel.0185 = phi i8 [ 0, %if.end ], [ %inc137, %for.inc136.for.body60_crit_edge ]
  %27 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl = getelementptr inbounds %struct.usb338x_pl_regs, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_ctrl) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !543
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  tail call void @arm_heavy_mb() #12
  %30 = and i32 %29, -520093697
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %or69 = or i32 %31, %indvars.iv
  %32 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %33 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl71 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %34, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl71, i32 %32) #12, !srcloc !450
  %trunc = trunc i8 %ep_sel.0185 to i7
  %35 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.186)
  switch i7 %trunc, label %lor.lhs.false [
    i7 1, label %if.then75
    i7 0, label %for.body60.for.inc136_crit_edge
  ]

for.body60.for.inc136_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc136

if.then75:                                        ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl79 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_ctrl79) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  %39 = or i32 %38, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !546
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl89 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %41, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl89, i32 %39) #12, !srcloc !450
  br label %for.inc136

lor.lhs.false:                                    ; preds = %for.body60
  %42 = trunc i32 %indvars.iv to i8
  %43 = add i8 %42, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %44 = icmp ult i8 %43, 4
  br i1 %44, label %lor.lhs.false.for.inc136_crit_edge, label %switch.early.test

lor.lhs.false.for.inc136_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc136

switch.early.test:                                ; preds = %lor.lhs.false
  %45 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.187)
  switch i7 %trunc, label %if.end109 [
    i7 20, label %switch.early.test.for.inc136_crit_edge
    i7 18, label %switch.early.test.for.inc136_crit_edge187
  ]

switch.early.test.for.inc136_crit_edge187:        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc136

switch.early.test.for.inc136_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc136

if.end109:                                        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %plregs, align 4
  %pl_ep_cfg_4 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %47, i32 0, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_cfg_4) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !547
  %49 = or i32 %48, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !548
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %plregs, align 4
  %pl_ep_cfg_4122 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %51, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_cfg_4122, i32 %49) #12, !srcloc !450
  %52 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl126 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %53, i32 0, i32 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_ctrl126) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !549
  %55 = and i32 %54, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !550
  tail call void @arm_heavy_mb() #12
  %56 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl135 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %57, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl135, i32 %55) #12, !srcloc !450
  br label %for.inc136

for.inc136:                                       ; preds = %if.end109, %switch.early.test.for.inc136_crit_edge, %switch.early.test.for.inc136_crit_edge187, %lor.lhs.false.for.inc136_crit_edge, %if.then75, %for.body60.for.inc136_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc137 = add nuw nsw i8 %ep_sel.0185, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 22
  br i1 %exitcond.not, label %for.end138, label %for.inc136.for.body60_crit_edge

for.inc136.for.body60_crit_edge:                  ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body60

for.end138:                                       ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #14
  %and20 = and i32 %3, 268435455
  %or139 = or i32 %and20, 268435456
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !551
  tail call void @arm_heavy_mb() #12
  %idxaddr.i181 = getelementptr inbounds %struct.net2280_regs, ptr %59, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i181, i32 184549376) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !552
  tail call void @arm_heavy_mb() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %or139) #12
  %idxdata.i182 = getelementptr inbounds %struct.net2280_regs, ptr %59, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxdata.i182, i32 %60) #12, !srcloc !450
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @function_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @strlen(ptr noundef nonnull %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call6)
  %cmp = icmp ugt i32 %call6, 4096
  br i1 %cmp, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.19, ptr noundef nonnull %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queues_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %n_ep = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6244 = icmp sgt i32 %3, 0
  br i1 %cmp6244, label %for.body.preheader, label %entry.cleanup133_crit_edge

entry.cleanup133_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

for.body.preheader:                               ; preds = %entry
  %is_in = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc129.for.body_crit_edge, %for.body.preheader
  %next.0250 = phi ptr [ %next.4, %for.inc129.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %size.0249 = phi i32 [ %size.4, %for.inc129.for.body_crit_edge ], [ 4096, %for.body.preheader ]
  %i.0245 = phi i32 [ %inc, %for.inc129.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0245)
  %cmp9.not = icmp eq i32 %i.0245, 0
  br i1 %cmp9.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %desc = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0245, i32 9
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.for.inc129_crit_edge, label %if.end

if.then.for.inc129_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc129

if.end:                                           ; preds = %if.then
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv12 = zext i8 %7 to i32
  %name = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0245, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %and = and i32 %conv12, 15
  %and14 = and i32 %conv12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond = select i1 %tobool15.not, ptr @.str.40, ptr @.str.39
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmAttributes, align 1
  %12 = and i8 %11, 3
  %and.i = zext i8 %12 to i32
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 3
  br i1 %13, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.queues_show, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.51, %if.end.cleanup_crit_edge ]
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wMaxPacketSize.i, align 1
  %17 = and i16 %16, -249
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  %and.i220 = zext i16 %18 to i32
  %dma = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0245, i32 3
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma, align 4
  %tobool18.not = icmp eq ptr %20, null
  %cond19 = select i1 %tobool18.not, ptr @.str.42, ptr @.str.41
  %fifo_size = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0245, i32 10
  %21 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %fifo_size, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 4095
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.0250, i32 noundef %size.0249, ptr noundef nonnull @.str.38, ptr noundef %9, i32 noundef %and, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i, i32 noundef %and.i220, ptr noundef nonnull %cond19, i32 noundef %bf.clear) #12
  br label %if.end27

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load21 = load i32, ptr %is_in, align 4
  %23 = and i32 %bf.load21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  %cond25 = select i1 %tobool24.not, ptr @.str.40, ptr @.str.39
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.0250, i32 noundef %size.0249, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond25) #12
  br label %if.end27

if.end27:                                         ; preds = %if.else, %cleanup
  %t.1 = phi i32 [ %call20, %cleanup ], [ %call26, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t.1)
  %cmp28 = icmp slt i32 %t.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0249, i32 %t.1)
  %cmp30 = icmp ult i32 %size.0249, %t.1
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.end27.cleanup133_crit_edge, label %if.end33

if.end27.cleanup133_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

if.end33:                                         ; preds = %if.end27
  %sub = sub i32 %size.0249, %t.1
  %add.ptr = getelementptr i8, ptr %next.0250, i32 %t.1
  %queue = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0245, i32 8
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %25, %queue
  br i1 %cmp.i.not, label %if.then36, label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %if.end33
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn234 = load ptr, ptr %queue, align 4
  %cmp55.not236 = icmp eq ptr %.pn234, %queue
  br i1 %cmp55.not236, label %for.cond52.preheader.for.inc129_crit_edge, label %for.body57.lr.ph

for.cond52.preheader.for.inc129_crit_edge:        ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc129

for.body57.lr.ph:                                 ; preds = %for.cond52.preheader
  %dma58 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0245, i32 3
  br label %for.body57

if.then36:                                        ; preds = %if.end33
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %call37)
  %cmp41 = icmp ult i32 %sub, %call37
  %or.cond217 = select i1 %cmp38, i1 true, i1 %cmp41
  br i1 %or.cond217, label %if.then36.cleanup133_crit_edge, label %if.end44

if.then36.cleanup133_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

if.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %sub45 = sub i32 %sub, %call37
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 %call37
  br label %for.inc129

for.body57:                                       ; preds = %for.inc.for.body57_crit_edge, %for.body57.lr.ph
  %.pn240 = phi ptr [ %.pn234, %for.body57.lr.ph ], [ %.pn, %for.inc.for.body57_crit_edge ]
  %next.1238 = phi ptr [ %add.ptr, %for.body57.lr.ph ], [ %next.3, %for.inc.for.body57_crit_edge ]
  %size.1237 = phi i32 [ %sub, %for.body57.lr.ph ], [ %size.3, %for.inc.for.body57_crit_edge ]
  %req.0241 = getelementptr i8, ptr %.pn240, i32 -64
  %27 = ptrtoint ptr %dma58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma58, align 4
  %tobool59.not = icmp eq ptr %28, null
  br i1 %tobool59.not, label %for.body57.if.else79_crit_edge, label %land.lhs.true

for.body57.if.else79_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else79

land.lhs.true:                                    ; preds = %for.body57
  %td_dma = getelementptr i8, ptr %.pn240, i32 -4
  %29 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %td_dma, align 4
  %dmadesc = getelementptr inbounds %struct.net2280_dma_regs, ptr %28, i32 0, i32 5
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmadesc) #12, !srcloc !447
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !553
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp64 = icmp eq i32 %30, %32
  br i1 %cmp64, label %if.then66, label %land.lhs.true.if.else79_crit_edge

land.lhs.true.if.else79_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else79

if.then66:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %actual = getelementptr i8, ptr %.pn240, i32 -12
  %33 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual, align 4
  %length = getelementptr i8, ptr %.pn240, i32 -60
  %35 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length, align 4
  %37 = ptrtoint ptr %req.0241 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req.0241, align 4
  %39 = ptrtoint ptr %dma58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma58, align 4
  %dmacount = getelementptr inbounds %struct.net2280_dma_regs, ptr %40, i32 0, i32 3
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacount) #12, !srcloc !447
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !554
  %call78 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.1238, i32 noundef %size.1237, ptr noundef nonnull @.str.45, ptr noundef %req.0241, i32 noundef %34, i32 noundef %36, ptr noundef %38, i32 noundef %42) #12
  br label %if.end88

if.else79:                                        ; preds = %land.lhs.true.if.else79_crit_edge, %for.body57.if.else79_crit_edge
  %actual82 = getelementptr i8, ptr %.pn240, i32 -12
  %43 = ptrtoint ptr %actual82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %actual82, align 4
  %length84 = getelementptr i8, ptr %.pn240, i32 -60
  %45 = ptrtoint ptr %length84 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length84, align 4
  %47 = ptrtoint ptr %req.0241 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %req.0241, align 4
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.1238, i32 noundef %size.1237, ptr noundef nonnull @.str.46, ptr noundef %req.0241, i32 noundef %44, i32 noundef %46, ptr noundef %48) #12
  br label %if.end88

if.end88:                                         ; preds = %if.else79, %if.then66
  %t.2 = phi i32 [ %call78, %if.then66 ], [ %call87, %if.else79 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t.2)
  %cmp89 = icmp slt i32 %t.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %size.1237, i32 %t.2)
  %cmp92 = icmp ult i32 %size.1237, %t.2
  %or.cond218 = select i1 %cmp89, i1 true, i1 %cmp92
  br i1 %or.cond218, label %if.end88.cleanup133_crit_edge, label %if.end95

if.end88.cleanup133_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

if.end95:                                         ; preds = %if.end88
  %sub96 = sub i32 %size.1237, %t.2
  %add.ptr97 = getelementptr i8, ptr %next.1238, i32 %t.2
  %49 = ptrtoint ptr %dma58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma58, align 4
  %tobool99.not = icmp eq ptr %50, null
  br i1 %tobool99.not, label %if.end95.for.inc_crit_edge, label %if.then100

if.end95.for.inc_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then100:                                       ; preds = %if.end95
  %td101 = getelementptr i8, ptr %.pn240, i32 -8
  %51 = ptrtoint ptr %td101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %td101, align 4
  %td_dma102 = getelementptr i8, ptr %.pn240, i32 -4
  %53 = ptrtoint ptr %td_dma102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %td_dma102, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %52, align 16
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %dmaaddr = getelementptr inbounds %struct.net2280_dma, ptr %52, i32 0, i32 1
  %58 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dmaaddr, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %dmadesc104 = getelementptr inbounds %struct.net2280_dma, ptr %52, i32 0, i32 2
  %61 = ptrtoint ptr %dmadesc104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dmadesc104, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %call105 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97, i32 noundef %sub96, ptr noundef nonnull @.str.47, i32 noundef %54, i32 noundef %57, i32 noundef %60, i32 noundef %63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub96, i32 %call105)
  %cmp109 = icmp ult i32 %sub96, %call105
  %or.cond219 = select i1 %cmp106, i1 true, i1 %cmp109
  br i1 %or.cond219, label %if.then100.cleanup133_crit_edge, label %cleanup115.thread

if.then100.cleanup133_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

cleanup115.thread:                                ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  %sub113 = sub i32 %sub96, %call105
  %add.ptr114 = getelementptr i8, ptr %add.ptr97, i32 %call105
  br label %for.inc

for.inc:                                          ; preds = %cleanup115.thread, %if.end95.for.inc_crit_edge
  %size.3 = phi i32 [ %sub96, %if.end95.for.inc_crit_edge ], [ %sub113, %cleanup115.thread ]
  %next.3 = phi ptr [ %add.ptr97, %if.end95.for.inc_crit_edge ], [ %add.ptr114, %cleanup115.thread ]
  %64 = ptrtoint ptr %.pn240 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn = load ptr, ptr %.pn240, align 4
  %cmp55.not = icmp eq ptr %.pn, %queue
  br i1 %cmp55.not, label %for.inc.for.inc129_crit_edge, label %for.inc.for.body57_crit_edge

for.inc.for.body57_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body57

for.inc.for.inc129_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc129

for.inc129:                                       ; preds = %for.inc.for.inc129_crit_edge, %if.end44, %for.cond52.preheader.for.inc129_crit_edge, %if.then.for.inc129_crit_edge
  %size.4 = phi i32 [ %sub45, %if.end44 ], [ %size.0249, %if.then.for.inc129_crit_edge ], [ %sub, %for.cond52.preheader.for.inc129_crit_edge ], [ %size.3, %for.inc.for.inc129_crit_edge ]
  %next.4 = phi ptr [ %add.ptr46, %if.end44 ], [ %next.0250, %if.then.for.inc129_crit_edge ], [ %add.ptr, %for.cond52.preheader.for.inc129_crit_edge ], [ %next.3, %for.inc.for.inc129_crit_edge ]
  %inc = add nuw nsw i32 %i.0245, 1
  %65 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %n_ep, align 8
  %cmp6 = icmp slt i32 %inc, %66
  br i1 %cmp6, label %for.inc129.for.body_crit_edge, label %for.inc129.cleanup133_crit_edge

for.inc129.cleanup133_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup133

for.inc129.for.body_crit_edge:                    ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup133:                                       ; preds = %for.inc129.cleanup133_crit_edge, %if.then100.cleanup133_crit_edge, %if.end88.cleanup133_crit_edge, %if.then36.cleanup133_crit_edge, %if.end27.cleanup133_crit_edge, %entry.cleanup133_crit_edge
  %size.5 = phi i32 [ 4096, %entry.cleanup133_crit_edge ], [ %size.1237, %if.end88.cleanup133_crit_edge ], [ %sub96, %if.then100.cleanup133_crit_edge ], [ %size.4, %for.inc129.cleanup133_crit_edge ], [ %size.0249, %if.end27.cleanup133_crit_edge ], [ %sub, %if.then36.cleanup133_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %sub132 = sub i32 4096, %size.5
  ret i32 %sub132
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gadget_find_ep_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_ep_match_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_reset_228x(ptr noundef %regs, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %desc, align 4
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 8
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %prev.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef -1) #12
  %ops = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @net2280_ep_ops, ptr %ops, align 4
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !555
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !556
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma, align 4
  %dmastat = getelementptr inbounds %struct.net2280_dma_regs, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat, i32 33554435) #12, !srcloc !450
  %pciirqenb0 = getelementptr inbounds %struct.net2280_regs, ptr %regs, i32 0, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb0) #12, !srcloc !447
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !557
  %num = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load i32, ptr %num, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %shl = shl nuw i32 1, %bf.lshr
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !558
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb0, i32 %13) #12, !srcloc !450
  br label %do.body29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pciirqenb1 = getelementptr inbounds %struct.net2280_regs, ptr %regs, i32 0, i32 5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb1) #12, !srcloc !447
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !559
  %num19 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %16 = ptrtoint ptr %num19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load20 = load i32, ptr %num19, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 24
  %shl22 = shl i32 256, %bf.lshr21
  %neg23 = xor i32 %shl22, -1
  %and24 = and i32 %15, %neg23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !560
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %and24)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1, i32 %17) #12, !srcloc !450
  br label %do.body29

do.body29:                                        ; preds = %if.else, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !561
  tail call void @arm_heavy_mb() #12
  %regs32 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %18 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs32, align 4
  %ep_irqenb = getelementptr inbounds %struct.net2280_ep_regs, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb, i32 0) #12, !srcloc !450
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %20 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load33 = load i32, ptr %is_in, align 4
  %21 = and i32 %bf.load33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not = icmp eq i32 %21, 0
  br i1 %tobool35.not, label %do.body29.if.end40_crit_edge, label %lor.lhs.false

do.body29.if.end40_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

lor.lhs.false:                                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %quirks = getelementptr inbounds %struct.net2280, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 4
  %and36 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %spec.select98 = select i1 %tobool37.not, i32 212, i32 33872
  br label %if.end40

if.end40:                                         ; preds = %lor.lhs.false, %do.body29.if.end40_crit_edge
  %tmp.0 = phi i32 [ 33872, %do.body29.if.end40_crit_edge ], [ %spec.select98, %lor.lhs.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load33)
  %cmp.not = icmp ult i32 %bf.load33, 16777216
  %or = or i32 %tmp.0, 3
  %spec.select = select i1 %cmp.not, i32 %tmp.0, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !562
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %27 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs32, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %28, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 %26) #12, !srcloc !450
  %dev50 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %29 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev50, align 4
  %quirks51 = getelementptr inbounds %struct.net2280, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %quirks51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %quirks51, align 4
  %and52 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %tmp.2 = select i1 %tobool53.not, i32 4129391, i32 4141679
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !563
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %tmp.2)
  %34 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs32, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %35, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat, i32 %33) #12, !srcloc !450
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_enable(ptr noundef %_ep, ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool2.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false3

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false3:                                   ; preds = %entry
  %desc4 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc4, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.do.end_crit_edge

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %3, @ep0name
  br i1 %cmp, label %lor.lhs.false6.do.end_crit_edge, label %lor.lhs.false7

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false7:                                   ; preds = %lor.lhs.false6
  %bDescriptorType = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp8.not = icmp eq i8 %5, 5
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false7.do.end_crit_edge

lor.lhs.false7.do.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false7.do.end_crit_edge, %lor.lhs.false6.do.end_crit_edge, %lor.lhs.false3.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 196) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %dev11 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  %driver = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end.do.end353_crit_edge, label %lor.lhs.false13

if.end.do.end353_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353

lor.lhs.false13:                                  ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %lor.lhs.false13.do.end353_crit_edge, label %if.end17

lor.lhs.false13.do.end353_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353

if.end17:                                         ; preds = %lor.lhs.false13
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress, align 1
  %14 = and i8 %13, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %14)
  %cmp19 = icmp eq i8 %14, 13
  br i1 %cmp19, label %if.end17.do.end353_crit_edge, label %if.end22

if.end17.do.end353_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353

if.end22:                                         ; preds = %if.end17
  %quirks = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 8
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks, align 4
  %and23 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end47_crit_edge, label %if.then25

if.end22.if.end47_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %14)
  %cmp29 = icmp ugt i8 %14, 11
  br i1 %cmp29, label %if.then25.do.end353_crit_edge, label %if.end32

if.then25.do.end353_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353

if.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %tobool34.not = icmp sgt i8 %13, -1
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %17 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %is_in, align 4
  %18 = and i8 %13, -128
  %19 = zext i8 %18 to i32
  %bf.clear = and i32 %bf.load, -129
  %bf.set = or i32 %bf.clear, %19
  store i32 %bf.set, ptr %is_in, align 4
  %enhanced_mode = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 6
  %20 = ptrtoint ptr %enhanced_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enhanced_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool36.not = icmp eq i32 %21, 0
  %brmerge = select i1 %tobool36.not, i1 true, i1 %tobool34.not
  br i1 %brmerge, label %if.end32.if.end47_crit_edge, label %land.lhs.true41

if.end32.if.end47_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true41:                                  ; preds = %if.end32
  %bf.lshr43 = lshr i32 %bf.load, 24
  %22 = lshr i32 330, %bf.lshr43
  %23 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool44.not.not = icmp eq i32 %23, 0
  br i1 %tobool44.not.not, label %land.lhs.true41.do.end353_crit_edge, label %land.lhs.true41.if.end47_crit_edge

land.lhs.true41.if.end47_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true41.do.end353_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353

if.end47:                                         ; preds = %land.lhs.true41.if.end47_crit_edge, %if.end32.if.end47_crit_edge, %if.end22.if.end47_crit_edge
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %24 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wMaxPacketSize.i, align 1
  %26 = and i16 %25, -249
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #12
  %and.i = zext i16 %27 to i32
  %num49 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %28 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load50 = load i32, ptr %num49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886079, i32 %bf.load50)
  %cmp52 = icmp ugt i32 %bf.load50, 83886079
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %27)
  %cmp55 = icmp ugt i16 %27, 64
  %or.cond476 = select i1 %cmp52, i1 %cmp55, i1 false
  br i1 %or.cond476, label %land.lhs.true57, label %if.end47.do.body64_crit_edge

if.end47.do.body64_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

land.lhs.true57:                                  ; preds = %if.end47
  %29 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks, align 4
  %and59 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %land.lhs.true57.do.body64_crit_edge, label %land.lhs.true57.do.end353_crit_edge

land.lhs.true57.do.end353_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353

land.lhs.true57.do.body64_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

do.body64:                                        ; preds = %land.lhs.true57.do.body64_crit_edge, %if.end47.do.body64_crit_edge
  %lock = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 1
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %31 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %31, i32 7)
  %bf.load74 = load i56, ptr %maxpacket, align 2
  %bf.value75 = zext i16 %27 to i56
  %bf.shl76 = shl nuw nsw i56 %bf.value75, 40
  %bf.clear77 = and i56 %bf.load74, 1099511627775
  %bf.set78 = or i56 %bf.clear77, %bf.shl76
  store i56 %bf.set78, ptr %maxpacket, align 2
  %32 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %desc, ptr %desc4, align 4
  %33 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load80 = load i32, ptr %num49, align 4
  %bf.clear87 = and i32 %bf.load80, -1793
  store i32 %bf.clear87, ptr %num49, align 4
  %34 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev11, align 4
  %enhanced_mode.i = getelementptr inbounds %struct.net2280, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %enhanced_mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enhanced_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body64
  %bf.lshr.i = lshr i32 %bf.load80, 24
  %arrayidx.i = getelementptr [9 x i32], ptr @set_max_speed.ep_enhanced, i32 0, i32 %bf.lshr.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %35, i32 0, i32 5
  %40 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed.i, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %41, label %if.then.i.set_max_speed.exit_crit_edge [
    i32 5, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.then.i.set_max_speed.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_max_speed.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %39, 2
  br label %set_max_speed.exit

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %add3.i = add i32 %39, 1
  br label %set_max_speed.exit

if.else.i:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  %43 = lshr i32 %bf.load80, 20
  %add8.i = and i32 %43, 4080
  %speed11.i = getelementptr inbounds %struct.usb_gadget, ptr %35, i32 0, i32 5
  %44 = ptrtoint ptr %speed11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 3
  %spec.select.v.i = select i1 %cmp.not.i, i32 16, i32 17
  %spec.select.i = add nuw nsw i32 %spec.select.v.i, %add8.i
  br label %set_max_speed.exit

set_max_speed.exit:                               ; preds = %if.else.i, %sw.bb2.i, %sw.bb.i, %if.then.i.set_max_speed.exit_crit_edge
  %reg.0.i = phi i32 [ %39, %if.then.i.set_max_speed.exit_crit_edge ], [ %add3.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ], [ %spec.select.i, %if.else.i ]
  %regs.i = getelementptr inbounds %struct.net2280, ptr %35, i32 0, i32 10
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !551
  tail call void @arm_heavy_mb() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #12
  %idxaddr.i.i = getelementptr inbounds %struct.net2280_regs, ptr %47, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i.i, i32 %48) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !552
  tail call void @arm_heavy_mb() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %idxdata.i.i = getelementptr inbounds %struct.net2280_regs, ptr %47, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxdata.i.i, i32 %49) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !564
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %51, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat, i32 131072) #12, !srcloc !450
  %52 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %quirks, align 4
  %and93 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %set_max_speed.exit.if.end118_crit_edge, label %land.lhs.true95

set_max_speed.exit.if.end118_crit_edge:           ; preds = %set_max_speed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true95:                                  ; preds = %set_max_speed.exit
  %enhanced_mode96 = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 6
  %54 = ptrtoint ptr %enhanced_mode96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %enhanced_mode96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool97.not = icmp eq i32 %55, 0
  br i1 %tobool97.not, label %land.lhs.true95.if.end118_crit_edge, label %if.then98

land.lhs.true95.if.end118_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then98:                                        ; preds = %land.lhs.true95
  %cfg = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 1
  %56 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !447
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !565
  %and102 = and i32 %59, 15
  %60 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bEndpointAddress, align 1
  %62 = and i8 %61, 15
  %and.i482 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and102, i32 %and.i482)
  %cmp104.not = icmp eq i32 %and102, %and.i482
  br i1 %cmp104.not, label %if.end108, label %if.then98.do.end353.sink.split_crit_edge

if.then98.do.end353.sink.split_crit_edge:         ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353.sink.split

if.end108:                                        ; preds = %if.then98
  %63 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load110 = load i32, ptr %num49, align 4
  %64 = and i32 %bf.load110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool113.not = icmp eq i32 %64, 0
  br i1 %tobool113.not, label %if.else, label %if.then114

if.then114:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %and115 = and i32 %59, -28673
  br label %if.end118

if.else:                                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %and116 = and i32 %59, -1793
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then114, %land.lhs.true95.if.end118_crit_edge, %set_max_speed.exit.if.end118_crit_edge
  %tmp.0 = phi i32 [ %and115, %if.then114 ], [ %and116, %if.else ], [ 0, %land.lhs.true95.if.end118_crit_edge ], [ 0, %set_max_speed.exit.if.end118_crit_edge ]
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 3
  %65 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bmAttributes, align 1
  %67 = and i8 %66, 3
  %and120 = zext i8 %67 to i32
  %trunc = trunc i8 %66 to i2
  %68 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.189)
  switch i2 %trunc, label %if.end118.if.end174_crit_edge [
    i2 -1, label %if.then123
    i2 -2, label %if.then146
  ]

if.end118.if.end174_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

if.then123:                                       ; preds = %if.end118
  %chiprev = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 5
  %69 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %chiprev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %70)
  %cmp125 = icmp eq i16 %70, 64
  br i1 %cmp125, label %land.lhs.true127, label %if.then123.if.end174_crit_edge

if.then123.if.end174_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

land.lhs.true127:                                 ; preds = %if.then123
  %71 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp130 = icmp eq i32 %72, 3
  br i1 %cmp130, label %land.lhs.true132, label %land.lhs.true127.if.end174_crit_edge

land.lhs.true127.if.end174_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

land.lhs.true132:                                 ; preds = %land.lhs.true127
  %73 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %tobool136.not = icmp sgt i8 %74, -1
  br i1 %tobool136.not, label %do.body138, label %land.lhs.true132.if.end174_crit_edge

land.lhs.true132.if.end174_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

do.body138:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !566
  tail call void @arm_heavy_mb() #12
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %76, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 67108864) #12, !srcloc !450
  br label %if.end174

if.then146:                                       ; preds = %if.end118
  %77 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %78)
  %cmp149 = icmp ne i32 %78, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %26)
  %cmp152.not = icmp eq i16 %26, 4
  %or.cond477 = select i1 %cmp149, i1 true, i1 %cmp152.not
  br i1 %or.cond477, label %lor.lhs.false154, label %if.then146.do.end353.sink.split_crit_edge

if.then146.do.end353.sink.split_crit_edge:        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353.sink.split

lor.lhs.false154:                                 ; preds = %if.then146
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp157 = icmp eq i32 %78, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %cmp160.not = icmp ne i16 %26, 2
  %or.cond478 = select i1 %cmp157, i1 %cmp160.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cmp165 = icmp eq i32 %78, 2
  %or.cond479 = select i1 %cmp165, i1 %cmp55, i1 false
  %or.cond514 = select i1 %or.cond478, i1 true, i1 %or.cond479
  br i1 %or.cond514, label %lor.lhs.false154.do.end353.sink.split_crit_edge, label %lor.lhs.false154.if.end174_crit_edge

lor.lhs.false154.if.end174_crit_edge:             ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

lor.lhs.false154.do.end353.sink.split_crit_edge:  ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end353.sink.split

if.end174:                                        ; preds = %lor.lhs.false154.if.end174_crit_edge, %do.body138, %land.lhs.true132.if.end174_crit_edge, %land.lhs.true127.if.end174_crit_edge, %if.then123.if.end174_crit_edge, %if.end118.if.end174_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp175 = icmp eq i8 %67, 1
  %79 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %bf.load177 = load i32, ptr %num49, align 4
  %bf.shl179 = select i1 %cmp175, i32 64, i32 0
  %bf.clear180 = and i32 %bf.load177, -65
  %bf.set181 = or i32 %bf.clear180, %bf.shl179
  store i32 %bf.set181, ptr %num49, align 4
  %80 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %quirks, align 4
  %and183 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.else200, label %if.then185

if.then185:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 %and120, 8
  %or = or i32 %shl, %tmp.0
  %82 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bEndpointAddress, align 1
  %conv187 = zext i8 %83 to i32
  %or188 = or i32 %or, %conv187
  %or190 = or i32 %or188, 263168
  %and191.lobit = and i32 %or188, 128
  %bf.clear198 = and i32 %bf.set181, -129
  %bf.set199 = or i32 %and191.lobit, %bf.clear198
  %84 = ptrtoint ptr %num49 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bf.set199, ptr %num49, align 4
  br label %do.body238

if.else200:                                       ; preds = %if.end174
  %enhanced_mode201 = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 6
  %85 = ptrtoint ptr %enhanced_mode201 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %enhanced_mode201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool202.not = icmp eq i32 %86, 0
  %87 = and i32 %bf.load177, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool208.not = icmp eq i32 %87, 0
  %or.cond480 = select i1 %tobool202.not, i1 true, i1 %tobool208.not
  br i1 %or.cond480, label %if.else213, label %if.then209

if.then209:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #14
  %shl210 = shl nuw nsw i32 %and120, 12
  %or211 = or i32 %tmp.0, %shl210
  %or212 = or i32 %or211, 16384
  br label %if.end223

if.else213:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #14
  %shl214 = shl nuw nsw i32 %and120, 8
  %or215 = or i32 %tmp.0, %shl214
  %or216 = or i32 %or215, %87
  %or222 = or i32 %or216, 1024
  br label %if.end223

if.end223:                                        ; preds = %if.else213, %if.then209
  %tmp.1 = phi i32 [ %or212, %if.then209 ], [ %or222, %if.else213 ]
  %or224 = or i32 %tmp.1, 262144
  br i1 %tobool202.not, label %if.then227, label %if.end223.if.end230_crit_edge

if.end223.if.end230_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end230

if.then227:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bEndpointAddress, align 1
  %90 = and i8 %89, 15
  %and.i484 = zext i8 %90 to i32
  %or229 = or i32 %or224, %and.i484
  br label %if.end230

if.end230:                                        ; preds = %if.then227, %if.end223.if.end230_crit_edge
  %tmp.2 = phi i32 [ %or224, %if.end223.if.end230_crit_edge ], [ %or229, %if.then227 ]
  %91 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %91, i32 7)
  %bf.load232 = load i56, ptr %maxpacket, align 2
  %92 = trunc i56 %bf.load232 to i32
  %93 = shl i32 %92, 23
  %shl235 = and i32 %93, 520093696
  %or236 = or i32 %shl235, %tmp.2
  br label %do.body238

do.body238:                                       ; preds = %if.end230, %if.then185
  %tmp.3 = phi i32 [ %or190, %if.then185 ], [ %or236, %if.end230 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !567
  tail call void @arm_heavy_mb() #12
  %94 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load242 = load i32, ptr %num49, align 4
  %95 = and i32 %bf.load242, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool245.not = icmp eq i32 %95, 0
  br i1 %tobool245.not, label %do.body247, label %if.else252

do.body247:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !568
  tail call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %ep_rsp251 = getelementptr inbounds %struct.net2280_ep_regs, ptr %97, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp251, i32 8388608) #12, !srcloc !450
  br label %if.end263

if.else252:                                       ; preds = %do.body238
  %98 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %quirks, align 4
  %and254 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %do.body257, label %if.else252.if.end263_crit_edge

if.else252.if.end263_crit_edge:                   ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end263

do.body257:                                       ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !569
  tail call void @arm_heavy_mb() #12
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  %ep_rsp261 = getelementptr inbounds %struct.net2280_ep_regs, ptr %101, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp261, i32 -2080374784) #12, !srcloc !450
  br label %if.end263

if.end263:                                        ; preds = %do.body257, %if.else252.if.end263_crit_edge, %do.body247
  %102 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %quirks, align 4
  %and265 = and i32 %103, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %if.end263.do.body269_crit_edge, label %if.then267

if.end263.do.body269_crit_edge:                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body269

if.then267:                                       ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev11, align 4
  %plregs.i = getelementptr inbounds %struct.net2280, ptr %105, i32 0, i32 18
  %106 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %plregs.i, align 4
  %pl_ep_ctrl.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %107, i32 0, i32 4
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_ctrl.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !570
  %109 = and i32 %108, -520093697
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #12
  %111 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load.i = load i32, ptr %num49, align 4
  %bf.lshr.i485 = lshr i32 %bf.load.i, 24
  %arrayidx.i486 = getelementptr [9 x i32], ptr @ep_clear_seqnum.ep_pl, i32 0, i32 %bf.lshr.i485
  %112 = ptrtoint ptr %arrayidx.i486 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i486, align 4
  %or.i = or i32 %113, %110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !571
  tail call void @arm_heavy_mb() #12
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %115 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %plregs.i, align 4
  %pl_ep_ctrl4.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %116, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl4.i, i32 %114) #12, !srcloc !450
  %or5.i = or i32 %or.i, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !572
  tail call void @arm_heavy_mb() #12
  %117 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #12
  %118 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %plregs.i, align 4
  %pl_ep_ctrl10.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %119, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl10.i, i32 %117) #12, !srcloc !450
  br label %do.body269

do.body269:                                       ; preds = %if.then267, %if.end263.do.body269_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !573
  tail call void @arm_heavy_mb() #12
  %120 = tail call i32 @llvm.bswap.i32(i32 %tmp.3)
  %cfg272 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 1
  %121 = ptrtoint ptr %cfg272 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cfg272, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #12, !srcloc !450
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 3
  %123 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dma, align 4
  %tobool274.not = icmp eq ptr %124, null
  br i1 %tobool274.not, label %if.then275, label %if.else293

if.then275:                                       ; preds = %do.body269
  %125 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev11, align 4
  %regs.i488 = getelementptr inbounds %struct.net2280, ptr %126, i32 0, i32 10
  %127 = ptrtoint ptr %regs.i488 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i488, align 4
  %pciirqenb0.i = getelementptr inbounds %struct.net2280_regs, ptr %128, i32 0, i32 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb0.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !574
  %130 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev11, align 4
  %quirks.i = getelementptr inbounds %struct.net2280, ptr %131, i32 0, i32 8
  %132 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %quirks.i, align 4
  %and.i489 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i489)
  %tobool.not.i490 = icmp eq i32 %and.i489, 0
  %134 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %134)
  %bf.load5.i = load i32, ptr %num49, align 4
  %bf.lshr6.i = lshr i32 %bf.load5.i, 24
  br i1 %tobool.not.i490, label %if.else.i492, label %if.then275.enable_pciirqenb.exit_crit_edge

if.then275.enable_pciirqenb.exit_crit_edge:       ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_pciirqenb.exit

if.else.i492:                                     ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i491 = getelementptr [9 x i32], ptr @ep_bit, i32 0, i32 %bf.lshr6.i
  %135 = ptrtoint ptr %arrayidx.i491 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i491, align 4
  br label %enable_pciirqenb.exit

enable_pciirqenb.exit:                            ; preds = %if.else.i492, %if.then275.enable_pciirqenb.exit_crit_edge
  %bf.lshr.pn.i = phi i32 [ %136, %if.else.i492 ], [ %bf.lshr6.i, %if.then275.enable_pciirqenb.exit_crit_edge ]
  %137 = tail call i32 @llvm.bswap.i32(i32 %129) #12
  %shl.pn.i = shl nuw i32 1, %bf.lshr.pn.i
  %tmp.0.i = or i32 %shl.pn.i, %137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !575
  tail call void @arm_heavy_mb() #12
  %138 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #12
  %139 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev11, align 4
  %regs10.i = getelementptr inbounds %struct.net2280, ptr %140, i32 0, i32 10
  %141 = ptrtoint ptr %regs10.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs10.i, align 4
  %pciirqenb011.i = getelementptr inbounds %struct.net2280_regs, ptr %142, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb011.i, i32 %138) #12, !srcloc !450
  %143 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %quirks, align 4
  %and277 = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %enable_pciirqenb.exit.do.body288_crit_edge, label %if.then279

enable_pciirqenb.exit.do.body288_crit_edge:       ; preds = %enable_pciirqenb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body288

if.then279:                                       ; preds = %enable_pciirqenb.exit
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs, align 4
  %ep_irqenb = getelementptr inbounds %struct.net2280_ep_regs, ptr %146, i32 0, i32 2
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_irqenb) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !576
  %148 = or i32 %147, 201326592
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
  br label %do.body288

do.body288:                                       ; preds = %if.then279, %enable_pciirqenb.exit.do.body288_crit_edge
  %tmp.4 = phi i32 [ %149, %if.then279 ], [ 12, %enable_pciirqenb.exit.do.body288_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !577
  tail call void @arm_heavy_mb() #12
  %150 = tail call i32 @llvm.bswap.i32(i32 %tmp.4)
  %151 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs, align 4
  %ep_irqenb292 = getelementptr inbounds %struct.net2280_ep_regs, ptr %152, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb292, i32 %150) #12, !srcloc !450
  br label %if.end322

if.else293:                                       ; preds = %do.body269
  %153 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %153)
  %bf.load295 = load i32, ptr %num49, align 4
  %bf.lshr296 = lshr i32 %bf.load295, 24
  %shl297 = shl i32 256, %bf.lshr296
  %regs300 = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 10
  %154 = ptrtoint ptr %regs300 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs300, align 4
  %pciirqenb1 = getelementptr inbounds %struct.net2280_regs, ptr %155, i32 0, i32 5
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb1) #12, !srcloc !447
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !578
  %or304 = or i32 %157, %shl297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !579
  tail call void @arm_heavy_mb() #12
  %158 = tail call i32 @llvm.bswap.i32(i32 %or304)
  %159 = ptrtoint ptr %regs300 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs300, align 4
  %pciirqenb1309 = getelementptr inbounds %struct.net2280_regs, ptr %160, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1309, i32 %158) #12, !srcloc !450
  %161 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %162)
  %cmp313 = icmp sgt i8 %162, -1
  br i1 %cmp313, label %if.then315, label %if.else293.if.end322_crit_edge

if.else293.if.end322_crit_edge:                   ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end322

if.then315:                                       ; preds = %if.else293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !580
  tail call void @arm_heavy_mb() #12
  %163 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs, align 4
  %ep_irqenb320 = getelementptr inbounds %struct.net2280_ep_regs, ptr %164, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb320, i32 536870912) #12, !srcloc !450
  %165 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev11, align 4
  %regs.i494 = getelementptr inbounds %struct.net2280, ptr %166, i32 0, i32 10
  %167 = ptrtoint ptr %regs.i494 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs.i494, align 4
  %pciirqenb0.i495 = getelementptr inbounds %struct.net2280_regs, ptr %168, i32 0, i32 4
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb0.i495) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !574
  %170 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev11, align 4
  %quirks.i496 = getelementptr inbounds %struct.net2280, ptr %171, i32 0, i32 8
  %172 = ptrtoint ptr %quirks.i496 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %quirks.i496, align 4
  %and.i497 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i497)
  %tobool.not.i498 = icmp eq i32 %and.i497, 0
  %174 = ptrtoint ptr %num49 to i32
  call void @__asan_load4_noabort(i32 %174)
  %bf.load5.i500 = load i32, ptr %num49, align 4
  %bf.lshr6.i501 = lshr i32 %bf.load5.i500, 24
  br i1 %tobool.not.i498, label %if.else.i503, label %if.then315.enable_pciirqenb.exit509_crit_edge

if.then315.enable_pciirqenb.exit509_crit_edge:    ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #14
  br label %enable_pciirqenb.exit509

if.else.i503:                                     ; preds = %if.then315
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i502 = getelementptr [9 x i32], ptr @ep_bit, i32 0, i32 %bf.lshr6.i501
  %175 = ptrtoint ptr %arrayidx.i502 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx.i502, align 4
  br label %enable_pciirqenb.exit509

enable_pciirqenb.exit509:                         ; preds = %if.else.i503, %if.then315.enable_pciirqenb.exit509_crit_edge
  %bf.lshr.pn.i504 = phi i32 [ %176, %if.else.i503 ], [ %bf.lshr6.i501, %if.then315.enable_pciirqenb.exit509_crit_edge ]
  %177 = tail call i32 @llvm.bswap.i32(i32 %169) #12
  %shl.pn.i505 = shl nuw i32 1, %bf.lshr.pn.i504
  %tmp.0.i506 = or i32 %shl.pn.i505, %177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !575
  tail call void @arm_heavy_mb() #12
  %178 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i506) #12
  %179 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev11, align 4
  %regs10.i507 = getelementptr inbounds %struct.net2280, ptr %180, i32 0, i32 10
  %181 = ptrtoint ptr %regs10.i507 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs10.i507, align 4
  %pciirqenb011.i508 = getelementptr inbounds %struct.net2280_regs, ptr %182, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb011.i508, i32 %178) #12, !srcloc !450
  br label %if.end322

if.end322:                                        ; preds = %enable_pciirqenb.exit509, %if.else293.if.end322_crit_edge, %do.body288
  %183 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %bEndpointAddress, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_enable.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_enable, %do.end349)) #12
          to label %if.then336 [label %do.end349], !srcloc !446

if.then336:                                       ; preds = %if.end322
  %conv324 = zext i8 %184 to i32
  %pdev = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 9
  %185 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pdev, align 8
  %dev337 = getelementptr inbounds %struct.pci_dev, ptr %186, i32 0, i32 44
  %187 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %name, align 4
  %and339 = and i32 %conv324, 15
  %and340 = and i32 %conv324, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  %cond = select i1 %tobool341.not, ptr @.str.40, ptr @.str.39
  %189 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %bmAttributes, align 1
  %191 = and i8 %190, 3
  %and.i510 = zext i8 %191 to i32
  %switch.tableidx = add nsw i32 %and.i510, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %192 = icmp ult i32 %switch.tableidx, 3
  br i1 %192, label %switch.lookup, label %if.then336.type_string.exit_crit_edge

if.then336.type_string.exit_crit_edge:            ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #14
  br label %type_string.exit

switch.lookup:                                    ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.net2280_enable, i32 0, i32 %switch.tableidx
  %193 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %193)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %type_string.exit

type_string.exit:                                 ; preds = %switch.lookup, %if.then336.type_string.exit_crit_edge
  %retval.0.i512 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.51, %if.then336.type_string.exit_crit_edge ]
  %194 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dma, align 4
  %tobool345.not = icmp eq ptr %195, null
  %cond346 = select i1 %tobool345.not, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_enable.__UNIQUE_ID_ddebug238, ptr noundef %dev337, ptr noundef nonnull @.str.76, ptr noundef %188, i32 noundef %and339, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i512, ptr noundef nonnull %cond346, i32 noundef %and.i) #12
  br label %do.end349

do.end349:                                        ; preds = %type_string.exit, %if.end322
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call69) #12
  br label %cleanup

do.end353.sink.split:                             ; preds = %lor.lhs.false154.do.end353.sink.split_crit_edge, %if.then146.do.end353.sink.split_crit_edge, %if.then98.do.end353.sink.split_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.then98.do.end353.sink.split_crit_edge ], [ -34, %lor.lhs.false154.do.end353.sink.split_crit_edge ], [ -34, %if.then146.do.end353.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call69) #12
  br label %do.end353

do.end353:                                        ; preds = %do.end353.sink.split, %land.lhs.true57.do.end353_crit_edge, %land.lhs.true41.do.end353_crit_edge, %if.then25.do.end353_crit_edge, %if.end17.do.end353_crit_edge, %lor.lhs.false13.do.end353_crit_edge, %if.end.do.end353_crit_edge
  %ret.0 = phi i32 [ -108, %lor.lhs.false13.do.end353_crit_edge ], [ -108, %if.end.do.end353_crit_edge ], [ -33, %if.end17.do.end353_crit_edge ], [ -33, %if.then25.do.end353_crit_edge ], [ -22, %land.lhs.true41.do.end353_crit_edge ], [ -34, %land.lhs.true57.do.end353_crit_edge ], [ %ret.0.ph, %do.end353.sink.split ]
  %196 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev11, align 4
  %pdev355 = getelementptr inbounds %struct.net2280, ptr %197, i32 0, i32 9
  %198 = ptrtoint ptr %pdev355 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdev355, align 8
  %dev356 = getelementptr inbounds %struct.pci_dev, ptr %199, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev356, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75, i32 noundef %ret.0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end353, %do.end349, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %do.end353 ], [ 0, %do.end349 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_disable(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @ep0name
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %do.body3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef %_ep) #16
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.net2280, ptr %3, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %stopped.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %stopped.i, align 4
  %bf.set.i = or i32 %bf.load.i, 512
  store i32 %bf.set.i, ptr %stopped.i, align 4
  %dma.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 3
  %5 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body3.if.end.i_crit_edge, label %if.then.i

do.body3.if.end.i_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @abort_dma(ptr noundef nonnull %_ep) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body3.if.end.i_crit_edge
  %queue.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 8
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not8.i = icmp eq ptr %8, %queue.i
  br i1 %cmp.i.not8.i, label %if.end.i.nuke.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.nuke.exit_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %9 = phi ptr [ %11, %while.body.i.while.body.i_crit_edge ], [ %8, %if.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %9, i32 -64
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i, i32 noundef -108) #12
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %queue.i
  br i1 %cmp.i.not.i, label %while.body.i.nuke.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.nuke.exit_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nuke.exit

nuke.exit:                                        ; preds = %while.body.i.nuke.exit_crit_edge, %if.end.i.nuke.exit_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %quirks = getelementptr inbounds %struct.net2280, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %and = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %regs17 = getelementptr inbounds %struct.net2280, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %regs17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs17, align 4
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ep_reset_338x(ptr noundef %17, ptr noundef nonnull %_ep)
  br label %do.body19

if.else:                                          ; preds = %nuke.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ep_reset_228x(ptr noundef %17, ptr noundef nonnull %_ep)
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_disable.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_disable, %do.end33)) #12
          to label %if.then26 [label %do.end33], !srcloc !446

if.then26:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma.i, align 4
  %tobool29.not = icmp eq ptr %23, null
  %cond = select i1 %tobool29.not, ptr @.str.42, ptr @.str.41
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_disable.__UNIQUE_ID_ddebug239, ptr noundef %dev28, ptr noundef nonnull @.str.82, ptr noundef nonnull %cond, ptr noundef %25) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then26, %do.body19
  %cfg = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 1
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !581
  %29 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma.i, align 4
  %tobool38.not = icmp eq ptr %30, null
  br i1 %tobool38.not, label %land.lhs.true, label %do.end33.if.end54_crit_edge

do.end33.if.end54_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true:                                    ; preds = %do.end33
  %31 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %stopped.i, align 4
  %32 = add i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %32)
  %33 = icmp ult i32 %32, 67108864
  br i1 %33, label %if.then47, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %bf.lshr = lshr i32 %bf.load, 24
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %dma49 = getelementptr inbounds %struct.net2280, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %dma49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma49, align 4
  %sub = add nsw i32 %bf.lshr, -1
  %arrayidx = getelementptr %struct.net2280_dma_regs, ptr %37, i32 %sub
  %38 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx, ptr %dma.i, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %land.lhs.true.if.end54_crit_edge, %do.end33.if.end54_crit_edge
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %lock56 = getelementptr inbounds %struct.net2280, ptr %40, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock56, i32 noundef %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net2280_alloc_request(ptr noundef readonly %_ep, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #16
  br label %cleanup15

if.end:                                           ; preds = %entry
  %or.i = or i32 %gfp_flags, 256
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !455

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 76) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %kzalloc.exit.cleanup15_crit_edge, label %if.end5

kzalloc.exit.cleanup15_crit_edge:                 ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.end5:                                          ; preds = %kzalloc.exit
  %queue = getelementptr inbounds %struct.net2280_request, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.net2280_request, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.cleanup15_crit_edge, label %if.then7

if.end5.cleanup15_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

if.then7:                                         ; preds = %if.end5
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %requests = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %requests, align 8
  %td_dma = getelementptr inbounds %struct.net2280_request, ptr %call7.i.i, i32 0, i32 2
  %call8 = tail call ptr @dma_pool_alloc(ptr noundef %9, i32 noundef %gfp_flags, ptr noundef %td_dma) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup15

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %call8, align 16
  %dmaaddr = getelementptr inbounds %struct.net2280_dma, ptr %call8, i32 0, i32 1
  %11 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmaaddr, align 4
  %dmadesc = getelementptr inbounds %struct.net2280_dma, ptr %call8, i32 0, i32 2
  %13 = ptrtoint ptr %dmadesc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dmadesc, align 8
  %td12 = getelementptr inbounds %struct.net2280_request, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %td12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %td12, align 8
  br label %cleanup15

cleanup15:                                        ; preds = %if.end11, %if.then10, %if.end5.cleanup15_crit_edge, %kzalloc.exit.cleanup15_crit_edge, %do.end
  %retval.1 = phi ptr [ null, %do.end ], [ null, %kzalloc.exit.cleanup15_crit_edge ], [ null, %if.then10 ], [ %call7.i.i, %if.end11 ], [ %call7.i.i, %if.end5.cleanup15_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2280_free_request(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  %tobool1.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef %_ep, ptr noundef %_req) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 3
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %5, %queue
  br i1 %cmp.i.not, label %if.end.if.end25_crit_edge, label %do.end19, !prof !455

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 593, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %if.end.if.end25_crit_edge
  %td = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 1
  %6 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %td, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %if.end25.if.end37_crit_edge, label %if.then34

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %dev35 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %8 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev35, align 4
  %requests = getelementptr inbounds %struct.net2280, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %requests to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %requests, align 8
  %td_dma = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 2
  %12 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %td_dma, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef nonnull %7, i32 noundef %13) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end25.if.end37_crit_edge
  tail call void @kfree(ptr noundef nonnull %_req) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_queue(ptr noundef %_ep, ptr noundef %_req, i32 noundef %gfp_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef %_ep) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tobool6.not = icmp eq ptr %_req, null
  br i1 %tobool6.not, label %if.end.do.end228_crit_edge, label %lor.lhs.false7

if.end.do.end228_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

lor.lhs.false7:                                   ; preds = %if.end
  %complete = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 7
  %3 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %complete, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %lor.lhs.false7.do.end228_crit_edge, label %lor.lhs.false9

lor.lhs.false7.do.end228_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %5 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_req, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %lor.lhs.false9.do.end228_crit_edge, label %lor.lhs.false11

lor.lhs.false9.do.end228_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %queue = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 3
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %8, %queue
  br i1 %cmp.i.not, label %if.end15, label %lor.lhs.false11.do.end228_crit_edge

lor.lhs.false11.do.end228_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

if.end15:                                         ; preds = %lor.lhs.false11
  %length = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %10)
  %cmp16 = icmp ugt i32 %10, 16777215
  br i1 %cmp16, label %if.end15.do.end228_crit_edge, label %if.end18

if.end15.do.end228_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

if.end18:                                         ; preds = %if.end15
  %dev19 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 4
  %driver = getelementptr inbounds %struct.net2280, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %if.end18.do.end228_crit_edge, label %lor.lhs.false21

if.end18.do.end228_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

lor.lhs.false21:                                  ; preds = %if.end18
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %lor.lhs.false21.do.end228_crit_edge, label %if.end24

lor.lhs.false21.do.end228_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

if.end24:                                         ; preds = %lor.lhs.false21
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 3
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma, align 4
  %tobool25.not = icmp ne ptr %18, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp28 = icmp eq i32 %10, 0
  %or.cond = select i1 %tobool25.not, i1 %cmp28, i1 false
  br i1 %or.cond, label %if.end24.do.end228_crit_edge, label %if.end30

if.end24.do.end228_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

if.end30:                                         ; preds = %if.end24
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end30.do.body42_crit_edge, label %if.then33

if.end30.do.body42_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

if.then33:                                        ; preds = %if.end30
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %19 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load35 = load i32, ptr %is_in, align 4
  %bf.lshr36 = lshr i32 %bf.load35, 7
  %bf.clear = and i32 %bf.lshr36, 1
  %call37 = tail call i32 @usb_gadget_map_request(ptr noundef %12, ptr noundef nonnull %_req, i32 noundef %bf.clear) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then33.do.body42_crit_edge, label %if.then33.do.end228_crit_edge

if.then33.do.end228_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end228

if.then33.do.body42_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

do.body42:                                        ; preds = %if.then33.do.body42_crit_edge, %if.end30.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_queue.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_queue, %do.body57)) #12
          to label %if.then49 [label %do.body57], !srcloc !446

if.then49:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.net2280, ptr %12, i32 0, i32 9
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  %26 = ptrtoint ptr %_req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_req, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_queue.__UNIQUE_ID_ddebug246, ptr noundef %dev50, ptr noundef nonnull @.str.91, ptr noundef %23, ptr noundef nonnull %_req, i32 noundef %25, ptr noundef %27) #12
  br label %do.body57

do.body57:                                        ; preds = %if.then49, %do.body42
  %lock = getelementptr inbounds %struct.net2280, ptr %12, i32 0, i32 1
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -115, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 12
  %29 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %actual, align 4
  %queue66 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 8
  %30 = ptrtoint ptr %queue66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %queue66, align 4
  %cmp.i314.not = icmp eq ptr %31, %queue66
  br i1 %cmp.i314.not, label %land.lhs.true69, label %do.body57.if.else182_crit_edge

do.body57.if.else182_crit_edge:                   ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else182

land.lhs.true69:                                  ; preds = %do.body57
  %stopped = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %32 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load70 = load i32, ptr %stopped, align 4
  %33 = and i32 %bf.load70, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool73.not = icmp eq i32 %33, 0
  br i1 %tobool73.not, label %land.lhs.true74, label %land.lhs.true69.if.else182_crit_edge

land.lhs.true69.if.else182_crit_edge:             ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else182

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %quirks = getelementptr inbounds %struct.net2280, ptr %12, i32 0, i32 8
  %34 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %quirks, align 4
  %and = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool75.not = icmp eq i32 %and, 0
  br i1 %tobool75.not, label %land.lhs.true74.if.then85_crit_edge, label %land.lhs.true76

land.lhs.true74.if.then85_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

land.lhs.true76:                                  ; preds = %land.lhs.true74
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma, align 4
  %tobool78.not = icmp eq ptr %37, null
  br i1 %tobool78.not, label %land.lhs.true76.if.else_crit_edge, label %land.lhs.true79

land.lhs.true76.if.else_crit_edge:                ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %39, i32 0, i32 1
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !582
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool84.not = icmp eq i32 %41, 0
  br i1 %tobool84.not, label %land.lhs.true79.if.then85_crit_edge, label %land.lhs.true79.if.else182_crit_edge

land.lhs.true79.if.else182_crit_edge:             ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else182

land.lhs.true79.if.then85_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then85

if.then85:                                        ; preds = %land.lhs.true79.if.then85_crit_edge, %land.lhs.true74.if.then85_crit_edge
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load ptr, ptr %dma, align 4
  %tobool87.not = icmp eq ptr %.pr, null
  br i1 %tobool87.not, label %if.then85.if.else_crit_edge, label %if.then88

if.then85.if.else_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then88:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @start_dma(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  br label %if.then221

if.else:                                          ; preds = %if.then85.if.else_crit_edge, %land.lhs.true76.if.else_crit_edge
  %43 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load90 = load i32, ptr %stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load90)
  %cmp92 = icmp ult i32 %bf.load90, 16777216
  br i1 %cmp92, label %land.lhs.true94, label %if.else.if.end121_crit_edge

if.else.if.end121_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

land.lhs.true94:                                  ; preds = %if.else
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp96 = icmp eq i32 %45, 0
  br i1 %cmp96, label %if.then98, label %land.lhs.true94.if.end121_crit_edge

land.lhs.true94.if.end121_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then98:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %47, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 -1946157056) #12, !srcloc !450
  %48 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load.i = load i32, ptr %stopped, align 4
  %bf.set.i = or i32 %bf.load.i, 512
  store i32 %bf.set.i, ptr %stopped, align 4
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_queue.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_queue, %done)) #12
          to label %if.then113 [label %done], !srcloc !446

if.then113:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  %pdev114 = getelementptr inbounds %struct.net2280, ptr %12, i32 0, i32 9
  %49 = ptrtoint ptr %pdev114 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev114, align 8
  %dev115 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %name117 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %51 = ptrtoint ptr %name117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name117, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_queue.__UNIQUE_ID_ddebug247, ptr noundef %dev115, ptr noundef nonnull @.str.92, ptr noundef %52) #12
  br label %done

if.end121:                                        ; preds = %land.lhs.true94.if.end121_crit_edge, %if.else.if.end121_crit_edge
  %53 = and i32 %bf.load90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool126.not = icmp eq i32 %53, 0
  br i1 %tobool126.not, label %if.else128, label %if.then127

if.then127:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @write_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  br label %if.then221

if.else128:                                       ; preds = %if.end121
  %regs131 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %54 = ptrtoint ptr %regs131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs131, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %55, i32 0, i32 3
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !584
  %and135 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %cmp136 = icmp eq i32 %and135, 0
  br i1 %cmp136, label %if.then138, label %if.else128.if.end168_crit_edge

if.else128.if.end168_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

if.then138:                                       ; preds = %if.else128
  %call139 = tail call fastcc i32 @read_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then138.if.else148_crit_edge, label %land.lhs.true141

if.then138.if.else148_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else148

land.lhs.true141:                                 ; preds = %if.then138
  %58 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load143 = load i32, ptr %stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load143)
  %cmp145 = icmp ult i32 %bf.load143, 16777216
  br i1 %cmp145, label %if.then147, label %land.lhs.true141.if.else148_crit_edge

land.lhs.true141.if.else148_crit_edge:            ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else148

if.then147:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %59 = ptrtoint ptr %regs131 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs131, align 4
  %ep_rsp.i317 = getelementptr inbounds %struct.net2280_ep_regs, ptr %60, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i317, i32 -1946157056) #12, !srcloc !450
  %61 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i319 = load i32, ptr %stopped, align 4
  %bf.set.i320 = or i32 %bf.load.i319, 512
  store i32 %bf.set.i320, ptr %stopped, align 4
  br label %if.end217

if.else148:                                       ; preds = %land.lhs.true141.if.else148_crit_edge, %if.then138.if.else148_crit_edge
  %call149 = tail call fastcc i32 @read_fifo(ptr noundef nonnull %_ep, ptr noundef nonnull %_req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.else148.if.else158_crit_edge, label %land.lhs.true151

if.else148.if.else158_crit_edge:                  ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158

land.lhs.true151:                                 ; preds = %if.else148
  %62 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load153 = load i32, ptr %stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load153)
  %cmp155.not = icmp ult i32 %bf.load153, 16777216
  br i1 %cmp155.not, label %land.lhs.true151.if.else158_crit_edge, label %if.then157

land.lhs.true151.if.else158_crit_edge:            ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else158

if.then157:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i32 noundef 0)
  br label %if.end217

if.else158:                                       ; preds = %land.lhs.true151.if.else158_crit_edge, %if.else148.if.else158_crit_edge
  %63 = ptrtoint ptr %regs131 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs131, align 4
  %ep_stat162 = getelementptr inbounds %struct.net2280_ep_regs, ptr %64, i32 0, i32 3
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat162) #12, !srcloc !447
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !585
  br label %if.end168

if.end168:                                        ; preds = %if.else158, %if.else128.if.end168_crit_edge
  %s.0 = phi i32 [ %66, %if.else158 ], [ %57, %if.else128.if.end168_crit_edge ]
  %and171 = and i32 %s.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.end168.if.then221_crit_edge, label %do.body174

if.end168.if.then221_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then221

do.body174:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !586
  tail call void @arm_heavy_mb() #12
  %67 = ptrtoint ptr %regs131 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs131, align 4
  %ep_rsp178 = getelementptr inbounds %struct.net2280_ep_regs, ptr %68, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp178, i32 -2147483648) #12, !srcloc !450
  br label %if.then221

if.else182:                                       ; preds = %land.lhs.true79.if.else182_crit_edge, %land.lhs.true69.if.else182_crit_edge, %do.body57.if.else182_crit_edge
  %69 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma, align 4
  %tobool184.not = icmp eq ptr %70, null
  br i1 %tobool184.not, label %if.else182.if.then221_crit_edge, label %if.then185

if.else182.if.then221_crit_edge:                  ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then221

if.then185:                                       ; preds = %if.else182
  %is_in186 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %71 = ptrtoint ptr %is_in186 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load187 = load i32, ptr %is_in186, align 4
  %72 = and i32 %bf.load187, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool190.not = icmp eq i32 %72, 0
  br i1 %tobool190.not, label %if.then185.if.end215_crit_edge, label %if.then191

if.then185.if.end215_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

if.then191:                                       ; preds = %if.then185
  %zero = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 6
  %73 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load193 = load i32, ptr %zero, align 4
  %74 = and i32 %bf.load193, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool196.not = icmp eq i32 %74, 0
  br i1 %tobool196.not, label %lor.rhs, label %if.then191.lor.end_crit_edge

if.then191.lor.end_crit_edge:                     ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %length, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %77 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %77, i32 7)
  %bf.load200 = load i56, ptr %maxpacket, align 2
  %bf.lshr201 = lshr i56 %bf.load200, 40
  %bf.cast = trunc i56 %bf.lshr201 to i32
  %rem = urem i32 %76, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool202 = icmp ne i32 %rem, 0
  %phi.cast = zext i1 %tobool202 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then191.lor.end_crit_edge
  %78 = phi i32 [ 1, %if.then191.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %bf.lshr209 = lshr i32 %bf.load187, 11
  %bf.clear210 = and i32 %bf.lshr209, 1
  %79 = xor i32 %bf.clear210, %78
  %cmp211.not = xor i32 %79, 1
  br label %if.end215

if.end215:                                        ; preds = %lor.end, %if.then185.if.end215_crit_edge
  %valid.1 = phi i32 [ %cmp211.not, %lor.end ], [ 1, %if.then185.if.end215_crit_edge ]
  %dummy.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 4
  %80 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dummy.i, align 4
  %td.i = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 1
  %82 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %td.i, align 4
  store ptr %83, ptr %dummy.i, align 4
  store ptr %81, ptr %td.i, align 4
  %td_dma.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 5
  %84 = ptrtoint ptr %td_dma.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %td_dma.i, align 4
  %td_dma3.i = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 2
  %86 = ptrtoint ptr %td_dma3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %td_dma3.i, align 4
  store i32 %87, ptr %td_dma.i, align 4
  store i32 %85, ptr %td_dma3.i, align 4
  %88 = load i32, ptr %td_dma.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #12
  %dmadesc.i = getelementptr inbounds %struct.net2280_dma, ptr %81, i32 0, i32 2
  %90 = ptrtoint ptr %dmadesc.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %dmadesc.i, align 8
  %91 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %td.i, align 4
  %93 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %length, align 4
  %95 = ptrtoint ptr %is_in186 to i32
  call void @__asan_load4_noabort(i32 %95)
  %bf.load.i.i = load i32, ptr %is_in186, align 4
  %96 = and i32 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i.i = icmp eq i32 %96, 0
  %97 = shl nuw nsw i32 %96, 23
  %98 = or i32 %97, %94
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end215.lor.lhs.false.i.i_crit_edge

if.end215.lor.lhs.false.i.i_crit_edge:            ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end215
  %maxpacket.i.i = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 7
  %99 = ptrtoint ptr %maxpacket.i.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 7)
  %bf.load9.i.i = load i56, ptr %maxpacket.i.i, align 2
  %bf.lshr10.i.i = lshr i56 %bf.load9.i.i, 40
  %bf.cast.i.i = trunc i56 %bf.lshr10.i.i to i32
  %rem.i.i = urem i32 %98, %bf.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.i.if.then12.i.i_crit_edge

land.lhs.true.i.i.if.then12.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i.i

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %if.end215.lor.lhs.false.i.i_crit_edge
  %100 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev19, align 4
  %quirks.i.i = getelementptr inbounds %struct.net2280, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %lor.lhs.false.i.i.if.then12.i.i_crit_edge, label %lor.lhs.false.i.i.queue_dma.exit_crit_edge

lor.lhs.false.i.i.queue_dma.exit_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_dma.exit

lor.lhs.false.i.i.if.then12.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then12.i.i_crit_edge, %land.lhs.true.i.i.if.then12.i.i_crit_edge
  %or13.i.i = or i32 %98, 268435456
  br label %queue_dma.exit

queue_dma.exit:                                   ; preds = %if.then12.i.i, %lor.lhs.false.i.i.queue_dma.exit_crit_edge
  %dmacount.1.i.i = phi i32 [ %98, %lor.lhs.false.i.i.queue_dma.exit_crit_edge ], [ %or13.i.i, %if.then12.i.i ]
  %valid15.i.i = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 4
  %104 = trunc i32 %valid.1 to i8
  %105 = ptrtoint ptr %valid15.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load16.i.i = load i8, ptr %valid15.i.i, align 4
  %bf.value.i.i = shl nuw nsw i8 %104, 6
  %bf.shl.i.i = and i8 %bf.value.i.i, 64
  %bf.clear17.i.i = and i8 %bf.load16.i.i, -65
  %bf.set.i.i = or i8 %bf.clear17.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %valid15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.1)
  %tobool18.not.i.i = icmp eq i32 %valid.1, 0
  %or20.i.i = or i32 %dmacount.1.i.i, -2147483648
  %spec.select38.i.i = select i1 %tobool18.not.i.i, i32 %dmacount.1.i.i, i32 %or20.i.i
  %or22.i.i = or i32 %spec.select38.i.i, 536870912
  %dma.i.i = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 2
  %106 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma.i.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #12
  %dmaaddr.i.i = getelementptr inbounds %struct.net2280_dma, ptr %92, i32 0, i32 1
  %109 = ptrtoint ptr %dmaaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %dmaaddr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !587
  tail call void @arm_heavy_mb() #12
  %110 = tail call i32 @llvm.bswap.i32(i32 %or22.i.i) #12
  %111 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %92, align 16
  br label %if.then221

if.end217:                                        ; preds = %if.then157, %if.then147
  %112 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load218 = load i32, ptr %stopped, align 4
  %bf.set = or i32 %bf.load218, 32
  store i32 %bf.set, ptr %stopped, align 4
  br label %done

if.then221:                                       ; preds = %queue_dma.exit, %if.else182.if.then221_crit_edge, %do.body174, %if.end168.if.then221_crit_edge, %if.then127, %if.then88
  %responded331 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %113 = ptrtoint ptr %responded331 to i32
  call void @__asan_load4_noabort(i32 %113)
  %bf.load218332 = load i32, ptr %responded331, align 4
  %bf.set333 = or i32 %bf.load218332, 32
  store i32 %bf.set333, ptr %responded331, align 4
  %prev.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 8, i32 1
  %114 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %115, ptr noundef %queue66) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then221.done_crit_edge

if.then221.done_crit_edge:                        ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end.i.i:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %queue, ptr %prev.i, align 4
  %117 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %queue66, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.net2280_request, ptr %_req, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %queue, ptr %115, align 4
  br label %done

done:                                             ; preds = %if.end.i.i, %if.then221.done_crit_edge, %if.end217, %if.then113, %if.then98
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call61) #12
  br label %cleanup

do.end228:                                        ; preds = %if.then33.do.end228_crit_edge, %if.end24.do.end228_crit_edge, %lor.lhs.false21.do.end228_crit_edge, %if.end18.do.end228_crit_edge, %if.end15.do.end228_crit_edge, %lor.lhs.false11.do.end228_crit_edge, %lor.lhs.false9.do.end228_crit_edge, %lor.lhs.false7.do.end228_crit_edge, %if.end.do.end228_crit_edge
  %ret.1 = phi i32 [ %call37, %if.then33.do.end228_crit_edge ], [ -22, %lor.lhs.false11.do.end228_crit_edge ], [ -22, %lor.lhs.false9.do.end228_crit_edge ], [ -22, %lor.lhs.false7.do.end228_crit_edge ], [ -22, %if.end.do.end228_crit_edge ], [ -33, %if.end15.do.end228_crit_edge ], [ -108, %lor.lhs.false21.do.end228_crit_edge ], [ -108, %if.end18.do.end228_crit_edge ], [ -95, %if.end24.do.end228_crit_edge ]
  %dev229 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %120 = ptrtoint ptr %dev229 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev229, align 4
  %pdev230 = getelementptr inbounds %struct.net2280, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %pdev230 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev230, align 8
  %dev231 = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev231, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.90, i32 noundef %ret.1) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end228, %done, %do.end
  %retval.0 = phi i32 [ %ret.1, %do.end228 ], [ 0, %done ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_dequeue(ptr noundef %_ep, ptr noundef %_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false2

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %bf.load)
  %cmp.not = icmp ugt i32 %bf.load, 16777215
  %tobool3.not = icmp eq ptr %_req, null
  %or.cond = or i1 %tobool3.not, %cmp.not
  br i1 %or.cond, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.do.body6_crit_edge

land.lhs.true.do.body6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tobool3.not.old = icmp eq ptr %_req, null
  br i1 %tobool3.not.old, label %lor.lhs.false2.do.end_crit_edge, label %lor.lhs.false2.do.body6_crit_edge

lor.lhs.false2.do.body6_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, ptr noundef %_ep, ptr noundef %_req) #16
  br label %cleanup

do.body6:                                         ; preds = %lor.lhs.false2.do.body6_crit_edge, %land.lhs.true.do.body6_crit_edge
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.net2280, ptr %4, i32 0, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %stopped15 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %5 = ptrtoint ptr %stopped15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load16 = load i32, ptr %stopped15, align 4
  %bf.lshr17 = lshr i32 %bf.load16, 9
  %bf.clear = and i32 %bf.lshr17, 1
  %bf.set = or i32 %bf.load16, 512
  store i32 %bf.set, ptr %stopped15, align 4
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 3
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %do.body6.if.end30_crit_edge, label %if.then22

do.body6.if.end30_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then22:                                        ; preds = %do.body6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #12, !srcloc !447
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !588
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !532
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !533
  %13 = and i32 %12, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #12, !srcloc !450
  %call.i.i.i = tail call i64 @ktime_get() #12
  %add.i.i.i.i = add i64 %call.i.i.i, 50000
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.i.i.i = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp53.i.i.i = icmp eq i32 %14, -1
  %or.cond4.i.i.i = or i1 %cmp53.i.i.i, %cmp2.i.i.i
  br i1 %or.cond4.i.i.i, label %if.then22.stop_dma.exit_crit_edge, label %if.then22.land.lhs.true.i.i.i_crit_edge

if.then22.land.lhs.true.i.i.i_crit_edge:          ; preds = %if.then22
  br label %land.lhs.true.i.i.i

if.then22.stop_dma.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_dma.exit

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.then22.land.lhs.true.i.i.i_crit_edge
  %call7.i.i.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call7.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then11.i.i.i, label %cond.false.i.i.i

if.then11.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %stop_dma.exit

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i = icmp eq i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp5.i.i.i = icmp eq i32 %18, -1
  %or.cond.i.i.i = or i1 %cmp5.i.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i.i, label %cond.false.i.i.i.stop_dma.exit_crit_edge, label %cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge

cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge:   ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i.i

cond.false.i.i.i.stop_dma.exit_crit_edge:         ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_dma.exit

stop_dma.exit:                                    ; preds = %cond.false.i.i.i.stop_dma.exit_crit_edge, %if.then11.i.i.i, %if.then22.stop_dma.exit_crit_edge
  %call29 = tail call fastcc i32 @scan_dma_completions(ptr noundef nonnull %_ep)
  br label %if.end30

if.end30:                                         ; preds = %stop_dma.exit, %do.body6.if.end30_crit_edge
  %dmactl.0 = phi i32 [ %9, %stop_dma.exit ], [ 0, %do.body6.if.end30_crit_edge ]
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end30
  %.pn.in = phi ptr [ %queue, %if.end30 ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %20 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn.in, align 4
  %req.0 = getelementptr i8, ptr %.pn, i32 -64
  %cmp36.not = icmp eq ptr %.pn, %queue
  %cmp39 = icmp eq ptr %req.0, %_req
  %or.cond247 = or i1 %cmp36.not, %cmp39
  br i1 %or.cond247, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp39, label %if.end72, label %if.then51

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %stopped15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load53 = load i32, ptr %stopped15, align 4
  %bf.shl = shl nuw nsw i32 %bf.clear, 9
  %bf.clear54 = and i32 %bf.load53, -513
  %bf.set55 = or i32 %bf.clear54, %bf.shl
  store i32 %bf.set55, ptr %stopped15, align 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %lock57 = getelementptr inbounds %struct.net2280, ptr %23, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock57, i32 noundef %call10) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_dequeue.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_dequeue, %cleanup)) #12
          to label %if.then66 [label %cleanup], !srcloc !446

if.then66:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_dequeue.__UNIQUE_ID_ddebug249, ptr noundef %dev68, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107) #12
  br label %cleanup

if.end72:                                         ; preds = %for.end
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue, align 4
  %cmp76 = icmp eq ptr %29, %.pn
  br i1 %cmp76, label %if.then78, label %if.end146

if.then78:                                        ; preds = %if.end72
  %30 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma, align 4
  %tobool80.not = icmp eq ptr %31, null
  br i1 %tobool80.not, label %do.body123, label %do.body82

do.body82:                                        ; preds = %if.then78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_dequeue.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_dequeue, %do.end102)) #12
          to label %if.then96 [label %do.end102], !srcloc !446

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %pdev98 = getelementptr inbounds %struct.net2280, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %pdev98 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev98, align 8
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_dequeue.__UNIQUE_ID_ddebug250, ptr noundef %dev99, ptr noundef nonnull @.str.109, ptr noundef %37) #12
  br label %do.end102

do.end102:                                        ; preds = %if.then96, %do.body82
  %status = getelementptr inbounds %struct.usb_request, ptr %_req, i32 0, i32 11
  %38 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -104, ptr %status, align 4
  tail call fastcc void @abort_dma(ptr noundef nonnull %_ep)
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue, align 4
  %cmp106 = icmp eq ptr %40, %.pn
  br i1 %cmp106, label %if.then114, label %do.end102.if.end149_crit_edge, !prof !455

do.end102.if.end149_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then114:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #14
  %td = getelementptr i8, ptr %.pn, i32 -8
  %41 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %td, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %42, align 16
  %44 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma, align 4
  %dmacount118 = getelementptr inbounds %struct.net2280_dma_regs, ptr %45, i32 0, i32 3
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacount118) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !589
  %length.i = getelementptr i8, ptr %.pn, i32 -60
  %47 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length.i, align 4
  %49 = and i32 %46, -256
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %sub.i = sub i32 %48, %50
  %actual.i = getelementptr i8, ptr %.pn, i32 -12
  %51 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i, ptr %actual.i, align 4
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104) #12
  br label %if.end149

do.body123:                                       ; preds = %if.then78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_dequeue.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_dequeue, %do.end144)) #12
          to label %if.then137 [label %do.end144], !srcloc !446

if.then137:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %pdev139 = getelementptr inbounds %struct.net2280, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %pdev139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev139, align 8
  %dev140 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %name141 = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %56 = ptrtoint ptr %name141 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name141, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_dequeue.__UNIQUE_ID_ddebug251, ptr noundef %dev140, ptr noundef nonnull @.str.110, ptr noundef %57) #12
  br label %do.end144

do.end144:                                        ; preds = %if.then137, %do.body123
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef %_req, i32 noundef -104)
  br label %if.end149

if.end146:                                        ; preds = %if.end72
  %tobool147.not = icmp eq ptr %_req, null
  br i1 %tobool147.not, label %if.end146.if.end149_crit_edge, label %if.then148

if.end146.if.end149_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then148:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @done(ptr noundef nonnull %_ep, ptr noundef nonnull %_req, i32 noundef -104)
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end146.if.end149_crit_edge, %do.end144, %if.then114, %do.end102.if.end149_crit_edge
  %tobool147.not273 = phi i1 [ false, %if.then148 ], [ true, %if.end146.if.end149_crit_edge ], [ true, %do.end102.if.end149_crit_edge ], [ true, %if.then114 ], [ true, %do.end144 ]
  %58 = ptrtoint ptr %stopped15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load151 = load i32, ptr %stopped15, align 4
  %bf.shl153 = shl nuw nsw i32 %bf.clear, 9
  %bf.clear154 = and i32 %bf.load151, -513
  %bf.set155 = or i32 %bf.clear154, %bf.shl153
  store i32 %bf.set155, ptr %stopped15, align 4
  %59 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma, align 4
  %tobool157.not = icmp eq ptr %60, null
  br i1 %tobool157.not, label %if.end149.if.end187_crit_edge, label %if.then158

if.end149.if.end187_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

if.then158:                                       ; preds = %if.end149
  %61 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %62, %queue
  br i1 %cmp.i.not, label %if.then162, label %if.else164

if.then162:                                       ; preds = %if.then158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !532
  tail call void @arm_heavy_mb() #12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !533
  %64 = and i32 %63, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 %64) #12, !srcloc !450
  %call.i.i.i254 = tail call i64 @ktime_get() #12
  %add.i.i.i.i255 = add i64 %call.i.i.i254, 50000
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %66 = and i32 %65, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp2.i.i.i256 = icmp eq i32 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp53.i.i.i257 = icmp eq i32 %65, -1
  %or.cond4.i.i.i258 = or i1 %cmp53.i.i.i257, %cmp2.i.i.i256
  br i1 %or.cond4.i.i.i258, label %if.then162.if.end187_crit_edge, label %if.then162.land.lhs.true.i.i.i261_crit_edge

if.then162.land.lhs.true.i.i.i261_crit_edge:      ; preds = %if.then162
  br label %land.lhs.true.i.i.i261

if.then162.if.end187_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

land.lhs.true.i.i.i261:                           ; preds = %cond.false.i.i.i266.land.lhs.true.i.i.i261_crit_edge, %if.then162.land.lhs.true.i.i.i261_crit_edge
  %call7.i.i.i259 = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i.i259, i64 %add.i.i.i.i255)
  %cmp3.i.i.i.i260 = icmp sgt i64 %call7.i.i.i259, %add.i.i.i.i255
  br i1 %cmp3.i.i.i.i260, label %if.then11.i.i.i262, label %cond.false.i.i.i266

if.then11.i.i.i262:                               ; preds = %land.lhs.true.i.i.i261
  call void @__sanitizer_cov_trace_pc() #14
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %if.end187

cond.false.i.i.i266:                              ; preds = %land.lhs.true.i.i.i261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748) #12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %70 = and i32 %69, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i.i263 = icmp eq i32 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp5.i.i.i264 = icmp eq i32 %69, -1
  %or.cond.i.i.i265 = or i1 %cmp5.i.i.i264, %cmp.i.i.i263
  br i1 %or.cond.i.i.i265, label %cond.false.i.i.i266.if.end187_crit_edge, label %cond.false.i.i.i266.land.lhs.true.i.i.i261_crit_edge

cond.false.i.i.i266.land.lhs.true.i.i.i261_crit_edge: ; preds = %cond.false.i.i.i266
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i.i261

cond.false.i.i.i266.if.end187_crit_edge:          ; preds = %cond.false.i.i.i266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

if.else164:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %tobool169.not = icmp eq i32 %bf.clear, 0
  br i1 %tobool169.not, label %if.then170, label %if.else164.if.end187_crit_edge

if.else164.if.end187_crit_edge:                   ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

if.then170:                                       ; preds = %if.else164
  br i1 %tobool147.not273, label %if.else178, label %do.body173

do.body173:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !590
  tail call void @arm_heavy_mb() #12
  %71 = tail call i32 @llvm.bswap.i32(i32 %dmactl.0)
  %72 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dma, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #12, !srcloc !450
  br label %if.end187

if.else178:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr183 = getelementptr i8, ptr %62, i32 -64
  tail call fastcc void @start_dma(ptr noundef nonnull %_ep, ptr noundef %add.ptr183)
  br label %if.end187

if.end187:                                        ; preds = %if.else178, %do.body173, %if.else164.if.end187_crit_edge, %cond.false.i.i.i266.if.end187_crit_edge, %if.then11.i.i.i262, %if.then162.if.end187_crit_edge, %if.end149.if.end187_crit_edge
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %lock189 = getelementptr inbounds %struct.net2280, ptr %75, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock189, i32 noundef %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end187, %if.then66, %if.then51, %do.end
  %retval.0 = phi i32 [ 0, %if.end187 ], [ -22, %do.end ], [ -22, %if.then66 ], [ -22, %if.then51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_set_halt(ptr noundef %_ep, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @net2280_set_halt_and_wedge(ptr noundef %_ep, i32 noundef %value, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_set_wedge(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %cmp = icmp eq ptr %1, @ep0name
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, ptr noundef %_ep) #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @net2280_set_halt_and_wedge(ptr noundef nonnull %_ep, i32 noundef 1, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net2280_fifo_status(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.121, ptr noundef %_ep) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.net2280, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.do.end10_crit_edge, label %lor.lhs.false4

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false4:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %lor.lhs.false4.do.end10_crit_edge, label %if.end18

lor.lhs.false4.do.end10_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false4.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %pdev = getelementptr inbounds %struct.net2280, ptr %4, i32 0, i32 9
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %speed17 = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %11 = ptrtoint ptr %speed17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121, ptr noundef %6, i32 noundef %12) #16
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false4
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %ep_avail = getelementptr inbounds %struct.net2280_ep_regs, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_avail) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !591
  %16 = and i32 %15, -15794176
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %fifo_size = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %18 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load22 = load i32, ptr %fifo_size, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 12
  %bf.clear = and i32 %bf.lshr23, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %17)
  %cmp24 = icmp ult i32 %bf.clear, %17
  br i1 %cmp24, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %pdev30 = getelementptr inbounds %struct.net2280, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev30, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.121) #16
  br label %cleanup

if.end32:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %23 = and i32 %bf.load22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool36.not = icmp eq i32 %23, 0
  %sub = sub nsw i32 %bf.clear, %17
  %spec.select = select i1 %tobool36.not, i32 %17, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end28, %do.end10, %do.end
  %retval.0 = phi i32 [ -108, %do.end10 ], [ -75, %do.end28 ], [ %spec.select, %if.end32 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net2280_fifo_flush(ptr noundef %_ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.128, ptr noundef %_ep) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.net2280, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.do.end10_crit_edge, label %lor.lhs.false4

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false4:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %lor.lhs.false4.do.end10_crit_edge, label %do.body19

lor.lhs.false4.do.end10_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false4.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %pdev = getelementptr inbounds %struct.net2280, ptr %4, i32 0, i32 9
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %speed17 = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %11 = ptrtoint ptr %speed17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.128, ptr noundef %6, i32 noundef %12) #16
  br label %cleanup

do.body19:                                        ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !592
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat, i32 131072) #12, !srcloc !450
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %16, i32 0, i32 1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !593
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %do.end10, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_clear_seqnum(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %plregs = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl = getelementptr inbounds %struct.usb338x_pl_regs, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_ctrl) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !570
  %5 = and i32 %4, -520093697
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %num = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %num, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %arrayidx = getelementptr [9 x i32], ptr @ep_clear_seqnum.ep_pl, i32 0, i32 %bf.lshr
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %or = or i32 %9, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !571
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl4 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %12, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl4, i32 %10) #12, !srcloc !450
  %or5 = or i32 %or, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !572
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %14 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plregs, align 4
  %pl_ep_ctrl10 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %15, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl10, i32 %13) #12, !srcloc !450
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep_reset_338x(ptr noundef %regs, ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %desc, align 4
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 8
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %prev.i, align 4
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep, i32 noundef -1) #12
  %ops = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @net2280_ep_ops, ptr %ops, align 4
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !594
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !595
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma, align 4
  %dmastat8 = getelementptr inbounds %struct.net2280_dma_regs, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat8, i32 15) #12, !srcloc !450
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma, align 4
  %dmastat10 = getelementptr inbounds %struct.net2280_dma_regs, ptr %11, i32 0, i32 1
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmastat10) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !596
  call void @__sanitizer_cov_trace_const_cmp4(i32 38797312, i32 %12)
  %cmp = icmp eq i32 %12, 38797312
  br i1 %cmp, label %do.end16, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end16:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.83, i32 noundef 20482) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !597
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma, align 4
  %dmastat22 = getelementptr inbounds %struct.net2280_dma_regs, ptr %18, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat22, i32 1509949440) #12, !srcloc !450
  br label %if.end

if.end:                                           ; preds = %do.end16, %do.body.if.end_crit_edge
  %pciirqenb0 = getelementptr inbounds %struct.net2280_regs, ptr %regs, i32 0, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb0) #12, !srcloc !447
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !598
  %num = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %num, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  %arrayidx = getelementptr [9 x i32], ptr @ep_bit, i32 0, i32 %bf.lshr
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %23
  %neg = xor i32 %shl, -1
  %and = and i32 %20, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !599
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb0, i32 %24) #12, !srcloc !450
  br label %do.body54

if.else:                                          ; preds = %entry
  %num32 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %25 = ptrtoint ptr %num32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load33 = load i32, ptr %num32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %bf.load33)
  %cmp35 = icmp ult i32 %bf.load33, 83886080
  br i1 %cmp35, label %if.then36, label %if.else.do.body54_crit_edge

if.else.do.body54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %pciirqenb1 = getelementptr inbounds %struct.net2280_regs, ptr %regs, i32 0, i32 5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb1) #12, !srcloc !447
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !600
  %28 = ptrtoint ptr %num32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load43 = load i32, ptr %num32, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 24
  %shl45 = shl i32 256, %bf.lshr44
  %neg46 = xor i32 %shl45, -1
  %and47 = and i32 %27, %neg46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !601
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %and47)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pciirqenb1, i32 %29) #12, !srcloc !450
  br label %do.body54

do.body54:                                        ; preds = %if.then36, %if.else.do.body54_crit_edge, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !602
  tail call void @arm_heavy_mb() #12
  %regs57 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %30 = ptrtoint ptr %regs57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs57, align 4
  %ep_irqenb = getelementptr inbounds %struct.net2280_ep_regs, ptr %31, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !603
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %regs57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs57, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %33, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat, i32 1864368128) #12, !srcloc !450
  %cfg = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 1
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !447
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !604
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %38 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load67 = load i32, ptr %is_in, align 4
  %39 = and i32 %bf.load67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool69.not = icmp eq i32 %39, 0
  %tmp.0.v = select i1 %tobool69.not, i32 -1793, i32 -28673
  %tmp.0 = and i32 %tmp.0.v, %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !605
  tail call void @arm_heavy_mb() #12
  %40 = tail call i32 @llvm.bswap.i32(i32 %tmp.0)
  %41 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #12, !srcloc !450
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_dma(ptr nocapture noundef %ep, ptr nocapture noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !606
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !455

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 877, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !607
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #12, !srcloc !450
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %6 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %is_in, align 4
  %7 = and i32 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool29.not = icmp eq i32 %7, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end.if.end85_crit_edge

if.end.if.end85_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %9, i32 0, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !608
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool36.not = icmp eq i32 %11, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end85_crit_edge, label %do.body38

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

do.body38:                                        ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !609
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %ep_stat42 = getelementptr inbounds %struct.net2280_ep_regs, ptr %13, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat42, i32 536870912) #12, !srcloc !450
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %ep_avail = getelementptr inbounds %struct.net2280_ep_regs, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_avail) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !610
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool49.not = icmp eq i32 %16, 0
  br i1 %tobool49.not, label %if.end84, label %do.body51

do.body51:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !611
  tail call void @arm_heavy_mb() #12
  %dmastat = getelementptr inbounds %struct.net2280_dma_regs, ptr %1, i32 0, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmastat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat, i32 %18) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !613
  tail call void @arm_heavy_mb() #12
  %dma64 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %dma64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma64, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %dmaaddr = getelementptr inbounds %struct.net2280_dma_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmaaddr, i32 %21) #12, !srcloc !450
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %17, i32 %23)
  %sub = sub i32 %23, %24
  %25 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %td = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %td, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %27, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !614
  tail call void @arm_heavy_mb() #12
  %or = or i32 %24, 536870912
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  %dmacount72 = getelementptr inbounds %struct.net2280_dma_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacount72, i32 %29) #12, !srcloc !450
  %30 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %td, align 4
  %dmadesc = getelementptr inbounds %struct.net2280_dma, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dmadesc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dmadesc, align 8
  %valid = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 4
  %33 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load74 = load i8, ptr %valid, align 4
  %bf.set = or i8 %bf.load74, 64
  store i8 %bf.set, ptr %valid, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !615
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 33554432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !616
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat, i32 16777216) #12, !srcloc !450
  br label %cleanup

if.end84:                                         ; preds = %do.body38
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %ep_stat.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %35, i32 0, i32 3
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !617
  %37 = and i32 %36, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i, label %if.end84.if.end85_crit_edge, label %do.body.i

if.end84.if.end85_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

do.body.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !618
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %39, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 -2147483648) #12, !srcloc !450
  br label %if.end85

if.end85:                                         ; preds = %do.body.i, %if.end84.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge, %if.end.if.end85_crit_edge
  %40 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load87 = load i32, ptr %is_in, align 4
  %41 = and i32 %bf.load87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool90.not = icmp eq i32 %41, 0
  br i1 %tobool90.not, label %if.end85.if.end119_crit_edge, label %if.then91

if.end85.if.end119_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then91:                                        ; preds = %if.end85
  %length93 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %length93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length93, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %44 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %44, i32 7)
  %bf.load95 = load i56, ptr %maxpacket, align 2
  %bf.lshr96 = lshr i56 %bf.load95, 40
  %bf.cast = trunc i56 %bf.lshr96 to i32
  %rem = urem i32 %43, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool97.not = icmp eq i32 %rem, 0
  br i1 %tobool97.not, label %lor.rhs, label %if.then91.if.then109_crit_edge

if.then91.if.then109_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then109

lor.rhs:                                          ; preds = %if.then91
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %45 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load99 = load i32, ptr %zero, align 4
  %46 = and i32 %bf.load99, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool102.not = icmp eq i32 %46, 0
  br i1 %tobool102.not, label %if.else, label %lor.rhs.if.then109_crit_edge, !prof !528

lor.rhs.if.then109_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then109

if.then109:                                       ; preds = %lor.rhs.if.then109_crit_edge, %if.then91.if.then109_crit_edge
  %bf.set113 = or i32 %bf.load87, 2048
  br label %if.end119.sink.split

if.else:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear116 = and i32 %bf.load87, -2049
  br label %if.end119.sink.split

if.end119.sink.split:                             ; preds = %if.else, %if.then109
  %bf.set113.sink = phi i32 [ %bf.set113, %if.then109 ], [ %bf.clear116, %if.else ]
  %tmp.0.ph = phi i32 [ 37158918, %if.then109 ], [ 37158914, %if.else ]
  %47 = ptrtoint ptr %is_in to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.set113.sink, ptr %is_in, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.end119.sink.split, %if.end85.if.end119_crit_edge
  %tmp.0 = phi i32 [ 37158914, %if.end85.if.end119_crit_edge ], [ %tmp.0.ph, %if.end119.sink.split ]
  %td_dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 5
  %48 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %td_dma, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %td120 = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 1
  %51 = ptrtoint ptr %td120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %td120, align 4
  %dmadesc121 = getelementptr inbounds %struct.net2280_dma, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dmadesc121 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %dmadesc121, align 8
  %54 = load ptr, ptr %td120, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %55 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %length.i, align 4
  %57 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load.i = load i32, ptr %is_in, align 4
  %58 = and i32 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  %59 = shl nuw nsw i32 %58, 23
  %60 = or i32 %59, %56
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end119.lor.lhs.false.i_crit_edge

if.end119.lor.lhs.false.i_crit_edge:              ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end119
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %61 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 7)
  %bf.load9.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr10.i = lshr i56 %bf.load9.i, 40
  %bf.cast.i = trunc i56 %bf.lshr10.i to i32
  %rem.i = urem i32 %60, %bf.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i166 = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i166, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.if.then12.i_crit_edge

land.lhs.true.i.if.then12.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end119.lor.lhs.false.i_crit_edge
  %dev.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %quirks.i = getelementptr inbounds %struct.net2280, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.if.then12.i_crit_edge, label %lor.lhs.false.i.fill_dma_desc.exit_crit_edge

lor.lhs.false.i.fill_dma_desc.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_dma_desc.exit

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %land.lhs.true.i.if.then12.i_crit_edge
  %or13.i = or i32 %60, 268435456
  br label %fill_dma_desc.exit

fill_dma_desc.exit:                               ; preds = %if.then12.i, %lor.lhs.false.i.fill_dma_desc.exit_crit_edge
  %dmacount.1.i = phi i32 [ %60, %lor.lhs.false.i.fill_dma_desc.exit_crit_edge ], [ %or13.i, %if.then12.i ]
  %valid15.i = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 4
  %66 = ptrtoint ptr %valid15.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load16.i = load i8, ptr %valid15.i, align 4
  %bf.set.i = or i8 %bf.load16.i, 64
  store i8 %bf.set.i, ptr %valid15.i, align 4
  %or22.i = or i32 %dmacount.1.i, -1610612736
  %dma.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 2
  %67 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #12
  %dmaaddr.i = getelementptr inbounds %struct.net2280_dma, ptr %54, i32 0, i32 1
  %70 = ptrtoint ptr %dmaaddr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dmaaddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !587
  tail call void @arm_heavy_mb() #12
  %71 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #12
  %72 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %54, align 16
  %73 = ptrtoint ptr %td120 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %td120, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 16
  %or124 = or i32 %76, 16
  store i32 %or124, ptr %74, align 16
  %td_dma125 = getelementptr inbounds %struct.net2280_request, ptr %req, i32 0, i32 2
  %77 = ptrtoint ptr %td_dma125 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %td_dma125, align 4
  %79 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dma1, align 4
  %81 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %81)
  %bf.load.i168 = load i32, ptr %is_in, align 4
  %82 = shl i32 %bf.load.i168, 23
  %shl.i = and i32 %82, 1073741824
  %dev.i169 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %83 = ptrtoint ptr %dev.i169 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i169, align 4
  %quirks.i170 = getelementptr inbounds %struct.net2280, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %quirks.i170 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %quirks.i170, align 4
  %and.i171 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i171)
  %tobool.not.i172 = icmp eq i32 %and.i171, 0
  %spec.select.v.i = select i1 %tobool.not.i172, i32 -1879048192, i32 -2147483648
  %spec.select.i = or i32 %spec.select.v.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !619
  tail call void @arm_heavy_mb() #12
  %87 = lshr exact i32 %spec.select.i, 24
  %dmacount.i = getelementptr inbounds %struct.net2280_dma_regs, ptr %80, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacount.i, i32 %87) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !620
  tail call void @arm_heavy_mb() #12
  %dmastat.i = getelementptr inbounds %struct.net2280_dma_regs, ptr %80, i32 0, i32 1
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmastat.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !621
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat.i, i32 %88) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !622
  tail call void @arm_heavy_mb() #12
  %89 = tail call i32 @llvm.bswap.i32(i32 %78) #12
  %dmadesc.i = getelementptr inbounds %struct.net2280_dma_regs, ptr %80, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmadesc.i, i32 %89) #12, !srcloc !450
  %90 = ptrtoint ptr %dev.i169 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i169, align 4
  %quirks13.i = getelementptr inbounds %struct.net2280, ptr %91, i32 0, i32 8
  %92 = ptrtoint ptr %quirks13.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %quirks13.i, align 4
  %and14.i = shl i32 %93, 2
  %94 = and i32 %and14.i, 32
  %95 = or i32 %94, %tmp.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !623
  tail call void @arm_heavy_mb() #12
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %96) #12, !srcloc !450
  %97 = ptrtoint ptr %dev.i169 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i169, align 4
  %pci.i = getelementptr inbounds %struct.net2280, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci.i, align 8
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !625
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat.i, i32 16777216) #12, !srcloc !450
  br label %cleanup

cleanup:                                          ; preds = %fill_dma_desc.exit, %do.body51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_fifo(ptr nocapture noundef readonly %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #12, !srcloc !626
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %sub = sub i32 %7, %9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %total.0 = phi i32 [ %sub, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %buf.0 = phi ptr [ %add.ptr, %if.then ], [ null, %entry.if.end_crit_edge ]
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %10 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %10, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %11 = tail call i32 @llvm.umin.i32(i32 %total.0, i32 %bf.cast)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_fifo.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@write_fifo, %do.end)) #12
          to label %if.then12 [label %do.end], !srcloc !446

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %18 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load17 = load i56, ptr %maxpacket, align 2
  %bf.lshr18 = lshr i56 %bf.load17, 40
  %bf.cast19 = trunc i56 %bf.lshr18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %bf.cast19)
  %cmp20.not = icmp eq i32 %11, %bf.cast19
  %cond = select i1 %cmp20.not, ptr @.str.98, ptr @.str.97
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_fifo.__UNIQUE_ID_ddebug240, ptr noundef %dev13, ptr noundef nonnull @.str.96, ptr noundef %17, i32 noundef %11, ptr noundef nonnull %cond, ptr noundef %req) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp2276 = icmp ugt i32 %11, 3
  br i1 %cmp2276, label %while.body.lr.ph, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %ep_data = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %buf.178 = phi ptr [ %buf.0, %while.body.lr.ph ], [ %add.ptr27, %while.body.while.body_crit_edge ]
  %count.177 = phi i32 [ %11, %while.body.lr.ph ], [ %sub28, %while.body.while.body_crit_edge ]
  %19 = ptrtoint ptr %buf.178 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %buf.178, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !627
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_data, i32 %20) #12, !srcloc !450
  %add.ptr27 = getelementptr i8, ptr %buf.178, i32 4
  %sub28 = add i32 %count.177, -4
  %cmp22 = icmp ugt i32 %sub28, 3
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %count.1.lcssa = phi i32 [ %11, %do.end.while.end_crit_edge ], [ %sub28, %while.body.while.end_crit_edge ]
  %buf.1.lcssa = phi ptr [ %buf.0, %do.end.while.end_crit_edge ], [ %add.ptr27, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa)
  %tobool29.not = icmp eq i32 %count.1.lcssa, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %cond.true.critedge

lor.lhs.false:                                    ; preds = %while.end
  %21 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load32 = load i56, ptr %maxpacket, align 2
  %bf.lshr33 = lshr i56 %bf.load32, 40
  %bf.cast34 = trunc i56 %bf.lshr33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %total.0, i32 %bf.cast34)
  %cmp35 = icmp ult i32 %total.0, %bf.cast34
  br i1 %cmp35, label %lor.lhs.false.cond.end_crit_edge, label %lor.lhs.false.if.end46_crit_edge

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true.critedge:                               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %buf.1.lcssa to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %buf.1.lcssa, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true.critedge, %lor.lhs.false.cond.end_crit_edge
  %cond41 = phi i32 [ %23, %cond.true.critedge ], [ 0, %lor.lhs.false.cond.end_crit_edge ]
  %dev.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %pdev.i = getelementptr inbounds %struct.net2280, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6092, i16 %29)
  %cmp.i = icmp eq i16 %29, 6092
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !628
  tail call void @arm_heavy_mb() #12
  %conv2.i = trunc i32 %count.1.lcssa to i8
  %30 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv2.i) #12, !srcloc !629
  br label %set_fifo_bytecount.exit

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %cfg.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 1
  %32 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !630
  %35 = and i32 %34, -1793
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !631
  tail call void @arm_heavy_mb() #12
  %shl.i = shl nuw nsw i32 %count.1.lcssa, 16
  %or.i = or i32 %36, %shl.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %38 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #12, !srcloc !450
  br label %set_fifo_bytecount.exit

set_fifo_bytecount.exit:                          ; preds = %if.else.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !632
  tail call void @arm_heavy_mb() #12
  %ep_data45 = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_data45, i32 %cond41) #12, !srcloc !450
  br label %if.end46

if.end46:                                         ; preds = %set_fifo_bytecount.exit, %lor.lhs.false.if.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_fifo(ptr nocapture noundef readonly %ep, ptr noundef %req) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %4 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %chiprev = getelementptr inbounds %struct.net2280, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chiprev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %cmp = icmp eq i16 %9, 256
  br i1 %cmp, label %land.lhs.true, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp7 = icmp eq i32 %11, 2
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #12
  %13 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %14, i32 0, i32 3
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !633
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.else:                                          ; preds = %if.then
  %and13 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.then15

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !634
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs1, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %18, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 8388608) #12, !srcloc !450
  %19 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs1, align 4
  %ep_rsp2.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %20, i32 0, i32 1
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp2.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !635
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else.if.end17_crit_edge, %if.then.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %tobool137.not = phi i1 [ false, %if.then15 ], [ true, %if.else.if.end17_crit_edge ], [ true, %land.lhs.true.if.end17_crit_edge ], [ true, %entry.if.end17_crit_edge ], [ true, %if.then.if.end17_crit_edge ]
  %cleanup.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.else.if.end17_crit_edge ], [ 0, %land.lhs.true.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ], [ 1, %if.then.if.end17_crit_edge ]
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1)
  %ep_avail = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_avail) #12, !srcloc !447
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !636
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.then27, label %if.end17.if.end49_crit_edge, !prof !528

if.end17.if.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then27:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #12
  %25 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs1, align 4
  %ep_stat31 = getelementptr inbounds %struct.net2280_ep_regs, ptr %26, i32 0, i32 3
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat31) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !637
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_avail) #12, !srcloc !447
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !638
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp41 = icmp eq i32 %28, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.then27.if.end49_crit_edge

if.then27.if.end49_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true43:                                  ; preds = %if.then27
  %30 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp45 = icmp eq i32 %30, 0
  br i1 %cmp45, label %land.lhs.true43.cleanup161_crit_edge, label %if.end65.thread

land.lhs.true43.cleanup161_crit_edge:             ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161

if.end65.thread:                                  ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #14
  %length219 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  br label %lor.end

if.end49:                                         ; preds = %if.then27.if.end49_crit_edge, %if.end17.if.end49_crit_edge
  %count.0 = phi i32 [ %29, %if.then27.if.end49_crit_edge ], [ %23, %if.end17.if.end49_crit_edge ]
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length, align 4
  %33 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual, align 4
  %sub = sub i32 %32, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %sub)
  %cmp53 = icmp ugt i32 %count.0, %sub
  br i1 %cmp53, label %if.then55, label %if.end49.if.end65_crit_edge

if.end49.if.end65_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then55:                                        ; preds = %if.end49
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %35 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %rem = urem i32 %sub, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp57.not = icmp eq i32 %rem, 0
  br i1 %cmp57.not, label %if.then55.if.end65_crit_edge, label %if.end65.thread235

if.then55.if.end65_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end65.thread235:                               ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.99, ptr noundef %41, i32 noundef %count.0, i32 noundef %sub) #16
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %42 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -75, ptr %status, align 4
  %43 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %actual, align 4
  %add239 = add i32 %44, %sub
  store i32 %add239, ptr %actual, align 4
  br label %lor.rhs

if.end65:                                         ; preds = %if.then55.if.end65_crit_edge, %if.end49.if.end65_crit_edge
  %count.1 = phi i32 [ %count.0, %if.end49.if.end65_crit_edge ], [ %sub, %if.then55.if.end65_crit_edge ]
  %45 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual, align 4
  %add = add i32 %46, %count.1
  store i32 %add, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp68 = icmp eq i32 %count.1, 0
  br i1 %cmp68, label %if.end65.lor.end_crit_edge, label %if.end65.lor.rhs_crit_edge

if.end65.lor.rhs_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

if.end65.lor.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %if.end65.lor.rhs_crit_edge, %if.end65.thread235
  %count.1243 = phi i32 [ %sub, %if.end65.thread235 ], [ %count.1, %if.end65.lor.rhs_crit_edge ]
  %cleanup.2242 = phi i32 [ 1, %if.end65.thread235 ], [ %cleanup.0, %if.end65.lor.rhs_crit_edge ]
  %maxpacket71 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %47 = ptrtoint ptr %maxpacket71 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 7)
  %bf.load72 = load i56, ptr %maxpacket71, align 2
  %bf.lshr73 = lshr i56 %bf.load72, 40
  %bf.cast74 = trunc i56 %bf.lshr73 to i32
  %rem75 = urem i32 %count.1243, %bf.cast74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem75)
  %cmp76 = icmp ne i32 %rem75, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end65.lor.end_crit_edge, %if.end65.thread
  %count.1233 = phi i32 [ 0, %if.end65.lor.end_crit_edge ], [ %count.1243, %lor.rhs ], [ 0, %if.end65.thread ]
  %cleanup.2231 = phi i32 [ %cleanup.0, %if.end65.lor.end_crit_edge ], [ %cleanup.2242, %lor.rhs ], [ %cleanup.0, %if.end65.thread ]
  %length222230 = phi ptr [ %length, %if.end65.lor.end_crit_edge ], [ %length, %lor.rhs ], [ %length219, %if.end65.thread ]
  %48 = phi i1 [ true, %if.end65.lor.end_crit_edge ], [ %cmp76, %lor.rhs ], [ true, %if.end65.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_fifo.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_fifo, %do.end107)) #12
          to label %if.then90 [label %do.end107], !srcloc !446

if.then90:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %pdev92 = getelementptr inbounds %struct.net2280, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %pdev92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev92, align 8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %name95 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %53 = ptrtoint ptr %name95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name95, align 4
  %cond = select i1 %48, ptr @.str.97, ptr @.str.98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleanup.2231)
  %tobool97.not = icmp eq i32 %cleanup.2231, 0
  %cond98 = select i1 %tobool97.not, ptr @.str.98, ptr @.str.102
  %cond100 = select i1 %tobool137.not, ptr @.str.98, ptr @.str.103
  %55 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %actual, align 4
  %57 = ptrtoint ptr %length222230 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length222230, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_fifo.__UNIQUE_ID_ddebug242, ptr noundef %dev93, ptr noundef nonnull @.str.101, ptr noundef %54, i32 noundef %count.1233, ptr noundef nonnull %cond, ptr noundef nonnull %cond98, ptr noundef nonnull %cond100, ptr noundef %req, i32 noundef %56, i32 noundef %58) #12
  br label %do.end107

do.end107:                                        ; preds = %if.then90, %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.1233)
  %cmp108245 = icmp ugt i32 %count.1233, 3
  br i1 %cmp108245, label %while.body.lr.ph, label %do.end107.while.end_crit_edge

do.end107.while.end_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end107
  %ep_data = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %buf.0247 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr118, %while.body.while.body_crit_edge ]
  %count.2246 = phi i32 [ %count.1233, %while.body.lr.ph ], [ %sub119, %while.body.while.body_crit_edge ]
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_data) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !639
  %60 = ptrtoint ptr %buf.0247 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %buf.0247, align 1
  %add.ptr118 = getelementptr i8, ptr %buf.0247, i32 4
  %sub119 = add i32 %count.2246, -4
  %cmp108 = icmp ugt i32 %sub119, 3
  br i1 %cmp108, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end107.while.end_crit_edge
  %count.2.lcssa = phi i32 [ %count.1233, %do.end107.while.end_crit_edge ], [ %sub119, %while.body.while.end_crit_edge ]
  %buf.0.lcssa = phi ptr [ %add.ptr, %do.end107.while.end_crit_edge ], [ %add.ptr118, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2.lcssa)
  %tobool120.not = icmp eq i32 %count.2.lcssa, 0
  br i1 %tobool120.not, label %while.end.if.end133_crit_edge, label %if.then121

while.end.if.end133_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then121:                                       ; preds = %while.end
  %ep_data124 = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 5
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_data124) #12, !srcloc !447
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !640
  br label %do.body128

do.body128:                                       ; preds = %do.body128.do.body128_crit_edge, %if.then121
  %tmp.0 = phi i32 [ %62, %if.then121 ], [ %shr, %do.body128.do.body128_crit_edge ]
  %count.3 = phi i32 [ %count.2.lcssa, %if.then121 ], [ %dec, %do.body128.do.body128_crit_edge ]
  %buf.1 = phi ptr [ %buf.0.lcssa, %if.then121 ], [ %incdec.ptr, %do.body128.do.body128_crit_edge ]
  %conv129 = trunc i32 %tmp.0 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.1, i32 1
  %63 = ptrtoint ptr %buf.1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv129, ptr %buf.1, align 1
  %shr = lshr i32 %tmp.0, 8
  %dec = add i32 %count.3, -1
  %tobool131.not = icmp eq i32 %dec, 0
  br i1 %tobool131.not, label %do.body128.if.end133_crit_edge, label %do.body128.do.body128_crit_edge

do.body128.do.body128_crit_edge:                  ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body128

do.body128.if.end133_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.end133:                                        ; preds = %do.body128.if.end133_crit_edge, %while.end.if.end133_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleanup.2231)
  %tobool134.not = icmp eq i32 %cleanup.2231, 0
  br i1 %tobool134.not, label %if.end133.if.end136_crit_edge, label %if.then135

if.end133.if.end136_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then135:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @out_flush(ptr noundef %ep)
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end133.if.end136_crit_edge
  br i1 %tobool137.not, label %if.end136.if.end150_crit_edge, label %do.body139

if.end136.if.end150_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

do.body139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !641
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs1, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %65, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 -2147483648) #12, !srcloc !450
  %66 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs1, align 4
  %ep_rsp146 = getelementptr inbounds %struct.net2280_ep_regs, ptr %67, i32 0, i32 1
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp146) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !642
  br label %if.end150

if.end150:                                        ; preds = %do.body139, %if.end136.if.end150_crit_edge
  br i1 %48, label %if.end150.cleanup161_crit_edge, label %lor.rhs152

if.end150.cleanup161_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup161

lor.rhs152:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %actual, align 4
  %71 = ptrtoint ptr %length222230 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %length222230, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp157 = icmp eq i32 %70, %72
  %phi.cast = zext i1 %cmp157 to i32
  br label %cleanup161

cleanup161:                                       ; preds = %lor.rhs152, %if.end150.cleanup161_crit_edge, %land.lhs.true43.cleanup161_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true43.cleanup161_crit_edge ], [ 1, %if.end150.cleanup161_crit_edge ], [ %phi.cast, %lor.rhs152 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_out_naking(ptr nocapture noundef readonly %ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !617
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !618
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 -2147483648) #12, !srcloc !450
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_fifo_bytecount(ptr nocapture noundef readonly %ep, i32 noundef %count) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6092, i16 %5)
  %cmp = icmp eq i16 %5, 6092
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !628
  tail call void @arm_heavy_mb() #12
  %conv2 = trunc i32 %count to i8
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv2) #12, !srcloc !629
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cfg = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !630
  %11 = and i32 %10, -1793
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !631
  tail call void @arm_heavy_mb() #12
  %shl = shl i32 %count, 16
  %or = or i32 %12, %shl
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #12, !srcloc !450
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @out_flush(ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !643
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body17_crit_edge, label %do.body

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @out_flush.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@out_flush, %do.body12)) #12
          to label %if.then9 [label %do.body12], !srcloc !446

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @out_flush.__UNIQUE_ID_ddebug241, ptr noundef %dev10, ptr noundef nonnull @.str.105, ptr noundef %9, ptr noundef nonnull @.str.104, i32 noundef %3) #12
  br label %do.body12

do.body12:                                        ; preds = %if.then9, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !644
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 8388608) #12, !srcloc !450
  br label %do.body17

do.body17:                                        ; preds = %do.body12, %entry.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !645
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat, i32 167772160) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !646
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat, i32 131072) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !647
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !648
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  br i1 %tobool32.not, label %do.body17.if.end36_crit_edge, label %land.lhs.true

do.body17.if.end36_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true:                                    ; preds = %do.body17
  %dev33 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %14 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev33, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp = icmp eq i32 %17, 2
  br i1 %cmp, label %if.then34, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  %call.i = tail call i64 @ktime_get() #12
  %add.i.i = add i64 %call.i, 50000
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %19 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.i.not = icmp eq i32 %19, 0
  br i1 %cmp2.i.not, label %if.then34.land.lhs.true.i_crit_edge, label %if.then34.if.end36_crit_edge

if.then34.if.end36_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34.land.lhs.true.i_crit_edge:              ; preds = %if.then34
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.then34.land.lhs.true.i_crit_edge
  %call7.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call7.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %if.end36

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %23 = and i32 %22, 512
  %cmp.i.not = icmp eq i32 %23, 0
  br i1 %cmp.i.not, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.if.end36_crit_edge

cond.false.i.if.end36_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end36:                                         ; preds = %cond.false.i.if.end36_crit_edge, %if.then11.i, %if.then34.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %do.body17.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net2280_set_halt_and_wedge(ptr noundef %_ep, i32 noundef %value, i32 noundef %wedged) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %_ep, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %num = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 16777216
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.111, ptr noundef %_ep) #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.net2280, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end.do.end108_crit_edge, label %lor.lhs.false5

if.end.do.end108_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

lor.lhs.false5:                                   ; preds = %if.end
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %lor.lhs.false5.do.end108_crit_edge, label %if.end9

lor.lhs.false5.do.end108_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

if.end9:                                          ; preds = %lor.lhs.false5
  br i1 %tobool2.not, label %if.end9.do.body19_crit_edge, label %land.lhs.true12

if.end9.do.body19_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19

land.lhs.true12:                                  ; preds = %if.end9
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bmAttributes, align 1
  %11 = and i8 %10, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp14 = icmp eq i8 %11, 1
  br i1 %cmp14, label %land.lhs.true12.do.end108_crit_edge, label %land.lhs.true12.do.body19_crit_edge

land.lhs.true12.do.body19_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19

land.lhs.true12.do.end108_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end108

do.body19:                                        ; preds = %land.lhs.true12.do.body19_crit_edge, %if.end9.do.body19_crit_edge
  %lock = getelementptr inbounds %struct.net2280, ptr %4, i32 0, i32 1
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 8
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %13, %queue
  br i1 %cmp.i.not, label %if.else, label %do.body19.print_unlock_crit_edge

do.body19.print_unlock_crit_edge:                 ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %print_unlock

if.else:                                          ; preds = %do.body19
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 10
  %14 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load33 = load i32, ptr %is_in, align 4
  %15 = and i32 %bf.load33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool35.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool37.not = icmp eq i32 %value, 0
  %or.cond = or i1 %tobool37.not, %tobool35.not
  br i1 %or.cond, label %if.else.do.body44_crit_edge, label %land.lhs.true38

if.else.do.body44_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

land.lhs.true38:                                  ; preds = %if.else
  %call39 = tail call i32 @net2280_fifo_status(ptr noundef nonnull %_ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %land.lhs.true38.do.body44_crit_edge, label %land.lhs.true38.print_unlock_crit_edge

land.lhs.true38.print_unlock_crit_edge:           ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %print_unlock

land.lhs.true38.do.body44_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

do.body44:                                        ; preds = %land.lhs.true38.do.body44_crit_edge, %if.else.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net2280_set_halt_and_wedge.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@net2280_set_halt_and_wedge, %do.end59)) #12
          to label %if.then51 [label %do.end59], !srcloc !446

if.then51:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %_ep, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %cond = select i1 %tobool37.not, ptr @.str.114, ptr @.str.113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedged)
  %tobool55.not = icmp eq i32 %wedged, 0
  %cond56 = select i1 %tobool55.not, ptr @.str.116, ptr @.str.115
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @net2280_set_halt_and_wedge.__UNIQUE_ID_ddebug252, ptr noundef %dev53, ptr noundef nonnull @.str.112, ptr noundef %21, ptr noundef nonnull %cond, ptr noundef nonnull %cond56) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then51, %do.body44
  br i1 %tobool37.not, label %if.else80, label %if.then61

if.then61:                                        ; preds = %do.end59
  %22 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load63 = load i32, ptr %is_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load63)
  %cmp65 = icmp ult i32 %bf.load63, 16777216
  br i1 %cmp65, label %if.then67, label %if.else71

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %protocol_stall = getelementptr inbounds %struct.net2280, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load69 = load i16, ptr %protocol_stall, align 8
  %bf.set = or i16 %bf.load69, 16384
  store i16 %bf.set, ptr %protocol_stall, align 8
  br label %if.end72

if.else71:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !649
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %chiprev.i = getelementptr inbounds %struct.net2280, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %chiprev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %29)
  %cmp.i147 = icmp eq i16 %29, 256
  %or2.i = select i1 %cmp.i147, i32 33032, i32 264
  %30 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #12
  %regs.i = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %32, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 %30) #12, !srcloc !450
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wedged)
  %tobool73.not = icmp eq i32 %wedged, 0
  br i1 %tobool73.not, label %if.end72.if.end96_crit_edge, label %if.then74

if.end72.if.end96_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load76 = load i32, ptr %is_in, align 4
  %bf.set78 = or i32 %bf.load76, 256
  br label %if.end96.sink.split

if.else80:                                        ; preds = %do.end59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !650
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %chiprev.i149 = getelementptr inbounds %struct.net2280, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %chiprev.i149 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %chiprev.i149, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %37)
  %cmp.i150 = icmp eq i16 %37, 256
  %or.i = select i1 %cmp.i150, i32 -2097152000, i32 50331648
  %regs.i151 = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %38 = ptrtoint ptr %regs.i151 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i151, align 4
  %ep_rsp.i152 = getelementptr inbounds %struct.net2280_ep_regs, ptr %39, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i152, i32 %or.i) #12, !srcloc !450
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %quirks = getelementptr inbounds %struct.net2280, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %quirks, align 4
  %and82 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.else80.if.end91_crit_edge, label %land.lhs.true84

if.else80.if.end91_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

land.lhs.true84:                                  ; preds = %if.else80
  %44 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %queue, align 4
  %cmp.i153.not = icmp eq ptr %45, %queue
  br i1 %cmp.i153.not, label %land.lhs.true84.if.end91_crit_edge, label %land.lhs.true88

land.lhs.true84.if.end91_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

land.lhs.true88:                                  ; preds = %land.lhs.true84
  %td_dma = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 5
  %46 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %td_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool89.not = icmp eq i32 %47, 0
  br i1 %tobool89.not, label %land.lhs.true88.if.end91_crit_edge, label %if.then90

land.lhs.true88.if.end91_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then90:                                        ; preds = %land.lhs.true88
  %48 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load.i = load i32, ptr %is_in, align 4
  %49 = and i32 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then90.if.end91_crit_edge

if.then90.if.end91_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.end.i:                                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %45, i32 -64
  tail call fastcc void @start_dma(ptr noundef nonnull %_ep, ptr noundef %add.ptr.i) #12
  br label %if.end91

if.end91:                                         ; preds = %if.end.i, %if.then90.if.end91_crit_edge, %land.lhs.true88.if.end91_crit_edge, %land.lhs.true84.if.end91_crit_edge, %if.else80.if.end91_crit_edge
  %50 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load93 = load i32, ptr %is_in, align 4
  %bf.clear94 = and i32 %bf.load93, -257
  br label %if.end96.sink.split

if.end96.sink.split:                              ; preds = %if.end91, %if.then74
  %bf.set78.sink = phi i32 [ %bf.set78, %if.then74 ], [ %bf.clear94, %if.end91 ]
  %51 = ptrtoint ptr %is_in to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %bf.set78.sink, ptr %is_in, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end96.sink.split, %if.end72.if.end96_crit_edge
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %_ep, i32 0, i32 2
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %53, i32 0, i32 1
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !651
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %lock103 = getelementptr inbounds %struct.net2280, ptr %56, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock103, i32 noundef %call25) #12
  br label %cleanup

print_unlock:                                     ; preds = %land.lhs.true38.print_unlock_crit_edge, %do.body19.print_unlock_crit_edge
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %lock105 = getelementptr inbounds %struct.net2280, ptr %58, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock105, i32 noundef %call25) #12
  br label %do.end108

do.end108:                                        ; preds = %print_unlock, %land.lhs.true12.do.end108_crit_edge, %lor.lhs.false5.do.end108_crit_edge, %if.end.do.end108_crit_edge
  %retval1.1 = phi i32 [ -11, %print_unlock ], [ -108, %lor.lhs.false5.do.end108_crit_edge ], [ -108, %if.end.do.end108_crit_edge ], [ -22, %land.lhs.true12.do.end108_crit_edge ]
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %pdev110 = getelementptr inbounds %struct.net2280, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %pdev110 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev110, align 8
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.111, i32 noundef %retval1.1) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end108, %if.end96, %do.end
  %retval.0 = phi i32 [ %retval1.1, %do.end108 ], [ 0, %if.end96 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_halt(ptr nocapture noundef readonly %ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !649
  tail call void @arm_heavy_mb() #12
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %chiprev = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chiprev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp = icmp eq i16 %3, 256
  %or2 = select i1 %cmp, i32 33032, i32 264
  %4 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 %4) #12, !srcloc !450
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_halt(ptr nocapture noundef readonly %ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !650
  tail call void @arm_heavy_mb() #12
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %chiprev = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chiprev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp = icmp eq i16 %3, 256
  %or = select i1 %cmp, i32 -2097152000, i32 50331648
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 %or) #12, !srcloc !450
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_stat1_irqs(ptr noundef %dev, i32 noundef %stat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %stat, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end82_crit_edge, label %if.then

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !652
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %irqstat1 = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat1, i32 -1879048192) #12, !srcloc !450
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %if.then
  %and2 = and i32 %stat, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then1.if.else_crit_edge, label %land.lhs.true

if.then1.if.else_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then1
  %usb = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %5, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !653
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat1_irqs, %if.then60)) #12
          to label %if.then16 [label %if.then60], !srcloc !446

if.then16:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %driver = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %driver18 = getelementptr inbounds %struct.usb_gadget_driver, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %driver18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat1_irqs.__UNIQUE_ID_ddebug267, ptr noundef %dev17, ptr noundef nonnull @.str.132, ptr noundef %13) #12
  br label %if.then60

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then1.if.else_crit_edge
  %and21 = and i32 %stat, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else.cleanup_crit_edge, label %land.lhs.true23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.else
  %usb26 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %14 = ptrtoint ptr %usb26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb26, align 8
  %usbstat = getelementptr inbounds %struct.net2280_usb_regs, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbstat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !654
  %17 = and i32 %16, -1073676288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp31 = icmp eq i32 %17, 0
  br i1 %cmp31, label %if.then32, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat1_irqs, %if.then60)) #12
          to label %if.then47 [label %if.then60], !srcloc !446

if.then47:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %pdev48 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %18 = ptrtoint ptr %pdev48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev48, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %driver50 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %driver50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver50, align 4
  %driver51 = getelementptr inbounds %struct.usb_gadget_driver, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %driver51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat1_irqs.__UNIQUE_ID_ddebug268, ptr noundef %dev49, ptr noundef nonnull @.str.133, ptr noundef %23) #12
  br label %if.then60

if.then60:                                        ; preds = %if.then47, %if.then32, %if.then16, %if.then8
  %reset.0.off0385 = phi i1 [ true, %if.then47 ], [ false, %if.then16 ], [ false, %if.then8 ], [ true, %if.then32 ]
  %driver61 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %driver61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver61, align 4
  tail call fastcc void @stop_activity(ptr noundef %dev, ptr noundef %25)
  tail call fastcc void @ep0_start(ptr noundef %dev)
  %async_callbacks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %26 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %async_callbacks, align 8
  %27 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool62.not = icmp eq i16 %27, 0
  br i1 %tobool62.not, label %if.then60.cleanup273_crit_edge, label %if.then63

if.then60.cleanup273_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup273

if.then63:                                        ; preds = %if.then60
  %lock = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %28 = ptrtoint ptr %driver61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver61, align 4
  br i1 %reset.0.off0385, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_gadget_udc_reset(ptr noundef %dev, ptr noundef %29) #12
  br label %if.end72

if.else68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %disconnect70 = getelementptr inbounds %struct.usb_gadget_driver, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %disconnect70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %disconnect70, align 4
  tail call void %31(ptr noundef %dev) #12
  br label %if.end72

if.end72:                                         ; preds = %if.else68, %if.then65
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %cleanup273

cleanup:                                          ; preds = %land.lhs.true23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %and77 = and i32 %stat, -145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not.not, label %cleanup.cleanup273_crit_edge, label %cleanup.if.end82_crit_edge

cleanup.if.end82_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

cleanup.cleanup273_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup273

if.end82:                                         ; preds = %cleanup.if.end82_crit_edge, %entry.if.end82_crit_edge
  %stat.addr.1 = phi i32 [ %and77, %cleanup.if.end82_crit_edge ], [ %stat, %entry.if.end82_crit_edge ]
  %and83 = and i32 %stat.addr.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end132_crit_edge, label %do.body86

if.end82.if.end132_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

do.body86:                                        ; preds = %if.end82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !655
  tail call void @arm_heavy_mb() #12
  %regs89 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %32 = ptrtoint ptr %regs89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs89, align 4
  %irqstat190 = getelementptr inbounds %struct.net2280_regs, ptr %33, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat190, i32 67108864) #12, !srcloc !450
  %lock91 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock91) #12
  %and92 = and i32 %stat.addr.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  %async_callbacks114 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %34 = ptrtoint ptr %async_callbacks114 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load115 = load i16, ptr %async_callbacks114, align 8
  %35 = and i16 %bf.load115, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool119.not = icmp eq i16 %35, 0
  br i1 %tobool93.not, label %if.else113, label %if.then94

if.then94:                                        ; preds = %do.body86
  br i1 %tobool119.not, label %if.then94.if.end108_crit_edge, label %land.lhs.true101

if.then94.if.end108_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

land.lhs.true101:                                 ; preds = %if.then94
  %driver102 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %36 = ptrtoint ptr %driver102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver102, align 4
  %suspend = getelementptr inbounds %struct.usb_gadget_driver, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %suspend, align 4
  %tobool103.not = icmp eq ptr %39, null
  br i1 %tobool103.not, label %land.lhs.true101.if.end108_crit_edge, label %if.then104

land.lhs.true101.if.end108_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108

if.then104:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %39(ptr noundef %dev) #12
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %land.lhs.true101.if.end108_crit_edge, %if.then94.if.end108_crit_edge
  %40 = load i8, ptr @enable_suspend, align 1, !range !656
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool109.not = icmp eq i8 %40, 0
  %and111 = and i32 %stat.addr.1, -9
  %spec.select = select i1 %tobool109.not, i32 %and111, i32 %stat.addr.1
  br label %if.end128

if.else113:                                       ; preds = %do.body86
  br i1 %tobool119.not, label %if.else113.if.end128_crit_edge, label %land.lhs.true120

if.else113.if.end128_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

land.lhs.true120:                                 ; preds = %if.else113
  %driver121 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %41 = ptrtoint ptr %driver121 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver121, align 4
  %resume = getelementptr inbounds %struct.usb_gadget_driver, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %resume, align 4
  %tobool122.not = icmp eq ptr %44, null
  br i1 %tobool122.not, label %land.lhs.true120.if.end128_crit_edge, label %if.then123

land.lhs.true120.if.end128_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then123:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %44(ptr noundef %dev) #12
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %land.lhs.true120.if.end128_crit_edge, %if.else113.if.end128_crit_edge, %if.end108
  %stat.addr.2 = phi i32 [ %stat.addr.1, %if.then123 ], [ %stat.addr.1, %land.lhs.true120.if.end128_crit_edge ], [ %stat.addr.1, %if.else113.if.end128_crit_edge ], [ %spec.select, %if.end108 ]
  tail call void @_raw_spin_lock(ptr noundef %lock91) #12
  %and131 = and i32 %stat.addr.2, -5
  br label %if.end132

if.end132:                                        ; preds = %if.end128, %if.end82.if.end132_crit_edge
  %stat.addr.3 = phi i32 [ %and131, %if.end128 ], [ %stat.addr.1, %if.end82.if.end132_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.addr.3)
  %tobool133.not = icmp eq i32 %stat.addr.3, 0
  br i1 %tobool133.not, label %if.end132.if.end140_crit_edge, label %do.body135

if.end132.if.end140_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

do.body135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !657
  tail call void @arm_heavy_mb() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %stat.addr.3)
  %regs138 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %46 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs138, align 4
  %irqstat1139 = getelementptr inbounds %struct.net2280_regs, ptr %47, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat1139, i32 %45) #12, !srcloc !450
  br label %if.end140

if.end140:                                        ; preds = %do.body135, %if.end132.if.end140_crit_edge
  %quirks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 8
  %48 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %quirks, align 4
  %and141 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  %stat.addr.4.v = select i1 %tobool142.not, i32 -16452, i32 -76
  %stat.addr.4 = and i32 %stat.addr.4.v, %stat.addr.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.addr.4)
  %tobool148.not = icmp eq i32 %stat.addr.4, 0
  br i1 %tobool148.not, label %if.end140.cleanup273_crit_edge, label %if.end150

if.end140.cleanup273_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup273

if.end150:                                        ; preds = %if.end140
  %and152 = and i32 %stat.addr.4, -7748
  %and151 = lshr i32 %stat.addr.3, 9
  %shr = and i32 %and151, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool153.not392 = icmp eq i32 %shr, 0
  br i1 %tobool153.not392, label %if.end150.for.end_crit_edge, label %if.end150.for.body_crit_edge

if.end150.for.body_crit_edge:                     ; preds = %if.end150
  br label %for.body

if.end150.for.end_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup235.for.body_crit_edge, %if.end150.for.body_crit_edge
  %num.0394 = phi i32 [ %inc238, %cleanup235.for.body_crit_edge ], [ 0, %if.end150.for.body_crit_edge ]
  %scratch.0393 = phi i32 [ %scratch.1, %cleanup235.for.body_crit_edge ], [ %shr, %if.end150.for.body_crit_edge ]
  %shl = shl nuw i32 1, %num.0394
  %and154 = and i32 %shl, %scratch.0393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %cmp155 = icmp eq i32 %and154, 0
  br i1 %cmp155, label %for.body.cleanup235_crit_edge, label %if.end157

for.body.cleanup235_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

if.end157:                                        ; preds = %for.body
  %xor = xor i32 %shl, %scratch.0393
  %add = add i32 %num.0394, 1
  %arrayidx = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %add
  %dma159 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %add, i32 3
  %50 = ptrtoint ptr %dma159 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma159, align 4
  %tobool160.not = icmp eq ptr %51, null
  br i1 %tobool160.not, label %if.end157.cleanup235_crit_edge, label %if.end162

if.end157.cleanup235_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

if.end162:                                        ; preds = %if.end157
  %dmastat = getelementptr inbounds %struct.net2280_dma_regs, ptr %51, i32 0, i32 1
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmastat) #12, !srcloc !447
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !658
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !659
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat, i32 %52) #12, !srcloc !450
  %54 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %quirks, align 4
  %and173 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end162.if.end196_crit_edge, label %if.then175

if.end162.if.end196_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = and i32 %53, 16777216
  br label %if.end196

if.then175:                                       ; preds = %if.end162
  %dmacount = getelementptr inbounds %struct.net2280_dma_regs, ptr %51, i32 0, i32 3
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacount) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !660
  %is_in = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %add, i32 10
  %57 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load181 = load i32, ptr %is_in, align 4
  %58 = and i32 %bf.load181, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool184.not = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %56)
  %tobool187.not = icmp ult i32 %56, 256
  %or.cond = select i1 %tobool184.not, i1 true, i1 %tobool187.not
  %and189 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  %or.cond370 = select i1 %or.cond, i1 true, i1 %tobool190.not
  br i1 %or.cond370, label %if.then175.if.end196_crit_edge, label %if.then175.cleanup235_crit_edge

if.then175.cleanup235_crit_edge:                  ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup235

if.then175.if.end196_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

if.end196:                                        ; preds = %if.then175.if.end196_crit_edge, %if.end162.if.end196_crit_edge
  %and197.pre-phi = phi i32 [ %.pre, %if.end162.if.end196_crit_edge ], [ %and189, %if.then175.if.end196_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197.pre-phi)
  %tobool198.not = icmp eq i32 %and197.pre-phi, 0
  br i1 %tobool198.not, label %do.body200, label %if.end223

do.body200:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat1_irqs, %cleanup235)) #12
          to label %if.then214 [label %cleanup235], !srcloc !446

if.then214:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #14
  %dev215 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %add, i32 6
  %59 = ptrtoint ptr %dev215 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev215, align 4
  %pdev216 = getelementptr inbounds %struct.net2280, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %pdev216 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev216, align 8
  %dev217 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %name219 = getelementptr inbounds %struct.usb_ep, ptr %arrayidx, i32 0, i32 1
  %63 = ptrtoint ptr %name219 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name219, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat1_irqs.__UNIQUE_ID_ddebug269, ptr noundef %dev217, ptr noundef nonnull @.str.134, ptr noundef %64, i32 noundef %53) #12
  br label %cleanup235

if.end223:                                        ; preds = %if.end196
  %65 = ptrtoint ptr %dma159 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma159, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !532
  tail call void @arm_heavy_mb() #12
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !533
  %68 = and i32 %67, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %68) #12, !srcloc !450
  %call.i.i.i = tail call i64 @ktime_get() #12
  %add.i.i.i.i = add i64 %call.i.i.i, 50000
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %70 = and i32 %69, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp2.i.i.i = icmp eq i32 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp53.i.i.i = icmp eq i32 %69, -1
  %or.cond4.i.i.i = or i1 %cmp53.i.i.i, %cmp2.i.i.i
  br i1 %or.cond4.i.i.i, label %if.end223.stop_dma.exit_crit_edge, label %if.end223.land.lhs.true.i.i.i_crit_edge

if.end223.land.lhs.true.i.i.i_crit_edge:          ; preds = %if.end223
  br label %land.lhs.true.i.i.i

if.end223.stop_dma.exit_crit_edge:                ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_dma.exit

land.lhs.true.i.i.i:                              ; preds = %cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge, %if.end223.land.lhs.true.i.i.i_crit_edge
  %call7.i.i.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i.i, i64 %add.i.i.i.i)
  %cmp3.i.i.i.i = icmp sgt i64 %call7.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %if.then11.i.i.i, label %cond.false.i.i.i

if.then11.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %stop_dma.exit

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #12
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %74 = and i32 %73, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i.i.i = icmp eq i32 %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp5.i.i.i = icmp eq i32 %73, -1
  %or.cond.i.i.i = or i1 %cmp5.i.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i.i, label %cond.false.i.i.i.stop_dma.exit_crit_edge, label %cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge

cond.false.i.i.i.land.lhs.true.i.i.i_crit_edge:   ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i.i

cond.false.i.i.i.stop_dma.exit_crit_edge:         ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop_dma.exit

stop_dma.exit:                                    ; preds = %cond.false.i.i.i.stop_dma.exit_crit_edge, %if.then11.i.i.i, %if.end223.stop_dma.exit_crit_edge
  %call225 = tail call fastcc i32 @scan_dma_completions(ptr noundef %arrayidx)
  %queue = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %add, i32 8
  %75 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %76, %queue
  br i1 %cmp.i.not, label %stop_dma.exit.if.end234_crit_edge, label %if.then228

stop_dma.exit.if.end234_crit_edge:                ; preds = %stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end234

if.then228:                                       ; preds = %stop_dma.exit
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !661
  %stopped.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %add, i32 10
  %78 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load.i = load i32, ptr %stopped.i, align 4
  %79 = and i32 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i = icmp eq i32 %79, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then228.if.end234_crit_edge

if.then228.if.end234_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end234

if.end.i:                                         ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %queue, align 4
  %add.ptr.i = getelementptr i8, ptr %81, i32 -64
  tail call fastcc void @start_dma(ptr noundef %arrayidx, ptr noundef %add.ptr.i) #12
  br label %if.end234

if.end234:                                        ; preds = %if.end.i, %if.then228.if.end234_crit_edge, %stop_dma.exit.if.end234_crit_edge
  %irqs = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %add, i32 7
  %82 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irqs, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %irqs, align 4
  br label %cleanup235

cleanup235:                                       ; preds = %if.end234, %if.then214, %do.body200, %if.then175.cleanup235_crit_edge, %if.end157.cleanup235_crit_edge, %for.body.cleanup235_crit_edge
  %scratch.1 = phi i32 [ %xor, %if.end234 ], [ %scratch.0393, %for.body.cleanup235_crit_edge ], [ %xor, %if.end157.cleanup235_crit_edge ], [ %xor, %if.then175.cleanup235_crit_edge ], [ %xor, %if.then214 ], [ %xor, %do.body200 ]
  %inc238 = add i32 %num.0394, 1
  %tobool153.not = icmp eq i32 %scratch.1, 0
  br i1 %tobool153.not, label %cleanup235.for.end_crit_edge, label %cleanup235.for.body_crit_edge

cleanup235.for.body_crit_edge:                    ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup235.for.end_crit_edge:                     ; preds = %cleanup235
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup235.for.end_crit_edge, %if.end150.for.end_crit_edge
  %and239 = and i32 %stat.addr.3, 1703936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.end249, label %if.end249.thread

if.end249.thread:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %pdev245 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %84 = ptrtoint ptr %pdev245 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev245, align 8
  %dev246 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev246, ptr noundef nonnull @.str.135, i32 noundef %and152) #16
  %driver248 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %86 = ptrtoint ptr %driver248 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver248, align 4
  tail call fastcc void @stop_activity(ptr noundef %dev, ptr noundef %87)
  tail call fastcc void @ep0_start(ptr noundef %dev)
  br label %cleanup273

if.end249:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool250.not = icmp eq i32 %and152, 0
  br i1 %tobool250.not, label %if.end249.cleanup273_crit_edge, label %do.body252

if.end249.cleanup273_crit_edge:                   ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup273

do.body252:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat1_irqs, %cleanup273)) #12
          to label %if.then266 [label %cleanup273], !srcloc !446

if.then266:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #14
  %pdev267 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %88 = ptrtoint ptr %pdev267 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev267, align 8
  %dev268 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat1_irqs.__UNIQUE_ID_ddebug270, ptr noundef %dev268, ptr noundef nonnull @.str.136, i32 noundef %and152) #12
  br label %cleanup273

cleanup273:                                       ; preds = %if.then266, %do.body252, %if.end249.cleanup273_crit_edge, %if.end249.thread, %if.end140.cleanup273_crit_edge, %cleanup.cleanup273_crit_edge, %if.end72, %if.then60.cleanup273_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_stat0_irqs(ptr noundef %dev, i32 noundef %stat) unnamed_addr #2 align 64 {
entry:
  %u = alloca %union.anon.77, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %stat, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup494_crit_edge, label %if.end

entry.cleanup494_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup494

if.end:                                           ; preds = %entry
  %and1 = and i32 %stat, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.next_endpoints_crit_edge, label %if.then5, !prof !455

if.end.next_endpoints_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %u) #12
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %u, align 4, !annotation !662
  %1 = getelementptr inbounds [2 x i32], ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !662
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then6, label %if.then5.if.end51_crit_edge

if.then5.if.end51_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %usb = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %5 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb, align 8
  %usbstat = getelementptr inbounds %struct.net2280_usb_regs, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbstat) #12, !srcloc !447
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !663
  %and9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and16 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %.677 = select i1 %tobool17.not, i32 2, i32 3
  %.sink676 = select i1 %tobool10.not, i32 %.677, i32 5
  %.sink = select i1 %tobool10.not, i32 64, i32 512
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink676, ptr %speed, align 8
  %ep21 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef %ep21, i32 noundef %.sink) #12
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  tail call fastcc void @net2280_led_speed(ptr noundef %dev, i32 noundef %11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %if.end51)) #12
          to label %if.then45 [label %if.end51], !srcloc !446

if.then45:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 8
  %call49 = tail call ptr @usb_speed_string(i32 noundef %15) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug259, ptr noundef %dev46, ptr noundef nonnull @.str.19, ptr noundef %call49) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.then6, %if.then5.if.end51_crit_edge
  %ep52 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
  %irqs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 7
  %16 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irqs, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %irqs, align 4
  %and54 = and i32 %stat, -4098
  %queue = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 8
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not671 = icmp eq ptr %19, %queue
  br i1 %cmp.i.not671, label %if.end51.while.end_crit_edge, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  br label %while.body

if.end51.while.end_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end51.while.body_crit_edge
  %20 = phi ptr [ %26, %while.body.while.body_crit_edge ], [ %19, %if.end51.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %20, i32 -64
  %actual = getelementptr i8, ptr %20, i32 -12
  %21 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual, align 4
  %length = getelementptr i8, ptr %20, i32 -60
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp63 = icmp eq i32 %22, %24
  %cond = select i1 %cmp63, i32 0, i32 -71
  tail call fastcc void @done(ptr noundef %ep52, ptr noundef %add.ptr, i32 noundef %cond)
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %26, %queue
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end51.while.end_crit_edge
  %stopped = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 10
  %27 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load i32, ptr %stopped, align 4
  %bf.clear = and i32 %bf.load, -513
  store i32 %bf.clear, ptr %stopped, align 4
  %protocol_stall = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %28 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load64 = load i16, ptr %protocol_stall, align 8
  %bf.clear65 = and i16 %bf.load64, -16385
  store i16 %bf.clear65, ptr %protocol_stall, align 8
  %quirks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 8
  %29 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks, align 4
  %and67 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %while.end.if.end91_crit_edge

while.end.if.end91_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then69:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev70 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 6
  %31 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev70, align 4
  %quirks71 = getelementptr inbounds %struct.net2280, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %quirks71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirks71, align 4
  %and72 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %. = select i1 %tobool73.not, i32 4128879, i32 4141167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !664
  tail call void @arm_heavy_mb() #12
  %35 = tail call i32 @llvm.bswap.i32(i32 %.)
  %regs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 2
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat, i32 %35) #12, !srcloc !450
  br label %if.end91

if.end91:                                         ; preds = %if.then69, %while.end.if.end91_crit_edge
  %usb94 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %38 = ptrtoint ptr %usb94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb94, align 8
  %setup0123 = getelementptr inbounds %struct.net2280_usb_regs, ptr %39, i32 0, i32 6
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %setup0123) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !665
  %41 = ptrtoint ptr %usb94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %usb94, align 8
  %setup4567 = getelementptr inbounds %struct.net2280_usb_regs, ptr %42, i32 0, i32 7
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %setup4567) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !666
  %44 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %u, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %1, align 4
  %46 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %quirks, align 4
  %and109 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end91.if.end115_crit_edge, label %land.lhs.true

if.end91.if.end115_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

land.lhs.true:                                    ; preds = %if.end91
  %48 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load111 = load i16, ptr %protocol_stall, align 8
  %49 = and i16 %bf.load111, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool113.not = icmp eq i16 %49, 0
  br i1 %tobool113.not, label %if.then114, label %land.lhs.true.if.end115_crit_edge

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then114:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %40, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %43, 1
  tail call fastcc void @defect7374_workaround(ptr noundef %dev, [2 x i32] %.fca.1.insert)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %land.lhs.true.if.end115_crit_edge, %if.end91.if.end115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !667
  tail call void @arm_heavy_mb() #12
  %regs119 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %50 = ptrtoint ptr %regs119 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs119, align 4
  %irqstat0 = getelementptr inbounds %struct.net2280_regs, ptr %51, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %irqstat0, i32 -2147483648) #12, !srcloc !450
  %xor = xor i32 %and54, 128
  %52 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %u, align 4
  %.lobit = and i8 %53, -128
  %54 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load123 = load i32, ptr %stopped, align 4
  %bf.shl = zext i8 %.lobit to i32
  %bf.clear124 = and i32 %bf.load123, -129
  %bf.set125 = or i32 %bf.clear124, %bf.shl
  store i32 %bf.set125, ptr %stopped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool130.not = icmp eq i8 %.lobit, 0
  br i1 %tobool130.not, label %if.end115.do.body134_crit_edge, label %if.then131

if.end115.do.body134_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body134

if.then131:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @stop_out_naking(ptr noundef %ep52)
  br label %do.body134

do.body134:                                       ; preds = %if.then131, %if.end115.do.body134_crit_edge
  %scratch.0 = phi i32 [ 117440512, %if.then131 ], [ 184549376, %if.end115.do.body134_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !668
  tail call void @arm_heavy_mb() #12
  %epregs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 16
  %55 = ptrtoint ptr %epregs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %epregs, align 4
  %ep_irqenb = getelementptr inbounds %struct.net2280_ep_regs, ptr %56, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb, i32 %scratch.0) #12, !srcloc !450
  %57 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load138 = load i32, ptr %stopped, align 4
  %bf.set140 = or i32 %bf.load138, 32
  store i32 %bf.set140, ptr %stopped, align 4
  %58 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %59)
  %cmp143 = icmp eq i32 %59, 5
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %60)
  %.fca.0.load520 = load i32, ptr %u, align 4
  %.fca.0.insert521 = insertvalue [2 x i32] poison, i32 %.fca.0.load520, 0
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.fca.1.load523 = load i32, ptr %1, align 4
  %.fca.1.insert524 = insertvalue [2 x i32] %.fca.0.insert521, i32 %.fca.1.load523, 1
  tail call fastcc void @handle_stat0_irqs_superspeed(ptr noundef %dev, ptr noundef %ep52, [2 x i32] %.fca.1.insert524)
  br label %cleanup437

if.end146:                                        ; preds = %do.body134
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 1
  %62 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bRequest, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.190)
  switch i8 %63, label %if.end146.do.body356_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb207
    i8 3, label %sw.bb294
  ]

if.end146.do.body356_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body356

sw.bb:                                            ; preds = %if.end146
  %65 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %66)
  %cmp150.not = icmp eq i8 %66, -126
  br i1 %cmp150.not, label %if.end153, label %sw.bb.do.body356_crit_edge

sw.bb.do.body356_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body356

if.end153:                                        ; preds = %sw.bb
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %1, align 4
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %call154 = tail call fastcc ptr @get_ep_by_addr(ptr noundef %dev, i16 noundef zeroext %69)
  %tobool155.not = icmp eq ptr %call154, null
  br i1 %tobool155.not, label %if.end153.do.body408_crit_edge, label %lor.lhs.false

if.end153.do.body408_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

lor.lhs.false:                                    ; preds = %if.end153
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 4
  %70 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %wLength, align 2
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %72)
  %cmp157 = icmp ugt i16 %72, 2
  br i1 %cmp157, label %lor.lhs.false.do.body408_crit_edge, label %if.end160

lor.lhs.false.do.body408_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

if.end160:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %regs163 = getelementptr inbounds %struct.net2280_ep, ptr %call154, i32 0, i32 2
  %73 = ptrtoint ptr %regs163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs163, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %74, i32 0, i32 1
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !669
  %76 = shl i32 %75, 8
  %77 = and i32 %76, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !670
  tail call void @arm_heavy_mb() #12
  %78 = ptrtoint ptr %epregs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %epregs, align 4
  %ep_irqenb177 = getelementptr inbounds %struct.net2280_ep_regs, ptr %79, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb177, i32 0) #12, !srcloc !450
  %80 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %wLength, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81)
  %conv179 = zext i16 %82 to i32
  tail call fastcc void @set_fifo_bytecount(ptr noundef %ep52, i32 noundef %conv179)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !671
  tail call void @arm_heavy_mb() #12
  %83 = lshr exact i32 %77, 24
  %84 = ptrtoint ptr %epregs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %epregs, align 4
  %ep_data = getelementptr inbounds %struct.net2280_ep_regs, ptr %85, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_data, i32 %83) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 2
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %87, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 -1946157056) #12, !srcloc !450
  %88 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %88)
  %bf.load.i = load i32, ptr %stopped, align 4
  %bf.set.i = or i32 %bf.load.i, 512
  store i32 %bf.set.i, ptr %stopped, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %cleanup437)) #12
          to label %if.then199 [label %cleanup437], !srcloc !446

if.then199:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  %pdev200 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %89 = ptrtoint ptr %pdev200 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev200, align 8
  %dev201 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %name = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug260, ptr noundef %dev201, ptr noundef nonnull @.str.138, ptr noundef %92, i32 noundef %77) #12
  br label %cleanup437

sw.bb207:                                         ; preds = %if.end146
  %93 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp211.not = icmp eq i8 %94, 2
  br i1 %cmp211.not, label %if.end214, label %sw.bb207.do.body356_crit_edge

sw.bb207.do.body356_crit_edge:                    ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body356

if.end214:                                        ; preds = %sw.bb207
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 2
  %95 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %wValue, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp216.not = icmp eq i16 %96, 0
  br i1 %cmp216.not, label %lor.lhs.false218, label %if.end214.do.body408_crit_edge

if.end214.do.body408_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

lor.lhs.false218:                                 ; preds = %if.end214
  %wLength219 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 4
  %97 = ptrtoint ptr %wLength219 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %wLength219, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp221.not = icmp eq i16 %98, 0
  br i1 %cmp221.not, label %if.end224, label %lor.lhs.false218.do.body408_crit_edge

lor.lhs.false218.do.body408_crit_edge:            ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

if.end224:                                        ; preds = %lor.lhs.false218
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %1, align 4
  %101 = tail call i16 @llvm.bswap.i16(i16 %100)
  %call226 = tail call fastcc ptr @get_ep_by_addr(ptr noundef %dev, i16 noundef zeroext %101)
  %tobool227.not = icmp eq ptr %call226, null
  br i1 %tobool227.not, label %if.end224.do.body408_crit_edge, label %if.end229

if.end224.do.body408_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

if.end229:                                        ; preds = %if.end224
  %wedged = getelementptr inbounds %struct.net2280_ep, ptr %call226, i32 0, i32 10
  %102 = ptrtoint ptr %wedged to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load230 = load i32, ptr %wedged, align 4
  %103 = and i32 %bf.load230, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool233.not = icmp eq i32 %103, 0
  br i1 %tobool233.not, label %do.body258, label %do.body235

do.body235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %cleanup293.thread659)) #12
          to label %if.then249 [label %cleanup293.thread659], !srcloc !446

if.then249:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #14
  %pdev250 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %104 = ptrtoint ptr %pdev250 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev250, align 8
  %dev251 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  %name253 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 1
  %106 = ptrtoint ptr %name253 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name253, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug261, ptr noundef %dev251, ptr noundef nonnull @.str.139, ptr noundef %107) #12
  br label %cleanup293.thread659

do.body258:                                       ; preds = %if.end229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %do.end279)) #12
          to label %if.then272 [label %do.end279], !srcloc !446

if.then272:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #14
  %pdev273 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %108 = ptrtoint ptr %pdev273 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev273, align 8
  %dev274 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %name276 = getelementptr inbounds %struct.usb_ep, ptr %call226, i32 0, i32 1
  %110 = ptrtoint ptr %name276 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name276, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug262, ptr noundef %dev274, ptr noundef nonnull @.str.140, ptr noundef %111) #12
  br label %do.end279

do.end279:                                        ; preds = %if.then272, %do.body258
  tail call fastcc void @clear_halt(ptr noundef nonnull %call226)
  %dev280 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 6
  %112 = ptrtoint ptr %dev280 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev280, align 4
  %quirks281 = getelementptr inbounds %struct.net2280, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %quirks281 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %quirks281, align 4
  %and282 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %do.end279.cleanup293.thread659_crit_edge, label %land.lhs.true284

do.end279.cleanup293.thread659_crit_edge:         ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup293.thread659

land.lhs.true284:                                 ; preds = %do.end279
  %queue285 = getelementptr inbounds %struct.net2280_ep, ptr %call226, i32 0, i32 8
  %116 = ptrtoint ptr %queue285 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %queue285, align 4
  %cmp.i634.not = icmp eq ptr %117, %queue285
  br i1 %cmp.i634.not, label %land.lhs.true284.cleanup293.thread659_crit_edge, label %land.lhs.true288

land.lhs.true284.cleanup293.thread659_crit_edge:  ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup293.thread659

land.lhs.true288:                                 ; preds = %land.lhs.true284
  %td_dma = getelementptr inbounds %struct.net2280_ep, ptr %call226, i32 0, i32 5
  %118 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %td_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool289.not = icmp eq i32 %119, 0
  br i1 %tobool289.not, label %land.lhs.true288.cleanup293.thread659_crit_edge, label %if.then290

land.lhs.true288.cleanup293.thread659_crit_edge:  ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup293.thread659

if.then290:                                       ; preds = %land.lhs.true288
  %120 = ptrtoint ptr %wedged to i32
  call void @__asan_load4_noabort(i32 %120)
  %bf.load.i637 = load i32, ptr %wedged, align 4
  %121 = and i32 %bf.load.i637, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then290.cleanup293.thread659_crit_edge

if.then290.cleanup293.thread659_crit_edge:        ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup293.thread659

if.end.i:                                         ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %117, i32 -64
  tail call fastcc void @start_dma(ptr noundef nonnull %call226, ptr noundef %add.ptr.i) #12
  br label %cleanup293.thread659

cleanup293.thread659:                             ; preds = %if.end.i, %if.then290.cleanup293.thread659_crit_edge, %land.lhs.true288.cleanup293.thread659_crit_edge, %land.lhs.true284.cleanup293.thread659_crit_edge, %do.end279.cleanup293.thread659_crit_edge, %if.then249, %do.body235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %regs.i638 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 2
  %122 = ptrtoint ptr %regs.i638 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i638, align 4
  %ep_rsp.i639 = getelementptr inbounds %struct.net2280_ep_regs, ptr %123, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i639, i32 -1946157056) #12, !srcloc !450
  %124 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %124)
  %bf.load.i641 = load i32, ptr %stopped, align 4
  %bf.set.i642 = or i32 %bf.load.i641, 512
  store i32 %bf.set.i642, ptr %stopped, align 4
  br label %cleanup437

sw.bb294:                                         ; preds = %if.end146
  %125 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp298.not = icmp eq i8 %126, 2
  br i1 %cmp298.not, label %if.end301, label %sw.bb294.do.body356_crit_edge

sw.bb294.do.body356_crit_edge:                    ; preds = %sw.bb294
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body356

if.end301:                                        ; preds = %sw.bb294
  %wValue302 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 2
  %127 = ptrtoint ptr %wValue302 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %wValue302, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %cmp304.not = icmp eq i16 %128, 0
  br i1 %cmp304.not, label %lor.lhs.false306, label %if.end301.do.body408_crit_edge

if.end301.do.body408_crit_edge:                   ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

lor.lhs.false306:                                 ; preds = %if.end301
  %wLength307 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 4
  %129 = ptrtoint ptr %wLength307 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %wLength307, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %cmp309.not = icmp eq i16 %130, 0
  br i1 %cmp309.not, label %if.end312, label %lor.lhs.false306.do.body408_crit_edge

lor.lhs.false306.do.body408_crit_edge:            ; preds = %lor.lhs.false306
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

if.end312:                                        ; preds = %lor.lhs.false306
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %1, align 4
  %133 = tail call i16 @llvm.bswap.i16(i16 %132)
  %call314 = tail call fastcc ptr @get_ep_by_addr(ptr noundef %dev, i16 noundef zeroext %133)
  %tobool315.not = icmp eq ptr %call314, null
  br i1 %tobool315.not, label %if.end312.do.body408_crit_edge, label %if.end317

if.end312.do.body408_crit_edge:                   ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

if.end317:                                        ; preds = %if.end312
  %name319 = getelementptr inbounds %struct.usb_ep, ptr %call314, i32 0, i32 1
  %134 = ptrtoint ptr %name319 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %name319, align 4
  %cmp320 = icmp eq ptr %135, @ep0name
  br i1 %cmp320, label %if.end317.do.body408_crit_edge, label %if.end323

if.end317.do.body408_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

if.end323:                                        ; preds = %if.end317
  tail call fastcc void @set_halt(ptr noundef nonnull %call314)
  %136 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %quirks, align 4
  %and325 = and i32 %137, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.end323.if.end330_crit_edge, label %land.lhs.true327

if.end323.if.end330_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end330

land.lhs.true327:                                 ; preds = %if.end323
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %call314, i32 0, i32 3
  %138 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dma, align 4
  %tobool328.not = icmp eq ptr %139, null
  br i1 %tobool328.not, label %land.lhs.true327.if.end330_crit_edge, label %if.then329

land.lhs.true327.if.end330_crit_edge:             ; preds = %land.lhs.true327
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end330

if.then329:                                       ; preds = %land.lhs.true327
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @abort_dma(ptr noundef nonnull %call314)
  br label %if.end330

if.end330:                                        ; preds = %if.then329, %land.lhs.true327.if.end330_crit_edge, %if.end323.if.end330_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %regs.i643 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 2
  %140 = ptrtoint ptr %regs.i643 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i643, align 4
  %ep_rsp.i644 = getelementptr inbounds %struct.net2280_ep_regs, ptr %141, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i644, i32 -1946157056) #12, !srcloc !450
  %142 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %142)
  %bf.load.i646 = load i32, ptr %stopped, align 4
  %bf.set.i647 = or i32 %bf.load.i646, 512
  store i32 %bf.set.i647, ptr %stopped, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %cleanup437)) #12
          to label %if.then345 [label %cleanup437], !srcloc !446

if.then345:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #14
  %pdev346 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %143 = ptrtoint ptr %pdev346 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pdev346, align 8
  %dev347 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  %name349 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 0, i32 1
  %145 = ptrtoint ptr %name349 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %name349, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug263, ptr noundef %dev347, ptr noundef nonnull @.str.141, ptr noundef %146) #12
  br label %cleanup437

do.body356:                                       ; preds = %sw.bb294.do.body356_crit_edge, %sw.bb207.do.body356_crit_edge, %sw.bb.do.body356_crit_edge, %if.end146.do.body356_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %do.end390)) #12
          to label %if.then370 [label %do.end390], !srcloc !446

if.then370:                                       ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #14
  %pdev371 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %147 = ptrtoint ptr %pdev371 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev371, align 8
  %dev372 = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  %149 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %u, align 4
  %conv374 = zext i8 %150 to i32
  %151 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bRequest, align 1
  %conv376 = zext i8 %152 to i32
  %wValue377 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 2
  %153 = ptrtoint ptr %wValue377 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %wValue377, align 2
  %155 = tail call i16 @llvm.bswap.i16(i16 %154)
  %conv378 = zext i16 %155 to i32
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %1, align 4
  %158 = tail call i16 @llvm.bswap.i16(i16 %157)
  %conv380 = zext i16 %158 to i32
  %wLength381 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %u, i32 0, i32 4
  %159 = ptrtoint ptr %wLength381 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %wLength381, align 2
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  %conv382 = zext i16 %161 to i32
  %cfg = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2, i32 0, i32 1
  %162 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cfg, align 4
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #12, !srcloc !447
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !672
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug264, ptr noundef %dev372, ptr noundef nonnull @.str.142, i32 noundef %conv374, i32 noundef %conv376, i32 noundef %conv378, i32 noundef %conv380, i32 noundef %conv382, i32 noundef %165) #12
  br label %do.end390

do.end390:                                        ; preds = %if.then370, %do.body356
  %166 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %166)
  %bf.load392 = load i32, ptr %stopped, align 4
  %bf.clear393 = and i32 %bf.load392, -33
  store i32 %bf.clear393, ptr %stopped, align 4
  %167 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %167)
  %bf.load395 = load i16, ptr %protocol_stall, align 8
  %168 = and i16 %bf.load395, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %tobool399.not = icmp eq i16 %168, 0
  br i1 %tobool399.not, label %do.end390.cleanup437_crit_edge, label %sw.epilog

do.end390.cleanup437_crit_edge:                   ; preds = %do.end390
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup437

sw.epilog:                                        ; preds = %do.end390
  %lock = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %driver = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %169 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %driver, align 4
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %setup, align 4
  %call402 = call i32 %172(ptr noundef %dev, ptr noundef nonnull %u) #12
  call void @_raw_spin_lock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call402)
  %cmp405 = icmp slt i32 %call402, 0
  br i1 %cmp405, label %sw.epilog.do.body408_crit_edge, label %sw.epilog.cleanup437_crit_edge

sw.epilog.cleanup437_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup437

sw.epilog.do.body408_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body408

do.body408:                                       ; preds = %sw.epilog.do.body408_crit_edge, %if.end317.do.body408_crit_edge, %if.end312.do.body408_crit_edge, %lor.lhs.false306.do.body408_crit_edge, %if.end301.do.body408_crit_edge, %if.end224.do.body408_crit_edge, %lor.lhs.false218.do.body408_crit_edge, %if.end214.do.body408_crit_edge, %lor.lhs.false.do.body408_crit_edge, %if.end153.do.body408_crit_edge
  %tmp.2 = phi i32 [ %call402, %sw.epilog.do.body408_crit_edge ], [ 0, %lor.lhs.false.do.body408_crit_edge ], [ 0, %if.end153.do.body408_crit_edge ], [ 0, %lor.lhs.false218.do.body408_crit_edge ], [ 0, %if.end214.do.body408_crit_edge ], [ 0, %if.end224.do.body408_crit_edge ], [ 0, %lor.lhs.false306.do.body408_crit_edge ], [ 0, %if.end301.do.body408_crit_edge ], [ 0, %if.end312.do.body408_crit_edge ], [ 0, %if.end317.do.body408_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %do.end431)) #12
          to label %if.then422 [label %do.end431], !srcloc !446

if.then422:                                       ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #14
  %pdev423 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %173 = ptrtoint ptr %pdev423 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdev423, align 8
  %dev424 = getelementptr inbounds %struct.pci_dev, ptr %174, i32 0, i32 44
  %175 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %u, align 4
  %conv426 = zext i8 %176 to i32
  %177 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bRequest, align 1
  %conv428 = zext i8 %178 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug265, ptr noundef %dev424, ptr noundef nonnull @.str.143, i32 noundef %conv426, i32 noundef %conv428, i32 noundef %tmp.2) #12
  br label %do.end431

do.end431:                                        ; preds = %if.then422, %do.body408
  %179 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %179)
  %bf.load433 = load i16, ptr %protocol_stall, align 8
  %bf.set435 = or i16 %bf.load433, 16384
  store i16 %bf.set435, ptr %protocol_stall, align 8
  br label %cleanup437

cleanup437:                                       ; preds = %do.end431, %sw.epilog.cleanup437_crit_edge, %do.end390.cleanup437_crit_edge, %if.then345, %if.end330, %cleanup293.thread659, %if.then199, %if.end160, %if.then145
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u) #12
  br label %next_endpoints

next_endpoints:                                   ; preds = %cleanup437, %if.end.next_endpoints_crit_edge
  %stat.addr.0 = phi i32 [ %xor, %cleanup437 ], [ %and, %if.end.next_endpoints_crit_edge ]
  %quirks442 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 8
  %180 = ptrtoint ptr %quirks442 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %quirks442, align 4
  %and443 = and i32 %181, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and443)
  %tobool444.not = icmp eq i32 %and443, 0
  br i1 %tobool444.not, label %next_endpoints.if.else454_crit_edge, label %land.lhs.true445

next_endpoints.if.else454_crit_edge:              ; preds = %next_endpoints
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else454

land.lhs.true445:                                 ; preds = %next_endpoints
  %enhanced_mode = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 6
  %182 = ptrtoint ptr %enhanced_mode to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %enhanced_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool446.not = icmp eq i32 %183, 0
  br i1 %tobool446.not, label %land.lhs.true445.if.else454_crit_edge, label %if.then447

land.lhs.true445.if.else454_crit_edge:            ; preds = %land.lhs.true445
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else454

if.then447:                                       ; preds = %land.lhs.true445
  %and448 = and i32 %stat.addr.0, 1966111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and448)
  %tobool449.not = icmp eq i32 %and448, 0
  br i1 %tobool449.not, label %if.then447.if.end470_crit_edge, label %if.end.i649

if.then447.if.end470_crit_edge:                   ; preds = %if.then447
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end470

if.end.i649:                                      ; preds = %if.then447
  %and.i = and i32 %stat.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i649.if.end.1.i_crit_edge, label %for.inc.i

if.end.i649.if.end.1.i_crit_edge:                 ; preds = %if.end.i649
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

for.inc.i:                                        ; preds = %if.end.i649
  %and4.i = and i32 %stat.addr.0, 1966110
  %arrayidx5.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 0
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.1.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.i.if.end.1.i_crit_edge

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1.i

for.inc.i.usb338x_handle_ep_intr.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.1.i:                                       ; preds = %for.inc.i.if.end.1.i_crit_edge, %if.end.i649.if.end.1.i_crit_edge
  %stat0.addr.117.i = phi i32 [ %and4.i, %for.inc.i.if.end.1.i_crit_edge ], [ %and448, %if.end.i649.if.end.1.i_crit_edge ]
  %and.1.i = and i32 %stat0.addr.117.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool1.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool1.not.1.i, label %if.end.1.i.if.end.2.i_crit_edge, label %for.inc.1.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.2.i

for.inc.1.i:                                      ; preds = %if.end.1.i
  %and4.1.i = and i32 %stat0.addr.117.i, 1835039
  %arrayidx5.1.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1.i)
  %tobool.not.2.i = icmp eq i32 %and4.1.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.1.i.if.end.2.i_crit_edge

for.inc.1.i.if.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.2.i

for.inc.1.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.2.i:                                       ; preds = %for.inc.1.i.if.end.2.i_crit_edge, %if.end.1.i.if.end.2.i_crit_edge
  %stat0.addr.1.120.i = phi i32 [ %and4.1.i, %for.inc.1.i.if.end.2.i_crit_edge ], [ %stat0.addr.117.i, %if.end.1.i.if.end.2.i_crit_edge ]
  %and.2.i = and i32 %stat0.addr.1.120.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool1.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool1.not.2.i, label %if.end.2.i.if.end.3.i_crit_edge, label %for.inc.2.i

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.3.i

for.inc.2.i:                                      ; preds = %if.end.2.i
  %and4.2.i = and i32 %stat0.addr.1.120.i, -5
  %arrayidx5.2.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2.i)
  %tobool.not.3.i = icmp eq i32 %and4.2.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.2.i.if.end.3.i_crit_edge

for.inc.2.i.if.end.3.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.3.i

for.inc.2.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.3.i:                                       ; preds = %for.inc.2.i.if.end.3.i_crit_edge, %if.end.2.i.if.end.3.i_crit_edge
  %stat0.addr.1.223.i = phi i32 [ %and4.2.i, %for.inc.2.i.if.end.3.i_crit_edge ], [ %stat0.addr.1.120.i, %if.end.2.i.if.end.3.i_crit_edge ]
  %and.3.i = and i32 %stat0.addr.1.223.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool1.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool1.not.3.i, label %if.end.3.i.if.end.4.i_crit_edge, label %for.inc.3.i

if.end.3.i.if.end.4.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.4.i

for.inc.3.i:                                      ; preds = %if.end.3.i
  %and4.3.i = and i32 %stat0.addr.1.223.i, -524289
  %arrayidx5.3.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.3.i)
  %tobool.not.4.i = icmp eq i32 %and4.3.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.3.i.if.end.4.i_crit_edge

for.inc.3.i.if.end.4.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.4.i

for.inc.3.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.4.i:                                       ; preds = %for.inc.3.i.if.end.4.i_crit_edge, %if.end.3.i.if.end.4.i_crit_edge
  %stat0.addr.1.326.i = phi i32 [ %and4.3.i, %for.inc.3.i.if.end.4.i_crit_edge ], [ %stat0.addr.1.223.i, %if.end.3.i.if.end.4.i_crit_edge ]
  %and.4.i = and i32 %stat0.addr.1.326.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool1.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool1.not.4.i, label %if.end.4.i.if.end.5.i_crit_edge, label %for.inc.4.i

if.end.4.i.if.end.5.i_crit_edge:                  ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.5.i

for.inc.4.i:                                      ; preds = %if.end.4.i
  %and4.4.i = and i32 %stat0.addr.1.326.i, -17
  %arrayidx5.4.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.4.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.4.i)
  %tobool.not.5.i = icmp eq i32 %and4.4.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.4.i.if.end.5.i_crit_edge

for.inc.4.i.if.end.5.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.5.i

for.inc.4.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.5.i:                                       ; preds = %for.inc.4.i.if.end.5.i_crit_edge, %if.end.4.i.if.end.5.i_crit_edge
  %stat0.addr.1.429.i = phi i32 [ %and4.4.i, %for.inc.4.i.if.end.5.i_crit_edge ], [ %stat0.addr.1.326.i, %if.end.4.i.if.end.5.i_crit_edge ]
  %and.5.i = and i32 %stat0.addr.1.429.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool1.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool1.not.5.i, label %if.end.5.i.if.end.6.i_crit_edge, label %for.inc.5.i

if.end.5.i.if.end.6.i_crit_edge:                  ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.6.i

for.inc.5.i:                                      ; preds = %if.end.5.i
  %and4.5.i = and i32 %stat0.addr.1.429.i, -3
  %arrayidx5.5.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 5
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.5.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.5.i)
  %tobool.not.6.i = icmp eq i32 %and4.5.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.5.i.if.end.6.i_crit_edge

for.inc.5.i.if.end.6.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.6.i

for.inc.5.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.6.i:                                       ; preds = %for.inc.5.i.if.end.6.i_crit_edge, %if.end.5.i.if.end.6.i_crit_edge
  %stat0.addr.1.532.i = phi i32 [ %and4.5.i, %for.inc.5.i.if.end.6.i_crit_edge ], [ %stat0.addr.1.429.i, %if.end.5.i.if.end.6.i_crit_edge ]
  %and.6.i = and i32 %stat0.addr.1.532.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool1.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool1.not.6.i, label %if.end.6.i.if.end.7.i_crit_edge, label %for.inc.6.i

if.end.6.i.if.end.7.i_crit_edge:                  ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.7.i

for.inc.6.i:                                      ; preds = %if.end.6.i
  %and4.6.i = and i32 %stat0.addr.1.532.i, -262145
  %arrayidx5.6.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 6
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.6.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.6.i)
  %tobool.not.7.i = icmp eq i32 %and4.6.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.6.i.if.end.7.i_crit_edge

for.inc.6.i.if.end.7.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.7.i

for.inc.6.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.7.i:                                       ; preds = %for.inc.6.i.if.end.7.i_crit_edge, %if.end.6.i.if.end.7.i_crit_edge
  %stat0.addr.1.635.i = phi i32 [ %and4.6.i, %for.inc.6.i.if.end.7.i_crit_edge ], [ %stat0.addr.1.532.i, %if.end.6.i.if.end.7.i_crit_edge ]
  %and.7.i = and i32 %stat0.addr.1.635.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool1.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool1.not.7.i, label %if.end.7.i.if.end.8.i_crit_edge, label %for.inc.7.i

if.end.7.i.if.end.8.i_crit_edge:                  ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.8.i

for.inc.7.i:                                      ; preds = %if.end.7.i
  %and4.7.i = and i32 %stat0.addr.1.635.i, -9
  %arrayidx5.7.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 7
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.7.i)
  %tobool.not.8.i = icmp eq i32 %and4.7.i, 0
  br i1 %tobool.not.8.i, label %for.inc.7.i.usb338x_handle_ep_intr.exit_crit_edge, label %for.inc.7.i.if.end.8.i_crit_edge

for.inc.7.i.if.end.8.i_crit_edge:                 ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.8.i

for.inc.7.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end.8.i:                                       ; preds = %for.inc.7.i.if.end.8.i_crit_edge, %if.end.7.i.if.end.8.i_crit_edge
  %stat0.addr.1.738.i = phi i32 [ %and4.7.i, %for.inc.7.i.if.end.8.i_crit_edge ], [ %stat0.addr.1.635.i, %if.end.7.i.if.end.8.i_crit_edge ]
  %and.8.i = and i32 %stat0.addr.1.738.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool1.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool1.not.8.i, label %if.end.8.i.usb338x_handle_ep_intr.exit_crit_edge, label %if.end3.8.i

if.end.8.i.usb338x_handle_ep_intr.exit_crit_edge: ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb338x_handle_ep_intr.exit

if.end3.8.i:                                      ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx5.8.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 8
  call fastcc void @handle_ep_small(ptr noundef %arrayidx5.8.i) #12
  br label %usb338x_handle_ep_intr.exit

usb338x_handle_ep_intr.exit:                      ; preds = %if.end3.8.i, %if.end.8.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.7.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.6.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.5.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.4.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.3.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.2.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.1.i.usb338x_handle_ep_intr.exit_crit_edge, %for.inc.i.usb338x_handle_ep_intr.exit_crit_edge
  %and452 = and i32 %stat.addr.0, -1966112
  br label %if.end470

if.else454:                                       ; preds = %land.lhs.true445.if.else454_crit_edge, %next_endpoints.if.else454_crit_edge
  %and455 = and i32 %stat.addr.0, 127
  %and456 = and i32 %stat.addr.0, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and455)
  %tobool457.not672 = icmp eq i32 %and455, 0
  br i1 %tobool457.not672, label %if.else454.if.end470_crit_edge, label %if.else454.for.body_crit_edge

if.else454.for.body_crit_edge:                    ; preds = %if.else454
  br label %for.body

if.else454.if.end470_crit_edge:                   ; preds = %if.else454
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end470

for.body:                                         ; preds = %cleanup466.for.body_crit_edge, %if.else454.for.body_crit_edge
  %num.0674 = phi i32 [ %inc469, %cleanup466.for.body_crit_edge ], [ 0, %if.else454.for.body_crit_edge ]
  %scratch.1673 = phi i32 [ %scratch.2, %cleanup466.for.body_crit_edge ], [ %and455, %if.else454.for.body_crit_edge ]
  %shl = shl nuw i32 1, %num.0674
  %and458 = and i32 %shl, %scratch.1673
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and458)
  %cmp459 = icmp eq i32 %and458, 0
  br i1 %cmp459, label %for.body.cleanup466_crit_edge, label %if.end462

for.body.cleanup466_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup466

if.end462:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %xor463 = xor i32 %shl, %scratch.1673
  %arrayidx465 = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 %num.0674
  call fastcc void @handle_ep_small(ptr noundef %arrayidx465)
  br label %cleanup466

cleanup466:                                       ; preds = %if.end462, %for.body.cleanup466_crit_edge
  %scratch.2 = phi i32 [ %xor463, %if.end462 ], [ %scratch.1673, %for.body.cleanup466_crit_edge ]
  %inc469 = add i32 %num.0674, 1
  %tobool457.not = icmp eq i32 %scratch.2, 0
  br i1 %tobool457.not, label %cleanup466.if.end470_crit_edge, label %cleanup466.for.body_crit_edge

cleanup466.for.body_crit_edge:                    ; preds = %cleanup466
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup466.if.end470_crit_edge:                   ; preds = %cleanup466
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end470

if.end470:                                        ; preds = %cleanup466.if.end470_crit_edge, %if.else454.if.end470_crit_edge, %usb338x_handle_ep_intr.exit, %if.then447.if.end470_crit_edge
  %stat.addr.2 = phi i32 [ %and452, %usb338x_handle_ep_intr.exit ], [ %stat.addr.0, %if.then447.if.end470_crit_edge ], [ %and456, %if.else454.if.end470_crit_edge ], [ %and456, %cleanup466.if.end470_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.addr.2)
  %tobool471.not = icmp eq i32 %stat.addr.2, 0
  br i1 %tobool471.not, label %if.end470.cleanup494_crit_edge, label %do.body473

if.end470.cleanup494_crit_edge:                   ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup494

do.body473:                                       ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs, %cleanup494)) #12
          to label %if.then487 [label %cleanup494], !srcloc !446

if.then487:                                       ; preds = %do.body473
  call void @__sanitizer_cov_trace_pc() #14
  %pdev488 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %184 = ptrtoint ptr %pdev488 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdev488, align 8
  %dev489 = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs.__UNIQUE_ID_ddebug266, ptr noundef %dev489, ptr noundef nonnull @.str.144, i32 noundef %stat.addr.2) #12
  br label %cleanup494

cleanup494:                                       ; preds = %if.then487, %do.body473, %if.end470.cleanup494_crit_edge, %entry.cleanup494_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net2280_led_speed(ptr nocapture noundef readonly %dev, i32 noundef %speed) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %regs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %gpioctl = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %gpioctl) #12, !srcloc !447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !673
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %speed, label %sw.default [
    i32 5, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %3, 3
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %3, -4
  %or3 = or i32 %and, 2
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and5 = and i32 %3, -4
  %or6 = or i32 %and5, 1
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and7 = and i32 %3, -4
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %val.0 = phi i32 [ %and7, %sw.default ], [ %or6, %sw.bb4 ], [ %or3, %sw.bb2 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !674
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %gpioctl9 = getelementptr inbounds %struct.net2280_regs, ptr %7, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %gpioctl9, i32 %5) #12, !srcloc !450
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @defect7374_workaround(ptr nocapture noundef %dev, [2 x i32] %r.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %idxaddr.i = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i, i32 184549376) #12, !srcloc !450
  %idxdata.i = getelementptr inbounds %struct.net2280_regs, ptr %1, i32 0, i32 13
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %idxdata.i) #12, !srcloc !447
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  %and = and i32 %3, -268435456
  %and1 = and i32 %3, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and)
  %cmp = icmp ne i32 %and, 268435456
  %r.coerce.fca.0.extract = extractvalue [2 x i32] %r.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.coerce.fca.0.extract)
  %tobool.not = icmp sgt i32 %r.coerce.fca.0.extract, -1
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb, align 8
  %usbstat = getelementptr inbounds %struct.net2280_usb_regs, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbstat) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !675
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.then7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %plregs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 18
  br label %for.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %and1, 536870912
  %bug7734_patched = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %bug7734_patched to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %bug7734_patched, align 8
  %bf.set = or i16 %bf.load, 8
  store i16 %bf.set, ptr %bug7734_patched, align 8
  br label %restore_data_eps

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.cond.preheader
  %ack_wait_timeout.076 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end28.for.body_crit_edge ]
  %9 = ptrtoint ptr %plregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plregs, align 4
  %pl_ep_status_1 = getelementptr inbounds %struct.usb338x_pl_regs, ptr %10, i32 0, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_status_1) #12, !srcloc !447
  %12 = shl i32 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !676
  %and16 = and i32 %12, 16711680
  %13 = add nsw i32 %and16, -1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 327681, i32 %13)
  %14 = icmp ult i32 %13, 327681
  br i1 %14, label %do.end40, label %if.end28

if.end28:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #12
  %inc = add nuw nsw i32 %ack_wait_timeout.076, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.end, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %phi.bo.le = lshr exact i32 %and16, 16
  %pdev = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.145) #16
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.148, i32 noundef %phi.bo.le) #16
  br label %restore_data_eps

do.end40:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %or23 = or i32 %and1, 805306368
  %bug7734_patched24 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %bug7734_patched24 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load25 = load i16, ptr %bug7734_patched24, align 8
  %bf.set27 = or i16 %bf.load25, 8
  store i16 %bf.set27, ptr %bug7734_patched24, align 8
  %pdev41 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %21 = ptrtoint ptr %pdev41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev41, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %mul = mul nuw nsw i32 %ack_wait_timeout.076, 10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull @.str.151, i32 noundef %mul) #16
  br label %restore_data_eps

restore_data_eps:                                 ; preds = %do.end40, %do.end, %if.then7
  %scratch.1 = phi i32 [ %and1, %do.end ], [ %or23, %do.end40 ], [ %or, %if.then7 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !677
  tail call void @arm_heavy_mb() #12
  %cfg.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 16777216) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !677
  tail call void @arm_heavy_mb() #12
  %cfg.1.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 2, i32 1
  %25 = ptrtoint ptr %cfg.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 33554432) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !677
  tail call void @arm_heavy_mb() #12
  %cfg.2.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 3, i32 1
  %27 = ptrtoint ptr %cfg.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.2.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 50331648) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !677
  tail call void @arm_heavy_mb() #12
  %cfg.3.i = getelementptr %struct.net2280, ptr %dev, i32 0, i32 2, i32 4, i32 1
  %29 = ptrtoint ptr %cfg.3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.3.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 67108864) #12, !srcloc !450
  %dep.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !678
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dep.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !678
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dep.i, align 8
  %arrayidx8.1.i = getelementptr %struct.net2280_dep_regs, ptr %34, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.1.i, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !678
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dep.i, align 8
  %arrayidx8.2.i = getelementptr %struct.net2280_dep_regs, ptr %36, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.2.i, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !678
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dep.i, align 8
  %arrayidx8.3.i = getelementptr %struct.net2280_dep_regs, ptr %38, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.3.i, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !678
  tail call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dep.i, align 8
  %arrayidx8.4.i = getelementptr %struct.net2280_dep_regs, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.4.i, i32 0) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !678
  tail call void @arm_heavy_mb() #12
  %41 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dep.i, align 8
  %arrayidx8.5.i = getelementptr %struct.net2280_dep_regs, ptr %42, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.5.i, i32 0) #12, !srcloc !450
  %plregs.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 18
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.inc65.i.for.body15.i_crit_edge, %restore_data_eps
  %ep_sel.096.i = phi i8 [ 0, %restore_data_eps ], [ %inc66.i, %for.inc65.i.for.body15.i_crit_edge ]
  %conv.i = zext i8 %ep_sel.096.i to i32
  %43 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %plregs.i, align 4
  %pl_ep_ctrl.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %44, i32 0, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_ctrl.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !679
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !680
  tail call void @arm_heavy_mb() #12
  %46 = and i32 %45, -520093697
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %or.i = or i32 %47, %conv.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %49 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %plregs.i, align 4
  %pl_ep_ctrl22.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %50, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl22.i, i32 %48) #12, !srcloc !450
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ep_sel.096.i)
  %cmp24.i = icmp ult i8 %ep_sel.096.i, 2
  br i1 %cmp24.i, label %for.body15.i.for.inc65.i_crit_edge, label %lor.lhs.false.i

for.body15.i.for.inc65.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc65.i

lor.lhs.false.i:                                  ; preds = %for.body15.i
  %ep_sel.0.fr.i = freeze i8 %ep_sel.096.i
  %51 = add nsw i8 %ep_sel.0.fr.i, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %52 = icmp ult i8 %51, 4
  br i1 %52, label %lor.lhs.false.i.for.inc65.i_crit_edge, label %switch.early.test.i

lor.lhs.false.i.for.inc65.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc65.i

switch.early.test.i:                              ; preds = %lor.lhs.false.i
  %trunc.i = trunc i8 %ep_sel.0.fr.i to i7
  %53 = zext i7 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.192)
  switch i7 %trunc.i, label %if.end.i [
    i7 20, label %switch.early.test.i.for.inc65.i_crit_edge
    i7 18, label %switch.early.test.i.for.inc65.i_crit_edge87
  ]

switch.early.test.i.for.inc65.i_crit_edge87:      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc65.i

switch.early.test.i.for.inc65.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc65.i

if.end.i:                                         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %plregs.i, align 4
  %pl_ep_cfg_4.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %55, i32 0, i32 12
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_cfg_4.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !681
  %57 = and i32 %56, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !682
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %plregs.i, align 4
  %pl_ep_cfg_451.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %59, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_cfg_451.i, i32 %57) #12, !srcloc !450
  %60 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %plregs.i, align 4
  %pl_ep_ctrl55.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pl_ep_ctrl55.i) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !683
  %63 = or i32 %62, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !684
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %plregs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %plregs.i, align 4
  %pl_ep_ctrl64.i = getelementptr inbounds %struct.usb338x_pl_regs, ptr %65, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pl_ep_ctrl64.i, i32 %63) #12, !srcloc !450
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %if.end.i, %switch.early.test.i.for.inc65.i_crit_edge, %switch.early.test.i.for.inc65.i_crit_edge87, %lor.lhs.false.i.for.inc65.i_crit_edge, %for.body15.i.for.inc65.i_crit_edge
  %ep_sel.097.i = phi i8 [ %ep_sel.0.fr.i, %switch.early.test.i.for.inc65.i_crit_edge ], [ %ep_sel.0.fr.i, %switch.early.test.i.for.inc65.i_crit_edge87 ], [ %ep_sel.0.fr.i, %lor.lhs.false.i.for.inc65.i_crit_edge ], [ %ep_sel.096.i, %for.body15.i.for.inc65.i_crit_edge ], [ %ep_sel.0.fr.i, %if.end.i ]
  %inc66.i = add nuw nsw i8 %ep_sel.097.i, 1
  %cmp13.i = icmp ult i8 %ep_sel.097.i, 21
  br i1 %cmp13.i, label %for.inc65.i.for.body15.i_crit_edge, label %defect7374_disable_data_eps.exit

for.inc65.i.for.body15.i_crit_edge:               ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i

defect7374_disable_data_eps.exit:                 ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !551
  tail call void @arm_heavy_mb() #12
  %idxaddr.i67 = getelementptr inbounds %struct.net2280_regs, ptr %67, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxaddr.i67, i32 184549376) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !552
  tail call void @arm_heavy_mb() #12
  %68 = tail call i32 @llvm.bswap.i32(i32 %scratch.1) #12
  %idxdata.i68 = getelementptr inbounds %struct.net2280_regs, ptr %67, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %idxdata.i68, i32 %68) #12, !srcloc !450
  br label %cleanup

cleanup:                                          ; preds = %defect7374_disable_data_eps.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_stat0_irqs_superspeed(ptr noundef %dev, ptr noundef %ep, [2 x i32] %r.coerce) unnamed_addr #2 align 64 {
entry:
  %r = alloca %struct.usb_ctrlrequest, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %r.coerce.fca.0.extract = extractvalue [2 x i32] %r.coerce, 0
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %r.coerce.fca.0.extract, ptr %r, align 4
  %r.coerce.fca.1.extract = extractvalue [2 x i32] %r.coerce, 1
  %r.coerce.fca.1.gep = getelementptr inbounds [2 x i32], ptr %r, i32 0, i32 1
  %1 = ptrtoint ptr %r.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %r.coerce.fca.1.extract, ptr %r.coerce.fca.1.gep, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 1
  %2 = lshr i32 %r.coerce.fca.0.extract, 16
  %3 = trunc i32 %2 to i8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.193)
  switch i8 %3, label %entry.do.body310_crit_edge [
    i8 9, label %sw.bb
    i8 0, label %sw.bb1
    i8 1, label %sw.bb60
    i8 3, label %sw.bb187
  ]

entry.do.body310_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body310

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %5 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %wValue, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %addressed_state = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %addressed_state to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %addressed_state, align 8
  %bf.shl = select i1 %tobool.not, i16 32, i16 0
  %bf.clear = and i16 %bf.load, -33
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %addressed_state, align 8
  br label %do.body310

sw.bb1:                                           ; preds = %entry
  %8 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %r, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.194)
  switch i8 %9, label %sw.bb1.do.body310_crit_edge [
    i8 -128, label %sw.bb3
    i8 -126, label %sw.bb39
  ]

sw.bb1.do.body310_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body310

sw.bb3:                                           ; preds = %sw.bb1
  %wakeup_enable = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %wakeup_enable to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load4 = load i16, ptr %wakeup_enable, align 8
  %12 = lshr i16 %bf.load4, 5
  %13 = and i16 %12, 2
  %is_selfpowered = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 17
  %14 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load8 = load i32, ptr %is_selfpowered, align 4
  %15 = lshr i32 %bf.load8, 18
  %16 = trunc i32 %15 to i16
  %17 = and i16 %16, 1
  %18 = lshr i16 %bf.load4, 7
  %19 = and i16 %18, 4
  %20 = and i16 %12, 8
  %21 = lshr i16 %bf.load4, 3
  %22 = and i16 %21, 16
  %23 = or i16 %19, %20
  %or23473 = or i16 %23, %22
  %or29474 = or i16 %or23473, %13
  %or31475 = or i16 %or29474, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !685
  tail call void @arm_heavy_mb() #12
  %epregs = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 16
  %24 = ptrtoint ptr %epregs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %epregs, align 4
  %ep_irqenb = getelementptr inbounds %struct.net2280_ep_regs, ptr %25, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb, i32 0) #12, !srcloc !450
  %dev.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %pdev.i = getelementptr inbounds %struct.net2280, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6092, i16 %31)
  %cmp.i = icmp eq i16 %31, 6092
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !628
  tail call void @arm_heavy_mb() #12
  %regs.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 2) #12, !srcloc !629
  br label %set_fifo_bytecount.exit

if.else.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %cfg.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 1
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !630
  %37 = and i32 %36, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !631
  tail call void @arm_heavy_mb() #12
  %38 = or i32 %37, 512
  %39 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #12, !srcloc !450
  br label %set_fifo_bytecount.exit

set_fifo_bytecount.exit:                          ; preds = %if.else.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !686
  tail call void @arm_heavy_mb() #12
  %conv36 = zext i16 %or31475 to i32
  %41 = shl nuw nsw i32 %conv36, 24
  %42 = ptrtoint ptr %epregs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %epregs, align 4
  %ep_data = getelementptr inbounds %struct.net2280_ep_regs, ptr %43, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_data, i32 %41) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !687
  tail call void @arm_heavy_mb() #12
  %regs.i482 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %44 = ptrtoint ptr %regs.i482 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i482, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %45, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 134217728) #12, !srcloc !450
  %stopped.i = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %46 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i = load i32, ptr %stopped.i, align 4
  %bf.set.i = and i32 %bf.load.i, -545
  %bf.clear2.i = or i32 %bf.set.i, 512
  store i32 %bf.clear2.i, ptr %stopped.i, align 4
  br label %next_endpoints3

sw.bb39:                                          ; preds = %sw.bb1
  %47 = ptrtoint ptr %r.coerce.fca.1.gep to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %r.coerce.fca.1.gep, align 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %conv.i = zext i16 %49 to i32
  %and.i = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i483 = icmp eq i32 %and.i, 0
  br i1 %cmp.i483, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #14
  %ep2.i = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
  br label %get_ep_by_addr.exit

if.end.i:                                         ; preds = %sw.bb39
  %ep_list.i = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %50 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn48.i = load ptr, ptr %ep_list.i, align 4
  %cmp7.not49.i = icmp eq ptr %.pn48.i, %ep_list.i
  br i1 %cmp7.not49.i, label %if.end.i.next_endpoints3_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.next_endpoints3_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn50.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn48.i, %if.end.i.for.body.i_crit_edge ]
  %desc.i = getelementptr i8, ptr %.pn50.i, i32 68
  %51 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc.i, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end10.i:                                       ; preds = %for.body.i
  %bEndpointAddress12.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %bEndpointAddress12.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bEndpointAddress12.i, align 1
  %conv14.i = zext i8 %54 to i32
  %xor.i = xor i32 %conv14.i, %conv.i
  %and15.i = and i32 %xor.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %and22.i = and i32 %conv14.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and.i, %and22.i
  %or.cond.i = select i1 %tobool16.not.i, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %cleanup33.loopexit.split.loop.exit46.i, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %55 = ptrtoint ptr %.pn50.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn50.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %ep_list.i
  br i1 %cmp7.not.i, label %for.inc.i.next_endpoints3_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.next_endpoints3_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

cleanup33.loopexit.split.loop.exit46.i:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %ep.0.le.i = getelementptr i8, ptr %.pn50.i, i32 -12
  br label %get_ep_by_addr.exit

get_ep_by_addr.exit:                              ; preds = %cleanup33.loopexit.split.loop.exit46.i, %if.then.i
  %retval.2.i = phi ptr [ %ep2.i, %if.then.i ], [ %ep.0.le.i, %cleanup33.loopexit.split.loop.exit46.i ]
  %tobool40.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool40.not, label %get_ep_by_addr.exit.next_endpoints3_crit_edge, label %if.end42

get_ep_by_addr.exit.next_endpoints3_crit_edge:    ; preds = %get_ep_by_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

if.end42:                                         ; preds = %get_ep_by_addr.exit
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %retval.2.i, i32 0, i32 2
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %57, i32 0, i32 1
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !688
  %conv46 = and i32 %58, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !689
  tail call void @arm_heavy_mb() #12
  %epregs50 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 16
  %59 = ptrtoint ptr %epregs50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %epregs50, align 4
  %ep_irqenb52 = getelementptr inbounds %struct.net2280_ep_regs, ptr %60, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_irqenb52, i32 0) #12, !srcloc !450
  %dev.i484 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %61 = ptrtoint ptr %dev.i484 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i484, align 4
  %pdev.i485 = getelementptr inbounds %struct.net2280, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %pdev.i485 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev.i485, align 8
  %vendor.i486 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %vendor.i486 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vendor.i486, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6092, i16 %66)
  %cmp.i487 = icmp eq i16 %66, 6092
  br i1 %cmp.i487, label %do.body.i490, label %if.else.i493

do.body.i490:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !628
  tail call void @arm_heavy_mb() #12
  %regs.i488 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %67 = ptrtoint ptr %regs.i488 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i488, align 4
  %add.ptr.i489 = getelementptr i8, ptr %68, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i489, i8 2) #12, !srcloc !629
  br label %set_fifo_bytecount.exit495

if.else.i493:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %cfg.i491 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 1
  %69 = ptrtoint ptr %cfg.i491 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg.i491, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !630
  %72 = and i32 %71, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !631
  tail call void @arm_heavy_mb() #12
  %73 = or i32 %72, 512
  %74 = ptrtoint ptr %cfg.i491 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i491, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #12, !srcloc !450
  br label %set_fifo_bytecount.exit495

set_fifo_bytecount.exit495:                       ; preds = %if.else.i493, %do.body.i490
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !690
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %epregs50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %epregs50, align 4
  %ep_data59 = getelementptr inbounds %struct.net2280_ep_regs, ptr %77, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_data59, i32 %conv46) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !687
  tail call void @arm_heavy_mb() #12
  %regs.i496 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %78 = ptrtoint ptr %regs.i496 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i496, align 4
  %ep_rsp.i497 = getelementptr inbounds %struct.net2280_ep_regs, ptr %79, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i497, i32 134217728) #12, !srcloc !450
  %stopped.i498 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %80 = ptrtoint ptr %stopped.i498 to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load.i499 = load i32, ptr %stopped.i498, align 4
  %bf.set.i500 = and i32 %bf.load.i499, -545
  %bf.clear2.i501 = or i32 %bf.set.i500, 512
  store i32 %bf.clear2.i501, ptr %stopped.i498, align 4
  br label %next_endpoints3

sw.bb60:                                          ; preds = %entry
  %81 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %r, align 4
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %82, label %sw.bb60.do.body310_crit_edge [
    i8 0, label %sw.bb63
    i8 2, label %sw.bb148
  ]

sw.bb60.do.body310_crit_edge:                     ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body310

sw.bb63:                                          ; preds = %sw.bb60
  %addressed_state64 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %84 = ptrtoint ptr %addressed_state64 to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load65 = load i16, ptr %addressed_state64, align 8
  %85 = and i16 %bf.load65, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool69.not = icmp eq i16 %85, 0
  br i1 %tobool69.not, label %if.then70, label %sw.bb63.if.end127_crit_edge

sw.bb63.if.end127_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

if.then70:                                        ; preds = %sw.bb63
  %wValue71 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %86 = ptrtoint ptr %wValue71 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %wValue71, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87)
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.196)
  switch i16 %88, label %if.then70.if.end127_crit_edge [
    i16 48, label %sw.bb73
    i16 49, label %sw.bb89
    i16 50, label %sw.bb107
  ]

if.then70.if.end127_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end127

sw.bb73:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear76 = and i16 %bf.load65, -513
  %90 = ptrtoint ptr %addressed_state64 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %bf.clear76, ptr %addressed_state64, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !691
  tail call void @arm_heavy_mb() #12
  %usb_ext = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 12
  %91 = ptrtoint ptr %usb_ext to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %usb_ext, align 4
  %usbctl2 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %92, i32 0, i32 5
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl2) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !692
  %94 = and i32 %93, -536870913
  %95 = ptrtoint ptr %usb_ext to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usb_ext, align 4
  %usbctl288 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %96, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl288, i32 %94) #12, !srcloc !450
  tail call fastcc void @allow_status_338x(ptr noundef %ep)
  br label %next_endpoints3

sw.bb89:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear92 = and i16 %bf.load65, -257
  %97 = ptrtoint ptr %addressed_state64 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %bf.clear92, ptr %addressed_state64, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !693
  tail call void @arm_heavy_mb() #12
  %usb_ext99 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 12
  %98 = ptrtoint ptr %usb_ext99 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usb_ext99, align 4
  %usbctl2100 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %99, i32 0, i32 5
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl2100) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !694
  %101 = and i32 %100, -1073741825
  %102 = ptrtoint ptr %usb_ext99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %usb_ext99, align 4
  %usbctl2106 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %103, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl2106, i32 %101) #12, !srcloc !450
  tail call fastcc void @allow_status_338x(ptr noundef %ep)
  br label %next_endpoints3

sw.bb107:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear110 = and i16 %bf.load65, -129
  %104 = ptrtoint ptr %addressed_state64 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %bf.clear110, ptr %addressed_state64, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !695
  tail call void @arm_heavy_mb() #12
  %usb_ext117 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 12
  %105 = ptrtoint ptr %usb_ext117 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %usb_ext117, align 4
  %usbctl2118 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %106, i32 0, i32 5
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl2118) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !696
  %108 = and i32 %107, 2147483647
  %109 = ptrtoint ptr %usb_ext117 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %usb_ext117, align 4
  %usbctl2124 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %110, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl2124, i32 %108) #12, !srcloc !450
  tail call fastcc void @allow_status_338x(ptr noundef %ep)
  br label %next_endpoints3

if.end127:                                        ; preds = %if.then70.if.end127_crit_edge, %sw.bb63.if.end127_crit_edge
  %wValue128 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %111 = ptrtoint ptr %wValue128 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %wValue128, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %112)
  %cmp = icmp eq i16 %112, 256
  br i1 %cmp, label %if.then131, label %if.end127.do.body310_crit_edge

if.end127.do.body310_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body310

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear134 = and i16 %bf.load65, -65
  %113 = ptrtoint ptr %addressed_state64 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %bf.clear134, ptr %addressed_state64, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !697
  tail call void @arm_heavy_mb() #12
  %usb = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %114 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %115, i32 0, i32 3
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !698
  %117 = and i32 %116, -33554433
  %118 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %usb, align 8
  %usbctl146 = getelementptr inbounds %struct.net2280_usb_regs, ptr %119, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl146, i32 %117) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !687
  tail call void @arm_heavy_mb() #12
  %regs.i502 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %120 = ptrtoint ptr %regs.i502 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i502, align 4
  %ep_rsp.i503 = getelementptr inbounds %struct.net2280_ep_regs, ptr %121, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i503, i32 134217728) #12, !srcloc !450
  %stopped.i504 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %122 = ptrtoint ptr %stopped.i504 to i32
  call void @__asan_load4_noabort(i32 %122)
  %bf.load.i505 = load i32, ptr %stopped.i504, align 4
  %bf.set.i506 = and i32 %bf.load.i505, -545
  %bf.clear2.i507 = or i32 %bf.set.i506, 512
  store i32 %bf.clear2.i507, ptr %stopped.i504, align 4
  br label %next_endpoints3

sw.bb148:                                         ; preds = %sw.bb60
  %123 = ptrtoint ptr %r.coerce.fca.1.gep to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %r.coerce.fca.1.gep, align 4
  %125 = tail call i16 @llvm.bswap.i16(i16 %124)
  %conv.i508 = zext i16 %125 to i32
  %and.i509 = and i32 %conv.i508, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i509)
  %cmp.i510 = icmp eq i32 %and.i509, 0
  br i1 %cmp.i510, label %if.then.i512, label %if.end.i516

if.then.i512:                                     ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #14
  %ep2.i511 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
  br label %get_ep_by_addr.exit536

if.end.i516:                                      ; preds = %sw.bb148
  %ep_list.i513 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %126 = ptrtoint ptr %ep_list.i513 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn48.i514 = load ptr, ptr %ep_list.i513, align 4
  %cmp7.not49.i515 = icmp eq ptr %.pn48.i514, %ep_list.i513
  br i1 %cmp7.not49.i515, label %if.end.i516.next_endpoints3_crit_edge, label %if.end.i516.for.body.i520_crit_edge

if.end.i516.for.body.i520_crit_edge:              ; preds = %if.end.i516
  br label %for.body.i520

if.end.i516.next_endpoints3_crit_edge:            ; preds = %if.end.i516
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

for.body.i520:                                    ; preds = %for.inc.i532.for.body.i520_crit_edge, %if.end.i516.for.body.i520_crit_edge
  %.pn50.i517 = phi ptr [ %.pn.i530, %for.inc.i532.for.body.i520_crit_edge ], [ %.pn48.i514, %if.end.i516.for.body.i520_crit_edge ]
  %desc.i518 = getelementptr i8, ptr %.pn50.i517, i32 68
  %127 = ptrtoint ptr %desc.i518 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %desc.i518, align 4
  %tobool.not.i519 = icmp eq ptr %128, null
  br i1 %tobool.not.i519, label %for.body.i520.for.inc.i532_crit_edge, label %if.end10.i529

for.body.i520.for.inc.i532_crit_edge:             ; preds = %for.body.i520
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i532

if.end10.i529:                                    ; preds = %for.body.i520
  %bEndpointAddress12.i521 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %bEndpointAddress12.i521 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bEndpointAddress12.i521, align 1
  %conv14.i522 = zext i8 %130 to i32
  %xor.i523 = xor i32 %conv14.i522, %conv.i508
  %and15.i524 = and i32 %xor.i523, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i524)
  %tobool16.not.i525 = icmp eq i32 %and15.i524, 0
  %and22.i526 = and i32 %conv14.i522, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i509, i32 %and22.i526)
  %cmp23.i527 = icmp eq i32 %and.i509, %and22.i526
  %or.cond.i528 = select i1 %tobool16.not.i525, i1 %cmp23.i527, i1 false
  br i1 %or.cond.i528, label %cleanup33.loopexit.split.loop.exit46.i534, label %if.end10.i529.for.inc.i532_crit_edge

if.end10.i529.for.inc.i532_crit_edge:             ; preds = %if.end10.i529
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i532

for.inc.i532:                                     ; preds = %if.end10.i529.for.inc.i532_crit_edge, %for.body.i520.for.inc.i532_crit_edge
  %131 = ptrtoint ptr %.pn50.i517 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pn.i530 = load ptr, ptr %.pn50.i517, align 4
  %cmp7.not.i531 = icmp eq ptr %.pn.i530, %ep_list.i513
  br i1 %cmp7.not.i531, label %for.inc.i532.next_endpoints3_crit_edge, label %for.inc.i532.for.body.i520_crit_edge

for.inc.i532.for.body.i520_crit_edge:             ; preds = %for.inc.i532
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i520

for.inc.i532.next_endpoints3_crit_edge:           ; preds = %for.inc.i532
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

cleanup33.loopexit.split.loop.exit46.i534:        ; preds = %if.end10.i529
  call void @__sanitizer_cov_trace_pc() #14
  %ep.0.le.i533 = getelementptr i8, ptr %.pn50.i517, i32 -12
  br label %get_ep_by_addr.exit536

get_ep_by_addr.exit536:                           ; preds = %cleanup33.loopexit.split.loop.exit46.i534, %if.then.i512
  %retval.2.i535 = phi ptr [ %ep2.i511, %if.then.i512 ], [ %ep.0.le.i533, %cleanup33.loopexit.split.loop.exit46.i534 ]
  %tobool151.not = icmp eq ptr %retval.2.i535, null
  br i1 %tobool151.not, label %get_ep_by_addr.exit536.next_endpoints3_crit_edge, label %if.end153

get_ep_by_addr.exit536.next_endpoints3_crit_edge: ; preds = %get_ep_by_addr.exit536
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

if.end153:                                        ; preds = %get_ep_by_addr.exit536
  %wValue154 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %132 = ptrtoint ptr %wValue154 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %wValue154, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp156.not = icmp eq i16 %133, 0
  br i1 %cmp156.not, label %do.body160, label %if.end153.next_endpoints3_crit_edge

if.end153.next_endpoints3_crit_edge:              ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

do.body160:                                       ; preds = %if.end153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs_superspeed, %do.end176)) #12
          to label %if.then171 [label %do.end176], !srcloc !446

if.then171:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %134 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pdev, align 8
  %dev172 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %retval.2.i535, i32 0, i32 1
  %136 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug256, ptr noundef %dev172, ptr noundef nonnull @.str.140, ptr noundef %137) #12
  br label %do.end176

do.end176:                                        ; preds = %if.then171, %do.body160
  tail call fastcc void @ep_clear_seqnum(ptr noundef nonnull %retval.2.i535)
  tail call fastcc void @clear_halt(ptr noundef nonnull %retval.2.i535)
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %retval.2.i535, i32 0, i32 8
  %138 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile ptr, ptr %queue, align 4
  %cmp.i537.not = icmp eq ptr %139, %queue
  br i1 %cmp.i537.not, label %do.end176.if.end181_crit_edge, label %land.lhs.true

do.end176.if.end181_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

land.lhs.true:                                    ; preds = %do.end176
  %td_dma = getelementptr inbounds %struct.net2280_ep, ptr %retval.2.i535, i32 0, i32 5
  %140 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %td_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool179.not = icmp eq i32 %141, 0
  br i1 %tobool179.not, label %land.lhs.true.if.end181_crit_edge, label %if.then180

land.lhs.true.if.end181_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

if.then180:                                       ; preds = %land.lhs.true
  %stopped.i539 = getelementptr inbounds %struct.net2280_ep, ptr %retval.2.i535, i32 0, i32 10
  %142 = ptrtoint ptr %stopped.i539 to i32
  call void @__asan_load4_noabort(i32 %142)
  %bf.load.i540 = load i32, ptr %stopped.i539, align 4
  %143 = and i32 %bf.load.i540, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i541 = icmp eq i32 %143, 0
  br i1 %tobool.not.i541, label %if.end.i543, label %if.then180.if.end181_crit_edge

if.then180.if.end181_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

if.end.i543:                                      ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i542 = getelementptr i8, ptr %139, i32 -64
  tail call fastcc void @start_dma(ptr noundef nonnull %retval.2.i535, ptr noundef %add.ptr.i542) #12
  br label %if.end181

if.end181:                                        ; preds = %if.end.i543, %if.then180.if.end181_crit_edge, %land.lhs.true.if.end181_crit_edge, %do.end176.if.end181_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %regs.i544 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %144 = ptrtoint ptr %regs.i544 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i544, align 4
  %ep_rsp.i545 = getelementptr inbounds %struct.net2280_ep_regs, ptr %145, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i545, i32 -1946157056) #12, !srcloc !450
  %stopped.i546 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %146 = ptrtoint ptr %stopped.i546 to i32
  call void @__asan_load4_noabort(i32 %146)
  %bf.load.i547 = load i32, ptr %stopped.i546, align 4
  %bf.set.i548 = or i32 %bf.load.i547, 512
  store i32 %bf.set.i548, ptr %stopped.i546, align 4
  br label %next_endpoints3

sw.bb187:                                         ; preds = %entry
  %147 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %r, align 4
  %149 = zext i8 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.197)
  switch i8 %148, label %sw.bb187.do.body310_crit_edge [
    i8 0, label %sw.bb190
    i8 2, label %sw.bb280
  ]

sw.bb187.do.body310_crit_edge:                    ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body310

sw.bb190:                                         ; preds = %sw.bb187
  %addressed_state191 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %150 = ptrtoint ptr %addressed_state191 to i32
  call void @__asan_load2_noabort(i32 %150)
  %bf.load192 = load i16, ptr %addressed_state191, align 8
  %151 = and i16 %bf.load192, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool196.not = icmp eq i16 %151, 0
  br i1 %tobool196.not, label %if.then197, label %sw.bb190.if.end256_crit_edge

sw.bb190.if.end256_crit_edge:                     ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

if.then197:                                       ; preds = %sw.bb190
  %wValue198 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %152 = ptrtoint ptr %wValue198 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %wValue198, align 2
  %154 = tail call i16 @llvm.bswap.i16(i16 %153)
  %155 = zext i16 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.198)
  switch i16 %154, label %if.then197.if.end256_crit_edge [
    i16 48, label %sw.bb200
    i16 49, label %sw.bb218
    i16 50, label %sw.bb236
  ]

if.then197.if.end256_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

sw.bb200:                                         ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set204 = or i16 %bf.load192, 512
  %156 = ptrtoint ptr %addressed_state191 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %bf.set204, ptr %addressed_state191, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !699
  tail call void @arm_heavy_mb() #12
  %usb_ext210 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 12
  %157 = ptrtoint ptr %usb_ext210 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %usb_ext210, align 4
  %usbctl2211 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %158, i32 0, i32 5
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl2211) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !700
  %160 = or i32 %159, 536870912
  %161 = ptrtoint ptr %usb_ext210 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %usb_ext210, align 4
  %usbctl2217 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %162, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl2217, i32 %160) #12, !srcloc !450
  tail call fastcc void @allow_status_338x(ptr noundef %ep)
  br label %next_endpoints3

sw.bb218:                                         ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set222 = or i16 %bf.load192, 256
  %163 = ptrtoint ptr %addressed_state191 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %bf.set222, ptr %addressed_state191, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !701
  tail call void @arm_heavy_mb() #12
  %usb_ext228 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 12
  %164 = ptrtoint ptr %usb_ext228 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %usb_ext228, align 4
  %usbctl2229 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %165, i32 0, i32 5
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl2229) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !702
  %167 = or i32 %166, 1073741824
  %168 = ptrtoint ptr %usb_ext228 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %usb_ext228, align 4
  %usbctl2235 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %169, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl2235, i32 %167) #12, !srcloc !450
  tail call fastcc void @allow_status_338x(ptr noundef %ep)
  br label %next_endpoints3

sw.bb236:                                         ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set240 = or i16 %bf.load192, 128
  %170 = ptrtoint ptr %addressed_state191 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %bf.set240, ptr %addressed_state191, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !703
  tail call void @arm_heavy_mb() #12
  %usb_ext246 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 12
  %171 = ptrtoint ptr %usb_ext246 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %usb_ext246, align 4
  %usbctl2247 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %172, i32 0, i32 5
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl2247) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !704
  %174 = or i32 %173, -2147483648
  %175 = ptrtoint ptr %usb_ext246 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %usb_ext246, align 4
  %usbctl2253 = getelementptr inbounds %struct.usb338x_usb_ext_regs, ptr %176, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl2253, i32 %174) #12, !srcloc !450
  tail call fastcc void @allow_status_338x(ptr noundef %ep)
  br label %next_endpoints3

if.end256:                                        ; preds = %if.then197.if.end256_crit_edge, %sw.bb190.if.end256_crit_edge
  %wValue257 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %177 = ptrtoint ptr %wValue257 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %wValue257, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %178)
  %cmp259 = icmp eq i16 %178, 256
  br i1 %cmp259, label %if.then261, label %if.end256.do.body310_crit_edge

if.end256.do.body310_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body310

if.then261:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set265 = or i16 %bf.load192, 64
  %179 = ptrtoint ptr %addressed_state191 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %bf.set265, ptr %addressed_state191, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !705
  tail call void @arm_heavy_mb() #12
  %usb271 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 11
  %180 = ptrtoint ptr %usb271 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %usb271, align 8
  %usbctl272 = getelementptr inbounds %struct.net2280_usb_regs, ptr %181, i32 0, i32 3
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl272) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !706
  %183 = or i32 %182, 33554432
  %184 = ptrtoint ptr %usb271 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %usb271, align 8
  %usbctl278 = getelementptr inbounds %struct.net2280_usb_regs, ptr %185, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %usbctl278, i32 %183) #12, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !687
  tail call void @arm_heavy_mb() #12
  %regs.i549 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %186 = ptrtoint ptr %regs.i549 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i549, align 4
  %ep_rsp.i550 = getelementptr inbounds %struct.net2280_ep_regs, ptr %187, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i550, i32 134217728) #12, !srcloc !450
  %stopped.i551 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %188 = ptrtoint ptr %stopped.i551 to i32
  call void @__asan_load4_noabort(i32 %188)
  %bf.load.i552 = load i32, ptr %stopped.i551, align 4
  %bf.set.i553 = and i32 %bf.load.i552, -545
  %bf.clear2.i554 = or i32 %bf.set.i553, 512
  store i32 %bf.clear2.i554, ptr %stopped.i551, align 4
  br label %next_endpoints3

sw.bb280:                                         ; preds = %sw.bb187
  %189 = ptrtoint ptr %r.coerce.fca.1.gep to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %r.coerce.fca.1.gep, align 4
  %191 = tail call i16 @llvm.bswap.i16(i16 %190)
  %conv.i555 = zext i16 %191 to i32
  %and.i556 = and i32 %conv.i555, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i556)
  %cmp.i557 = icmp eq i32 %and.i556, 0
  br i1 %cmp.i557, label %if.then.i559, label %if.end.i563

if.then.i559:                                     ; preds = %sw.bb280
  call void @__sanitizer_cov_trace_pc() #14
  %ep2.i558 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
  br label %get_ep_by_addr.exit583

if.end.i563:                                      ; preds = %sw.bb280
  %ep_list.i560 = getelementptr inbounds %struct.usb_gadget, ptr %dev, i32 0, i32 4
  %192 = ptrtoint ptr %ep_list.i560 to i32
  call void @__asan_load4_noabort(i32 %192)
  %.pn48.i561 = load ptr, ptr %ep_list.i560, align 4
  %cmp7.not49.i562 = icmp eq ptr %.pn48.i561, %ep_list.i560
  br i1 %cmp7.not49.i562, label %if.end.i563.next_endpoints3_crit_edge, label %if.end.i563.for.body.i567_crit_edge

if.end.i563.for.body.i567_crit_edge:              ; preds = %if.end.i563
  br label %for.body.i567

if.end.i563.next_endpoints3_crit_edge:            ; preds = %if.end.i563
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

for.body.i567:                                    ; preds = %for.inc.i579.for.body.i567_crit_edge, %if.end.i563.for.body.i567_crit_edge
  %.pn50.i564 = phi ptr [ %.pn.i577, %for.inc.i579.for.body.i567_crit_edge ], [ %.pn48.i561, %if.end.i563.for.body.i567_crit_edge ]
  %desc.i565 = getelementptr i8, ptr %.pn50.i564, i32 68
  %193 = ptrtoint ptr %desc.i565 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %desc.i565, align 4
  %tobool.not.i566 = icmp eq ptr %194, null
  br i1 %tobool.not.i566, label %for.body.i567.for.inc.i579_crit_edge, label %if.end10.i576

for.body.i567.for.inc.i579_crit_edge:             ; preds = %for.body.i567
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i579

if.end10.i576:                                    ; preds = %for.body.i567
  %bEndpointAddress12.i568 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %bEndpointAddress12.i568 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %bEndpointAddress12.i568, align 1
  %conv14.i569 = zext i8 %196 to i32
  %xor.i570 = xor i32 %conv14.i569, %conv.i555
  %and15.i571 = and i32 %xor.i570, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i571)
  %tobool16.not.i572 = icmp eq i32 %and15.i571, 0
  %and22.i573 = and i32 %conv14.i569, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i556, i32 %and22.i573)
  %cmp23.i574 = icmp eq i32 %and.i556, %and22.i573
  %or.cond.i575 = select i1 %tobool16.not.i572, i1 %cmp23.i574, i1 false
  br i1 %or.cond.i575, label %cleanup33.loopexit.split.loop.exit46.i581, label %if.end10.i576.for.inc.i579_crit_edge

if.end10.i576.for.inc.i579_crit_edge:             ; preds = %if.end10.i576
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i579

for.inc.i579:                                     ; preds = %if.end10.i576.for.inc.i579_crit_edge, %for.body.i567.for.inc.i579_crit_edge
  %197 = ptrtoint ptr %.pn50.i564 to i32
  call void @__asan_load4_noabort(i32 %197)
  %.pn.i577 = load ptr, ptr %.pn50.i564, align 4
  %cmp7.not.i578 = icmp eq ptr %.pn.i577, %ep_list.i560
  br i1 %cmp7.not.i578, label %for.inc.i579.next_endpoints3_crit_edge, label %for.inc.i579.for.body.i567_crit_edge

for.inc.i579.for.body.i567_crit_edge:             ; preds = %for.inc.i579
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i567

for.inc.i579.next_endpoints3_crit_edge:           ; preds = %for.inc.i579
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

cleanup33.loopexit.split.loop.exit46.i581:        ; preds = %if.end10.i576
  call void @__sanitizer_cov_trace_pc() #14
  %ep.0.le.i580 = getelementptr i8, ptr %.pn50.i564, i32 -12
  br label %get_ep_by_addr.exit583

get_ep_by_addr.exit583:                           ; preds = %cleanup33.loopexit.split.loop.exit46.i581, %if.then.i559
  %retval.2.i582 = phi ptr [ %ep2.i558, %if.then.i559 ], [ %ep.0.le.i580, %cleanup33.loopexit.split.loop.exit46.i581 ]
  %tobool283.not = icmp eq ptr %retval.2.i582, null
  br i1 %tobool283.not, label %get_ep_by_addr.exit583.next_endpoints3_crit_edge, label %lor.lhs.false

get_ep_by_addr.exit583.next_endpoints3_crit_edge: ; preds = %get_ep_by_addr.exit583
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

lor.lhs.false:                                    ; preds = %get_ep_by_addr.exit583
  %wValue284 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %198 = ptrtoint ptr %wValue284 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %wValue284, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %cmp286.not = icmp eq i16 %199, 0
  br i1 %cmp286.not, label %if.end289, label %lor.lhs.false.next_endpoints3_crit_edge

lor.lhs.false.next_endpoints3_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

if.end289:                                        ; preds = %lor.lhs.false
  %stopped290 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %200 = ptrtoint ptr %stopped290 to i32
  call void @__asan_load4_noabort(i32 %200)
  %bf.load291 = load i32, ptr %stopped290, align 4
  %bf.set293 = or i32 %bf.load291, 512
  store i32 %bf.set293, ptr %stopped290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load291)
  %cmp296 = icmp ult i32 %bf.load291, 16777216
  br i1 %cmp296, label %if.then298, label %if.else

if.then298:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #14
  %dev299 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %201 = ptrtoint ptr %dev299 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev299, align 4
  %protocol_stall = getelementptr inbounds %struct.net2280, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %203)
  %bf.load300 = load i16, ptr %protocol_stall, align 8
  %bf.set302 = or i16 %bf.load300, 16384
  store i16 %bf.set302, ptr %protocol_stall, align 8
  br label %if.end306

if.else:                                          ; preds = %if.end289
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %204 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dma, align 4
  %tobool303.not = icmp eq ptr %205, null
  br i1 %tobool303.not, label %if.else.if.end305_crit_edge, label %if.then304

if.else.if.end305_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end305

if.then304:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @abort_dma(ptr noundef %ep)
  br label %if.end305

if.end305:                                        ; preds = %if.then304, %if.else.if.end305_crit_edge
  tail call fastcc void @set_halt(ptr noundef %ep)
  br label %if.end306

if.end306:                                        ; preds = %if.end305, %if.then298
  tail call fastcc void @allow_status_338x(ptr noundef %ep)
  br label %next_endpoints3

do.body310:                                       ; preds = %if.end256.do.body310_crit_edge, %sw.bb187.do.body310_crit_edge, %if.end127.do.body310_crit_edge, %sw.bb60.do.body310_crit_edge, %sw.bb1.do.body310_crit_edge, %sw.bb, %entry.do.body310_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs_superspeed, %do.end343)) #12
          to label %if.then324 [label %do.end343], !srcloc !446

if.then324:                                       ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  %pdev325 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %206 = ptrtoint ptr %pdev325 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %pdev325, align 8
  %dev326 = getelementptr inbounds %struct.pci_dev, ptr %207, i32 0, i32 44
  %208 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %r, align 4
  %conv328 = zext i8 %209 to i32
  %210 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %bRequest, align 1
  %conv330 = zext i8 %211 to i32
  %wValue331 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 2
  %212 = ptrtoint ptr %wValue331 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %wValue331, align 2
  %214 = tail call i16 @llvm.bswap.i16(i16 %213)
  %conv332 = zext i16 %214 to i32
  %215 = ptrtoint ptr %r.coerce.fca.1.gep to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %r.coerce.fca.1.gep, align 4
  %217 = tail call i16 @llvm.bswap.i16(i16 %216)
  %conv334 = zext i16 %217 to i32
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %r, i32 0, i32 4
  %218 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %wLength, align 2
  %220 = tail call i16 @llvm.bswap.i16(i16 %219)
  %conv335 = zext i16 %220 to i32
  %cfg = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 1
  %221 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cfg, align 4
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #12, !srcloc !447
  %224 = tail call i32 @llvm.bswap.i32(i32 %223)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !707
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug257, ptr noundef %dev326, ptr noundef nonnull @.str.142, i32 noundef %conv328, i32 noundef %conv330, i32 noundef %conv332, i32 noundef %conv334, i32 noundef %conv335, i32 noundef %224) #12
  br label %do.end343

do.end343:                                        ; preds = %if.then324, %do.body310
  %responded = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %225 = ptrtoint ptr %responded to i32
  call void @__asan_load4_noabort(i32 %225)
  %bf.load344 = load i32, ptr %responded, align 4
  %bf.clear345 = and i32 %bf.load344, -33
  store i32 %bf.clear345, ptr %responded, align 4
  %async_callbacks = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 4
  %226 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %226)
  %bf.load347 = load i16, ptr %async_callbacks, align 8
  %227 = and i16 %bf.load347, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %227)
  %tobool351.not = icmp eq i16 %227, 0
  br i1 %tobool351.not, label %do.end343.next_endpoints3_crit_edge, label %do_stall3

do.end343.next_endpoints3_crit_edge:              ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

do_stall3:                                        ; preds = %do.end343
  %lock = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %driver = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 3
  %228 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %driver, align 4
  %setup = getelementptr inbounds %struct.usb_gadget_driver, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %setup, align 4
  %call354 = call i32 %231(ptr noundef %dev, ptr noundef nonnull %r) #12
  call void @_raw_spin_lock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %cmp358 = icmp slt i32 %call354, 0
  br i1 %cmp358, label %do.body361, label %do_stall3.next_endpoints3_crit_edge

do_stall3.next_endpoints3_crit_edge:              ; preds = %do_stall3
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_endpoints3

do.body361:                                       ; preds = %do_stall3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_stat0_irqs_superspeed, %do.end384)) #12
          to label %if.then375 [label %do.end384], !srcloc !446

if.then375:                                       ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #14
  %pdev376 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 9
  %232 = ptrtoint ptr %pdev376 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pdev376, align 8
  %dev377 = getelementptr inbounds %struct.pci_dev, ptr %233, i32 0, i32 44
  %234 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %r, align 4
  %conv379 = zext i8 %235 to i32
  %236 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %bRequest, align 1
  %conv381 = zext i8 %237 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug258, ptr noundef %dev377, ptr noundef nonnull @.str.143, i32 noundef %conv379, i32 noundef %conv381, i32 noundef %call354) #12
  br label %do.end384

do.end384:                                        ; preds = %if.then375, %do.body361
  %238 = ptrtoint ptr %async_callbacks to i32
  call void @__asan_load2_noabort(i32 %238)
  %bf.load386 = load i16, ptr %async_callbacks, align 8
  %bf.set388 = or i16 %bf.load386, 16384
  store i16 %bf.set388, ptr %async_callbacks, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !649
  call void @arm_heavy_mb() #12
  %dev.i584 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %239 = ptrtoint ptr %dev.i584 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev.i584, align 4
  %chiprev.i = getelementptr inbounds %struct.net2280, ptr %240, i32 0, i32 5
  %241 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %chiprev.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %242)
  %cmp.i585 = icmp eq i16 %242, 256
  %or2.i = select i1 %cmp.i585, i32 33032, i32 264
  %243 = call i32 @llvm.bswap.i32(i32 %or2.i) #12
  %regs.i586 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %244 = ptrtoint ptr %regs.i586 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i586, align 4
  %ep_rsp.i587 = getelementptr inbounds %struct.net2280_ep_regs, ptr %245, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i587, i32 %243) #12, !srcloc !450
  br label %next_endpoints3

next_endpoints3:                                  ; preds = %do.end384, %do_stall3.next_endpoints3_crit_edge, %do.end343.next_endpoints3_crit_edge, %if.end306, %lor.lhs.false.next_endpoints3_crit_edge, %get_ep_by_addr.exit583.next_endpoints3_crit_edge, %for.inc.i579.next_endpoints3_crit_edge, %if.end.i563.next_endpoints3_crit_edge, %if.then261, %sw.bb236, %sw.bb218, %sw.bb200, %if.end181, %if.end153.next_endpoints3_crit_edge, %get_ep_by_addr.exit536.next_endpoints3_crit_edge, %for.inc.i532.next_endpoints3_crit_edge, %if.end.i516.next_endpoints3_crit_edge, %if.then131, %sw.bb107, %sw.bb89, %sw.bb73, %set_fifo_bytecount.exit495, %get_ep_by_addr.exit.next_endpoints3_crit_edge, %for.inc.i.next_endpoints3_crit_edge, %if.end.i.next_endpoints3_crit_edge, %set_fifo_bytecount.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_ep_by_addr(ptr noundef readonly %dev, i16 noundef zeroext %wIndex) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %wIndex to i32
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ep2 = getelementptr inbounds %struct.net2280, ptr %dev, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn48, %if.end.for.body_crit_edge ]
  %desc = getelementptr i8, ptr %.pn50, i32 68
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp7.not = icmp eq ptr %.pn, %ep_list
  br i1 %cmp7.not, label %for.inc.cleanup33_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

cleanup33.loopexit.split.loop.exit46:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %ep.0.le = getelementptr i8, ptr %.pn50, i32 -12
  br label %cleanup33

cleanup33:                                        ; preds = %cleanup33.loopexit.split.loop.exit46, %for.inc.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %if.then
  %retval.2 = phi ptr [ %ep2, %if.then ], [ %ep.0.le, %cleanup33.loopexit.split.loop.exit46 ], [ null, %if.end.cleanup33_crit_edge ], [ null, %for.inc.cleanup33_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_ep_small(ptr noundef %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  %add.ptr = getelementptr i8, ptr %1, i32 -64
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %3, i32 0, i32 3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !708
  %irqs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 7
  %6 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqs, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %irqs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep_small.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep_small, %do.end)) #12
          to label %if.then11 [label %do.end], !srcloc !446

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.net2280, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep_small.__UNIQUE_ID_ddebug253, ptr noundef %dev12, ptr noundef nonnull @.str.155, ptr noundef %13, i32 noundef %5, ptr noundef %spec.select) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %entry
  %is_in = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %14 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %is_in, align 4
  %15 = and i32 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %do.end.do.body21_crit_edge, label %lor.lhs.false

do.end.do.body21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

lor.lhs.false:                                    ; preds = %do.end
  %dev18 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 4
  %quirks = getelementptr inbounds %struct.net2280, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body28, label %lor.lhs.false.do.body21_crit_edge

lor.lhs.false.do.body21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body21

do.body21:                                        ; preds = %lor.lhs.false.do.body21_crit_edge, %do.end.do.body21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !709
  tail call void @arm_heavy_mb() #12
  %and24 = and i32 %5, -17
  %20 = tail call i32 @llvm.bswap.i32(i32 %and24)
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %ep_stat26 = getelementptr inbounds %struct.net2280_ep_regs, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat26, i32 %20) #12, !srcloc !450
  br label %if.end33

do.body28:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !710
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %ep_stat32 = getelementptr inbounds %struct.net2280_ep_regs, ptr %24, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_stat32, i32 %4) #12, !srcloc !450
  br label %if.end33

if.end33:                                         ; preds = %do.body28, %do.body21
  %25 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load34 = load i32, ptr %is_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load34)
  %cmp = icmp ult i32 %bf.load34, 16777216
  br i1 %cmp, label %if.then42, label %if.end33.if.end147_crit_edge, !prof !528

if.end33.if.end147_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then42:                                        ; preds = %if.end33
  %26 = and i32 %bf.load34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool47.not = icmp eq i32 %26, 0
  br i1 %tobool47.not, label %if.else97, label %if.then48

if.then48:                                        ; preds = %if.then42
  %and49 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else64, label %if.then51

if.then51:                                        ; preds = %if.then48
  %dev52 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %27 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev52, align 4
  %protocol_stall = getelementptr inbounds %struct.net2280, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %protocol_stall to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load53 = load i16, ptr %protocol_stall, align 8
  %30 = and i16 %bf.load53, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool56.not = icmp eq i16 %30, 0
  br i1 %tobool56.not, label %if.then51.if.end60_crit_edge, label %if.then57

if.then51.if.end60_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set = or i32 %bf.load34, 512
  %31 = ptrtoint ptr %is_in to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.set, ptr %is_in, align 4
  tail call fastcc void @set_halt(ptr noundef %ep)
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.then51.if.end60_crit_edge
  %tobool61.not = icmp eq ptr %spec.select, null
  br i1 %tobool61.not, label %if.then62, label %if.end60.if.end158_crit_edge

if.end60.if.end158_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %ep_rsp.i = getelementptr inbounds %struct.net2280_ep_regs, ptr %33, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i, i32 -1946157056) #12, !srcloc !450
  %34 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load.i = load i32, ptr %is_in, align 4
  %bf.set.i = or i32 %bf.load.i, 512
  store i32 %bf.set.i, ptr %is_in, align 4
  br label %cleanup

if.else64:                                        ; preds = %if.then48
  %and65 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else64.if.end147_crit_edge, label %if.then67

if.else64.if.end147_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then67:                                        ; preds = %if.else64
  %dev68 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %35 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev68, align 4
  %protocol_stall69 = getelementptr inbounds %struct.net2280, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %protocol_stall69 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load70 = load i16, ptr %protocol_stall69, align 8
  %38 = and i16 %bf.load70, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool74.not = icmp eq i16 %38, 0
  br i1 %tobool74.not, label %if.else80, label %if.then67.if.end147.sink.split_crit_edge

if.then67.if.end147.sink.split_crit_edge:         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.sink.split

if.else80:                                        ; preds = %if.then67
  %39 = and i32 %bf.load34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool84.not = icmp ne i32 %39, 0
  %tobool85.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool84.not, i1 %tobool85.not, i1 false
  br i1 %or.cond, label %land.lhs.true86, label %if.else80.if.end147_crit_edge

if.else80.if.end147_crit_edge:                    ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

land.lhs.true86:                                  ; preds = %if.else80
  %40 = and i32 %bf.load34, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool91.not = icmp eq i32 %40, 0
  br i1 %tobool91.not, label %if.then92, label %land.lhs.true86.cleanup_crit_edge

land.lhs.true86.cleanup_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then92:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @write_fifo(ptr noundef %ep, ptr noundef null)
  br label %cleanup

if.else97:                                        ; preds = %if.then42
  %and98 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else114, label %if.then100

if.then100:                                       ; preds = %if.else97
  %dev101 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %41 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev101, align 4
  %protocol_stall102 = getelementptr inbounds %struct.net2280, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %protocol_stall102 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load103 = load i16, ptr %protocol_stall102, align 8
  %44 = and i16 %bf.load103, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool107.not = icmp eq i16 %44, 0
  br i1 %tobool107.not, label %if.then100.if.end147_crit_edge, label %if.then100.if.end147.sink.split_crit_edge

if.then100.if.end147.sink.split_crit_edge:        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147.sink.split

if.then100.if.end147_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.else114:                                       ; preds = %if.else97
  %and115 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %tobool118.not = icmp eq ptr %spec.select, null
  %or.cond635 = select i1 %tobool116.not, i1 true, i1 %tobool118.not
  br i1 %or.cond635, label %if.else114.lor.lhs.false123_crit_edge, label %land.lhs.true119

if.else114.lor.lhs.false123_crit_edge:            ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false123

land.lhs.true119:                                 ; preds = %if.else114
  %actual = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 12
  %45 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 1
  %47 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp122 = icmp eq i32 %46, %48
  br i1 %cmp122, label %land.lhs.true119.if.then131_crit_edge, label %land.lhs.true119.lor.lhs.false123_crit_edge

land.lhs.true119.lor.lhs.false123_crit_edge:      ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false123

land.lhs.true119.if.then131_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then131

lor.lhs.false123:                                 ; preds = %land.lhs.true119.lor.lhs.false123_crit_edge, %if.else114.lor.lhs.false123_crit_edge
  %49 = and i32 %bf.load34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool128.not = icmp ne i32 %49, 0
  %or.cond636 = select i1 %tobool128.not, i1 %tobool118.not, i1 false
  br i1 %or.cond636, label %lor.lhs.false123.if.then131_crit_edge, label %lor.lhs.false123.if.end147_crit_edge

lor.lhs.false123.if.end147_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

lor.lhs.false123.if.then131_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then131

if.then131:                                       ; preds = %lor.lhs.false123.if.then131_crit_edge, %land.lhs.true119.if.then131_crit_edge
  %dev132 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %50 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev132, align 4
  %protocol_stall133 = getelementptr inbounds %struct.net2280, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %protocol_stall133 to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load134 = load i16, ptr %protocol_stall133, align 8
  %bf.set136 = or i16 %bf.load134, 16384
  store i16 %bf.set136, ptr %protocol_stall133, align 8
  tail call fastcc void @set_halt(ptr noundef %ep)
  %53 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load138 = load i32, ptr %is_in, align 4
  %bf.set140 = or i32 %bf.load138, 512
  store i32 %bf.set140, ptr %is_in, align 4
  br i1 %tobool118.not, label %if.then131.cleanup_crit_edge, label %if.then142

if.then131.cleanup_crit_edge:                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then142:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @done(ptr noundef %ep, ptr noundef nonnull %spec.select, i32 noundef -75)
  br label %cleanup

if.end147.sink.split:                             ; preds = %if.then100.if.end147.sink.split_crit_edge, %if.then67.if.end147.sink.split_crit_edge
  %bf.set112 = or i32 %bf.load34, 512
  %54 = ptrtoint ptr %is_in to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %bf.set112, ptr %is_in, align 4
  tail call fastcc void @set_halt(ptr noundef %ep)
  br label %if.end147

if.end147:                                        ; preds = %if.end147.sink.split, %lor.lhs.false123.if.end147_crit_edge, %if.then100.if.end147_crit_edge, %if.else80.if.end147_crit_edge, %if.else64.if.end147_crit_edge, %if.end33.if.end147_crit_edge
  %cmp442 = phi i1 [ true, %if.else64.if.end147_crit_edge ], [ true, %if.else80.if.end147_crit_edge ], [ true, %lor.lhs.false123.if.end147_crit_edge ], [ true, %if.end33.if.end147_crit_edge ], [ false, %if.then100.if.end147_crit_edge ], [ false, %if.end147.sink.split ]
  %mode.0 = phi i32 [ 1, %if.else64.if.end147_crit_edge ], [ 1, %if.else80.if.end147_crit_edge ], [ 1, %lor.lhs.false123.if.end147_crit_edge ], [ 1, %if.end33.if.end147_crit_edge ], [ 2, %if.then100.if.end147_crit_edge ], [ 2, %if.end147.sink.split ]
  %tobool148.not = icmp eq ptr %spec.select, null
  br i1 %tobool148.not, label %if.end147.cleanup_crit_edge, label %if.end147.if.end158_crit_edge, !prof !528

if.end147.if.end158_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end158:                                        ; preds = %if.end147.if.end158_crit_edge, %if.end60.if.end158_crit_edge
  %mode.0675 = phi i32 [ %mode.0, %if.end147.if.end158_crit_edge ], [ 2, %if.end60.if.end158_crit_edge ]
  %cmp442674 = phi i1 [ %cmp442, %if.end147.if.end158_crit_edge ], [ false, %if.end60.if.end158_crit_edge ]
  %dma = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 3
  %55 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma, align 4
  %tobool159.not = icmp eq ptr %56, null
  br i1 %tobool159.not, label %if.else377, label %if.then166, !prof !528

if.then166:                                       ; preds = %if.end158
  %and167 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %do.body353, label %if.then169

if.then169:                                       ; preds = %if.then166
  %57 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load172 = load i32, ptr %is_in, align 4
  %bf.clear174 = and i32 %bf.load172, 512
  %bf.set178 = or i32 %bf.load172, 512
  store i32 %bf.set178, ptr %is_in, align 4
  %call179696 = tail call fastcc i32 @scan_dma_completions(ptr noundef %ep)
  %58 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %queue, align 4
  %cmp.i650.not697 = icmp eq ptr %59, %queue
  br i1 %cmp.i650.not697, label %if.then169.do.body288_crit_edge, label %if.then169.lor.rhs_crit_edge, !prof !528

if.then169.lor.rhs_crit_edge:                     ; preds = %if.then169
  br label %lor.rhs

if.then169.do.body288_crit_edge:                  ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body288

lor.rhs:                                          ; preds = %if.end280.lor.rhs_crit_edge, %if.then169.lor.rhs_crit_edge
  %60 = phi ptr [ %97, %if.end280.lor.rhs_crit_edge ], [ %59, %if.then169.lor.rhs_crit_edge ]
  %call179701 = phi i32 [ %call179, %if.end280.lor.rhs_crit_edge ], [ %call179696, %if.then169.lor.rhs_crit_edge ]
  %t.0700 = phi i32 [ %95, %if.end280.lor.rhs_crit_edge ], [ %5, %if.then169.lor.rhs_crit_edge ]
  %stuck_req.0699 = phi ptr [ %stuck_req.1, %if.end280.lor.rhs_crit_edge ], [ null, %if.then169.lor.rhs_crit_edge ]
  %stuck.0698 = phi i32 [ %stuck.2, %if.end280.lor.rhs_crit_edge ], [ 0, %if.then169.lor.rhs_crit_edge ]
  %61 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load183 = load i32, ptr %is_in, align 4
  %62 = and i32 %bf.load183, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool186.not = icmp eq i32 %62, 0
  br i1 %tobool186.not, label %if.end194, label %lor.rhs.do.body288_crit_edge, !prof !455

lor.rhs.do.body288_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body288

if.end194:                                        ; preds = %lor.rhs
  %add.ptr199 = getelementptr i8, ptr %60, i32 -64
  %and200 = and i32 %t.0700, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.end225, label %if.then208, !prof !528

if.then208:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma, align 4
  %dmacount = getelementptr inbounds %struct.net2280_dma_regs, ptr %64, i32 0, i32 3
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacount) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !711
  %66 = and i32 %65, -256
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma, align 4
  %dmadesc = getelementptr inbounds %struct.net2280_dma_regs, ptr %69, i32 0, i32 5
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmadesc) #12, !srcloc !447
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !712
  %td_dma = getelementptr i8, ptr %60, i32 -4
  %72 = ptrtoint ptr %td_dma to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %td_dma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp222.not = icmp eq i32 %71, %73
  %spec.select637 = select i1 %cmp222.not, ptr %add.ptr199, ptr null
  br label %do.body288

if.end225:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179701)
  %cmp226 = icmp eq i32 %call179701, 0
  br i1 %cmp226, label %if.then227, label %if.end225.if.end280_crit_edge

if.end225.if.end280_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end280

if.then227:                                       ; preds = %if.end225
  %cmp228 = icmp eq ptr %stuck_req.0699, %add.ptr199
  br i1 %cmp228, label %land.lhs.true229, label %if.then227.if.end280_crit_edge

if.then227.if.end280_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end280

land.lhs.true229:                                 ; preds = %if.then227
  %74 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma, align 4
  %dmadesc233 = getelementptr inbounds %struct.net2280_dma_regs, ptr %75, i32 0, i32 5
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmadesc233) #12, !srcloc !447
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !713
  %td_dma237 = getelementptr i8, ptr %60, i32 -4
  %78 = ptrtoint ptr %td_dma237 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %td_dma237, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp238.not = icmp eq i32 %77, %79
  br i1 %cmp238.not, label %land.lhs.true229.if.end280_crit_edge, label %land.lhs.true239

land.lhs.true229.if.end280_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end280

land.lhs.true239:                                 ; preds = %land.lhs.true229
  %inc240 = add i32 %stuck.0698, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %stuck.0698)
  %cmp241 = icmp sgt i32 %stuck.0698, 5
  br i1 %cmp241, label %if.then242, label %land.lhs.true239.if.end280_crit_edge

land.lhs.true239.if.end280_crit_edge:             ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end280

if.then242:                                       ; preds = %land.lhs.true239
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma, align 4
  %dmacount246 = getelementptr inbounds %struct.net2280_dma_regs, ptr %81, i32 0, i32 3
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacount246) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !714
  %83 = and i32 %82, -256
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep_small.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep_small, %do.body288)) #12
          to label %if.then265 [label %do.body288], !srcloc !446

if.then265:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #14
  %dev266 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %85 = ptrtoint ptr %dev266 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev266, align 4
  %pdev267 = getelementptr inbounds %struct.net2280, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %pdev267 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev267, align 8
  %dev268 = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %name270 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %89 = ptrtoint ptr %name270 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name270, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep_small.__UNIQUE_ID_ddebug254, ptr noundef %dev268, ptr noundef nonnull @.str.156, ptr noundef %90, i32 noundef %inc240, i32 noundef %84) #12
  br label %do.body288

if.end280:                                        ; preds = %land.lhs.true239.if.end280_crit_edge, %land.lhs.true229.if.end280_crit_edge, %if.then227.if.end280_crit_edge, %if.end225.if.end280_crit_edge
  %stuck.2 = phi i32 [ 0, %if.end225.if.end280_crit_edge ], [ %inc240, %land.lhs.true239.if.end280_crit_edge ], [ %stuck.0698, %land.lhs.true229.if.end280_crit_edge ], [ 0, %if.then227.if.end280_crit_edge ]
  %stuck_req.1 = phi ptr [ null, %if.end225.if.end280_crit_edge ], [ %stuck_req.0699, %land.lhs.true239.if.end280_crit_edge ], [ %stuck_req.0699, %land.lhs.true229.if.end280_crit_edge ], [ %add.ptr199, %if.then227.if.end280_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748) #12
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %ep_stat284 = getelementptr inbounds %struct.net2280_ep_regs, ptr %93, i32 0, i32 3
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat284) #12, !srcloc !447
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !715
  %call179 = tail call fastcc i32 @scan_dma_completions(ptr noundef %ep)
  %96 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %queue, align 4
  %cmp.i650.not = icmp eq ptr %97, %queue
  br i1 %cmp.i650.not, label %if.end280.do.body288_crit_edge, label %if.end280.lor.rhs_crit_edge, !prof !528

if.end280.lor.rhs_crit_edge:                      ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

if.end280.do.body288_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body288

do.body288:                                       ; preds = %if.end280.do.body288_crit_edge, %if.then265, %if.then242, %if.then208, %lor.rhs.do.body288_crit_edge, %if.then169.do.body288_crit_edge
  %count.0 = phi i32 [ %84, %if.then265 ], [ %67, %if.then208 ], [ %84, %if.then242 ], [ 0, %if.then169.do.body288_crit_edge ], [ 0, %if.end280.do.body288_crit_edge ], [ 0, %lor.rhs.do.body288_crit_edge ]
  %req.2 = phi ptr [ null, %if.then265 ], [ %spec.select637, %if.then208 ], [ null, %if.then242 ], [ null, %if.then169.do.body288_crit_edge ], [ null, %if.end280.do.body288_crit_edge ], [ null, %lor.rhs.do.body288_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !716
  tail call void @arm_heavy_mb() #12
  %98 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dma, align 4
  %dmastat = getelementptr inbounds %struct.net2280_dma_regs, ptr %99, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmastat, i32 33554432) #12, !srcloc !450
  %100 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dma, align 4
  %call.i.i = tail call i64 @ktime_get() #12
  %add.i.i.i = add i64 %call.i.i, 50000
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %103 = and i32 %102, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp2.i.i = icmp eq i32 %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp53.i.i = icmp eq i32 %102, -1
  %or.cond4.i.i = or i1 %cmp53.i.i, %cmp2.i.i
  br i1 %or.cond4.i.i, label %do.body288.spin_stop_dma.exit_crit_edge, label %do.body288.land.lhs.true.i.i_crit_edge

do.body288.land.lhs.true.i.i_crit_edge:           ; preds = %do.body288
  br label %land.lhs.true.i.i

do.body288.spin_stop_dma.exit_crit_edge:          ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #14
  br label %spin_stop_dma.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %do.body288.land.lhs.true.i.i_crit_edge
  %call7.i.i = tail call i64 @ktime_get() #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call7.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then11.i.i, label %cond.false.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %spin_stop_dma.exit

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748) #12
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  %107 = and i32 %106, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i.i = icmp eq i32 %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp5.i.i = icmp eq i32 %106, -1
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %cond.false.i.i.spin_stop_dma.exit_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

cond.false.i.i.spin_stop_dma.exit_crit_edge:      ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %spin_stop_dma.exit

spin_stop_dma.exit:                               ; preds = %cond.false.i.i.spin_stop_dma.exit_crit_edge, %if.then11.i.i, %do.body288.spin_stop_dma.exit_crit_edge
  %tobool293.not = icmp eq ptr %req.2, null
  br i1 %tobool293.not, label %spin_stop_dma.exit.if.end317_crit_edge, label %if.then300, !prof !528

spin_stop_dma.exit.if.end317_crit_edge:           ; preds = %spin_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end317

if.then300:                                       ; preds = %spin_stop_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  %td = getelementptr inbounds %struct.net2280_request, ptr %req.2, i32 0, i32 1
  %108 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %td, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %109, align 16
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 4
  %ep_avail = getelementptr inbounds %struct.net2280_ep_regs, ptr %112, i32 0, i32 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_avail) #12, !srcloc !447
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !717
  %114 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load309 = load i32, ptr %is_in, align 4
  %115 = and i32 %bf.load309, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool312.not = icmp eq i32 %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool314.not = icmp eq i32 %113, 0
  %116 = select i1 %tobool312.not, i1 %tobool314.not, i1 false
  %117 = select i1 %116, i32 0, i32 -75
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req.2, i32 0, i32 1
  %118 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %length.i, align 4
  %and.i = and i32 %count.0, 16777215
  %sub.i = sub i32 %119, %and.i
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %req.2, i32 0, i32 12
  %120 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sub.i, ptr %actual.i, align 4
  tail call fastcc void @done(ptr noundef %ep, ptr noundef nonnull %req.2, i32 noundef %117) #12
  br label %if.end317

if.end317:                                        ; preds = %if.then300, %spin_stop_dma.exit.if.end317_crit_edge
  %121 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load319 = load i32, ptr %is_in, align 4
  %122 = and i32 %bf.load319, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool322.not = icmp eq i32 %122, 0
  br i1 %tobool322.not, label %lor.rhs323, label %if.end317.if.then337_crit_edge, !prof !455

if.end317.if.then337_crit_edge:                   ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then337

lor.rhs323:                                       ; preds = %if.end317
  %dev324 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %123 = ptrtoint ptr %dev324 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev324, align 4
  %chiprev = getelementptr inbounds %struct.net2280, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %chiprev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %126)
  %cmp325 = icmp eq i16 %126, 256
  br i1 %cmp325, label %land.rhs, label %lor.rhs323.if.end342_crit_edge

lor.rhs323.if.end342_crit_edge:                   ; preds = %lor.rhs323
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end342

land.rhs:                                         ; preds = %lor.rhs323
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %124, i32 0, i32 5
  %127 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %128)
  %cmp328 = icmp eq i32 %128, 2
  br i1 %cmp328, label %land.rhs.if.then337_crit_edge, label %land.rhs.if.end342_crit_edge, !prof !528

land.rhs.if.end342_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end342

land.rhs.if.then337_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then337

if.then337:                                       ; preds = %land.rhs.if.then337_crit_edge, %if.end317.if.then337_crit_edge
  tail call fastcc void @out_flush(ptr noundef %ep)
  %129 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %129)
  %bf.load339 = load i32, ptr %is_in, align 4
  %bf.clear340 = and i32 %bf.load339, -1025
  store i32 %bf.clear340, ptr %is_in, align 4
  br label %if.end342

if.end342:                                        ; preds = %if.then337, %land.rhs.if.end342_crit_edge, %lor.rhs323.if.end342_crit_edge
  %130 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %130)
  %bf.load344 = load i32, ptr %is_in, align 4
  %bf.clear345 = and i32 %bf.load344, -513
  %bf.set346 = or i32 %bf.clear345, %bf.clear174
  store i32 %bf.set346, ptr %is_in, align 4
  %131 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %queue, align 4
  %cmp.i652 = icmp ne ptr %132, %queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear174)
  %tobool.not.i = icmp eq i32 %bf.clear174, 0
  %or.cond689 = select i1 %cmp.i652, i1 %tobool.not.i, i1 false
  br i1 %or.cond689, label %if.end.i, label %if.end342.cleanup_crit_edge

if.end342.cleanup_crit_edge:                      ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %132, i32 -64
  tail call fastcc void @start_dma(ptr noundef %ep, ptr noundef %add.ptr.i) #12
  br label %cleanup

do.body353:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_ep_small.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@handle_ep_small, %cleanup)) #12
          to label %if.then367 [label %cleanup], !srcloc !446

if.then367:                                       ; preds = %do.body353
  call void @__sanitizer_cov_trace_pc() #14
  %dev368 = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 6
  %133 = ptrtoint ptr %dev368 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev368, align 4
  %pdev369 = getelementptr inbounds %struct.net2280, ptr %134, i32 0, i32 9
  %135 = ptrtoint ptr %pdev369 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev369, align 8
  %dev370 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %name372 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %137 = ptrtoint ptr %name372 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %name372, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_ep_small.__UNIQUE_ID_ddebug255, ptr noundef %dev370, ptr noundef nonnull @.str.157, ptr noundef %138, i32 noundef %5) #12
  br label %cleanup

if.else377:                                       ; preds = %if.end158
  %and378 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %tobool379.not = icmp eq i32 %and378, 0
  br i1 %tobool379.not, label %if.else391, label %if.then380

if.then380:                                       ; preds = %if.else377
  %call381 = tail call fastcc i32 @read_fifo(ptr noundef %ep, ptr noundef nonnull %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381)
  %tobool382.not = icmp eq i32 %call381, 0
  br i1 %tobool382.not, label %if.then380.if.end448_crit_edge, label %land.lhs.true383

if.then380.if.end448_crit_edge:                   ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end448

land.lhs.true383:                                 ; preds = %if.then380
  %139 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %139)
  %bf.load385 = load i32, ptr %is_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %bf.load385)
  %cmp387.not = icmp ugt i32 %bf.load385, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.0675)
  %cmp449.old = icmp eq i32 %mode.0675, 2
  %or.cond691 = or i1 %cmp449.old, %cmp387.not
  br i1 %or.cond691, label %land.lhs.true383.if.then451_crit_edge, label %land.lhs.true383.land.lhs.true495_crit_edge

land.lhs.true383.land.lhs.true495_crit_edge:      ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true495

land.lhs.true383.if.then451_crit_edge:            ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then451

if.else391:                                       ; preds = %if.else377
  %and392 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and392)
  %tobool393.not = icmp eq i32 %and392, 0
  br i1 %tobool393.not, label %if.else441, label %if.then394

if.then394:                                       ; preds = %if.else391
  %length396 = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 1
  %140 = ptrtoint ptr %length396 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %length396, align 4
  %actual398 = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 12
  %142 = ptrtoint ptr %actual398 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %actual398, align 4
  %sub = sub i32 %141, %143
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %144 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %144, i32 7)
  %bf.load400 = load i56, ptr %maxpacket, align 2
  %bf.lshr401 = lshr i56 %bf.load400, 40
  %bf.cast402 = trunc i56 %bf.lshr401 to i32
  %145 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %bf.cast402)
  %add = add i32 %145, %143
  %146 = ptrtoint ptr %actual398 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add, ptr %actual398, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %141)
  %cmp418 = icmp eq i32 %add, %141
  br i1 %cmp418, label %land.lhs.true420, label %if.then394.if.end448_crit_edge

if.then394.if.end448_crit_edge:                   ; preds = %if.then394
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end448

land.lhs.true420:                                 ; preds = %if.then394
  %zero = getelementptr inbounds %struct.usb_request, ptr %spec.select, i32 0, i32 6
  %147 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %147)
  %bf.load422 = load i32, ptr %zero, align 4
  %148 = and i32 %bf.load422, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool425.not = icmp eq i32 %148, 0
  br i1 %tobool425.not, label %land.lhs.true420.land.lhs.true434_crit_edge, label %lor.lhs.false426

land.lhs.true420.land.lhs.true434_crit_edge:      ; preds = %land.lhs.true420
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true434

lor.lhs.false426:                                 ; preds = %land.lhs.true420
  %149 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %149, i32 7)
  %bf.load429 = load i56, ptr %maxpacket, align 2
  %bf.lshr430 = lshr i56 %bf.load429, 40
  %bf.cast431 = trunc i56 %bf.lshr430 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %bf.cast431)
  %cmp432.not = icmp eq i32 %145, %bf.cast431
  br i1 %cmp432.not, label %lor.lhs.false426.if.end448_crit_edge, label %lor.lhs.false426.land.lhs.true434_crit_edge

lor.lhs.false426.land.lhs.true434_crit_edge:      ; preds = %lor.lhs.false426
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true434

lor.lhs.false426.if.end448_crit_edge:             ; preds = %lor.lhs.false426
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end448

land.lhs.true434:                                 ; preds = %lor.lhs.false426.land.lhs.true434_crit_edge, %land.lhs.true420.land.lhs.true434_crit_edge
  %150 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %150)
  %bf.load436 = load i32, ptr %is_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %bf.load436)
  %tobool438.not = icmp ugt i32 %bf.load436, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.0675)
  %cmp449 = icmp eq i32 %mode.0675, 2
  %or.cond690 = or i1 %cmp449, %tobool438.not
  br i1 %or.cond690, label %land.lhs.true434.if.then451_crit_edge, label %land.lhs.true434.land.lhs.true495_crit_edge

land.lhs.true434.land.lhs.true495_crit_edge:      ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true495

land.lhs.true434.if.then451_crit_edge:            ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then451

if.else441:                                       ; preds = %if.else391
  br i1 %cmp442674, label %if.else441.cleanup_crit_edge, label %if.else441.if.then451_crit_edge

if.else441.if.then451_crit_edge:                  ; preds = %if.else441
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then451

if.else441.cleanup_crit_edge:                     ; preds = %if.else441
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end448:                                        ; preds = %lor.lhs.false426.if.end448_crit_edge, %if.then394.if.end448_crit_edge, %if.then380.if.end448_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.0675)
  %cmp449.old.old = icmp eq i32 %mode.0675, 2
  br i1 %cmp449.old.old, label %if.end448.if.then451_crit_edge, label %if.end448.land.lhs.true495_crit_edge

if.end448.land.lhs.true495_crit_edge:             ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true495

if.end448.if.then451_crit_edge:                   ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then451

if.then451:                                       ; preds = %if.end448.if.then451_crit_edge, %if.else441.if.then451_crit_edge, %land.lhs.true434.if.then451_crit_edge, %land.lhs.true383.if.then451_crit_edge
  tail call fastcc void @done(ptr noundef %ep, ptr noundef nonnull %spec.select, i32 noundef 0)
  %151 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %151)
  %bf.load453 = load i32, ptr %is_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load453)
  %cmp455 = icmp ult i32 %bf.load453, 16777216
  br i1 %cmp455, label %if.then457, label %if.else465

if.then457:                                       ; preds = %if.then451
  %152 = and i32 %bf.load453, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool462.not = icmp eq i32 %152, 0
  br i1 %tobool462.not, label %if.then463, label %if.then457.cleanup_crit_edge

if.then457.cleanup_crit_edge:                     ; preds = %if.then457
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then463:                                       ; preds = %if.then457
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !583
  tail call void @arm_heavy_mb() #12
  %153 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs, align 4
  %ep_rsp.i657 = getelementptr inbounds %struct.net2280_ep_regs, ptr %154, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp.i657, i32 -1946157056) #12, !srcloc !450
  %155 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %155)
  %bf.load.i659 = load i32, ptr %is_in, align 4
  %bf.set.i660 = or i32 %bf.load.i659, 512
  store i32 %bf.set.i660, ptr %is_in, align 4
  br label %cleanup

if.else465:                                       ; preds = %if.then451
  %156 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile ptr, ptr %queue, align 4
  %cmp.i661 = icmp ne ptr %157, %queue
  %158 = and i32 %bf.load453, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool474.not = icmp eq i32 %158, 0
  %or.cond692 = select i1 %cmp.i661, i1 %tobool474.not, i1 false
  br i1 %or.cond692, label %if.end482, label %if.else465.cleanup_crit_edge

if.else465.cleanup_crit_edge:                     ; preds = %if.else465
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end482:                                        ; preds = %if.else465
  %add.ptr480 = getelementptr i8, ptr %157, i32 -64
  %tobool483.not = icmp eq ptr %add.ptr480, null
  br i1 %tobool483.not, label %if.end482.cleanup_crit_edge, label %land.lhs.true484

if.end482.cleanup_crit_edge:                      ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true484:                                 ; preds = %if.end482
  %159 = and i32 %bf.load453, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool489.not = icmp eq i32 %159, 0
  br i1 %tobool489.not, label %if.then490, label %land.lhs.true484.land.lhs.true495_crit_edge

land.lhs.true484.land.lhs.true495_crit_edge:      ; preds = %land.lhs.true484
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true495

if.then490:                                       ; preds = %land.lhs.true484
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @stop_out_naking(ptr noundef %ep)
  br label %land.lhs.true495

land.lhs.true495:                                 ; preds = %if.then490, %land.lhs.true484.land.lhs.true495_crit_edge, %if.end448.land.lhs.true495_crit_edge, %land.lhs.true434.land.lhs.true495_crit_edge, %land.lhs.true383.land.lhs.true495_crit_edge
  %req.4 = phi ptr [ %add.ptr480, %land.lhs.true484.land.lhs.true495_crit_edge ], [ %add.ptr480, %if.then490 ], [ %add.ptr, %if.end448.land.lhs.true495_crit_edge ], [ %add.ptr, %land.lhs.true434.land.lhs.true495_crit_edge ], [ %add.ptr, %land.lhs.true383.land.lhs.true495_crit_edge ]
  %160 = ptrtoint ptr %is_in to i32
  call void @__asan_load4_noabort(i32 %160)
  %bf.load497 = load i32, ptr %is_in, align 4
  %161 = and i32 %bf.load497, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool500.not = icmp ne i32 %161, 0
  %and502 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and502)
  %tobool503.not = icmp eq i32 %and502, 0
  %or.cond643 = select i1 %tobool500.not, i1 true, i1 %tobool503.not
  br i1 %or.cond643, label %land.lhs.true495.cleanup_crit_edge, label %if.then504

land.lhs.true495.cleanup_crit_edge:               ; preds = %land.lhs.true495
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then504:                                       ; preds = %land.lhs.true495
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @write_fifo(ptr noundef %ep, ptr noundef nonnull %req.4)
  br label %cleanup

cleanup:                                          ; preds = %if.then504, %land.lhs.true495.cleanup_crit_edge, %if.end482.cleanup_crit_edge, %if.else465.cleanup_crit_edge, %if.then463, %if.then457.cleanup_crit_edge, %if.else441.cleanup_crit_edge, %if.then367, %do.body353, %if.end.i, %if.end342.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %if.then142, %if.then131.cleanup_crit_edge, %if.then92, %land.lhs.true86.cleanup_crit_edge, %if.then62
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allow_status_338x(ptr nocapture noundef %ep) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !687
  tail call void @arm_heavy_mb() #12
  %regs = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ep_rsp, i32 134217728) #12, !srcloc !450
  %stopped = getelementptr inbounds %struct.net2280_ep, ptr %ep, i32 0, i32 10
  %2 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %stopped, align 4
  %bf.set = and i32 %bf.load, -545
  %bf.clear2 = or i32 %bf.set, 512
  store i32 %bf.clear2, ptr %stopped, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @registers_show(ptr nocapture noundef readonly %_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %driver = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver7 = getelementptr inbounds %struct.usb_gadget_driver, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %driver7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s.0 = phi ptr [ %5, %if.then ], [ @.str.159, %entry.if.end_crit_edge ]
  %chiprev = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %chiprev to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chiprev, align 2
  %conv8 = zext i16 %7 to i32
  %regs = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !447
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !718
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %fifoctl = getelementptr inbounds %struct.net2280_regs, ptr %13, i32 0, i32 14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fifoctl) #12, !srcloc !447
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !719
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %pciirqenb0 = getelementptr inbounds %struct.net2280_regs, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb0) #12, !srcloc !447
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !720
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %pciirqenb1 = getelementptr inbounds %struct.net2280_regs, ptr %21, i32 0, i32 5
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pciirqenb1) #12, !srcloc !447
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !721
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %irqstat0 = getelementptr inbounds %struct.net2280_regs, ptr %25, i32 0, i32 10
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %irqstat0) #12, !srcloc !447
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !722
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %irqstat1 = getelementptr inbounds %struct.net2280_regs, ptr %29, i32 0, i32 11
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %irqstat1) #12, !srcloc !447
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !723
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.160, ptr noundef nonnull @driver_name, i32 noundef %conv8, i32 noundef %11, i32 noundef %15, ptr noundef %s.0, i32 noundef %19, i32 noundef %23, i32 noundef %27, i32 noundef %31) #12
  %sub = sub i32 4096, %call42
  %add.ptr = getelementptr i8, ptr %buf, i32 %call42
  %usb = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb, align 8
  %usbctl = getelementptr inbounds %struct.net2280_usb_regs, ptr %33, i32 0, i32 3
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbctl) #12, !srcloc !447
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !724
  %36 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb, align 8
  %usbstat = getelementptr inbounds %struct.net2280_usb_regs, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %usbstat) #12, !srcloc !447
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !725
  %and = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.end.if.end67_crit_edge, label %if.then55

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then55:                                        ; preds = %if.end
  %and56 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else59, label %if.then55.if.end67_crit_edge

if.then55.if.end67_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.else59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp60 = icmp eq i32 %41, 0
  %.str.162..str.163 = select i1 %cmp60, ptr @.str.162, ptr @.str.163
  br label %if.end67

if.end67:                                         ; preds = %if.else59, %if.then55.if.end67_crit_edge, %if.end.if.end67_crit_edge
  %s.1 = phi ptr [ @.str.161, %if.then55.if.end67_crit_edge ], [ %.str.162..str.163, %if.else59 ], [ @.str.164, %if.end.if.end67_crit_edge ]
  %42 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb, align 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #12, !srcloc !447
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !726
  %46 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb, align 8
  %ouraddr = getelementptr inbounds %struct.net2280_usb_regs, ptr %47, i32 0, i32 9
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ouraddr) #12, !srcloc !447
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !727
  %call80 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.165, i32 noundef %45, i32 noundef %35, i32 noundef %39, i32 noundef %49, ptr noundef nonnull %s.1) #12
  %sub81 = sub i32 %sub, %call80
  %add.ptr82 = getelementptr i8, ptr %add.ptr, i32 %call80
  %n_ep = getelementptr inbounds %struct.net2280, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp83341 = icmp sgt i32 %51, 0
  br i1 %cmp83341, label %if.end67.for.body_crit_edge, label %if.end67.for.end_crit_edge

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end67.for.body_crit_edge
  %next.0346 = phi ptr [ %next.1, %cleanup.for.body_crit_edge ], [ %add.ptr82, %if.end67.for.body_crit_edge ]
  %size.0344 = phi i32 [ %size.1, %cleanup.for.body_crit_edge ], [ %sub81, %if.end67.for.body_crit_edge ]
  %i.0342 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end67.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0342)
  %tobool86.not = icmp eq i32 %i.0342, 0
  br i1 %tobool86.not, label %for.body.if.end89_crit_edge, label %land.lhs.true

for.body.if.end89_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.true:                                    ; preds = %for.body
  %desc = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0342, i32 9
  %52 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc, align 4
  %tobool87.not = icmp eq ptr %53, null
  br i1 %tobool87.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end89_crit_edge

land.lhs.true.if.end89_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end89:                                         ; preds = %land.lhs.true.if.end89_crit_edge, %for.body.if.end89_crit_edge
  %cfg = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0342, i32 1
  %54 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #12, !srcloc !447
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !728
  %regs97 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0342, i32 2
  %58 = ptrtoint ptr %regs97 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs97, align 4
  %ep_rsp = getelementptr inbounds %struct.net2280_ep_regs, ptr %59, i32 0, i32 1
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_rsp) #12, !srcloc !447
  %61 = lshr i32 %60, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !729
  %name103 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0342, i32 0, i32 1
  %62 = ptrtoint ptr %name103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %tobool105.not = icmp sgt i32 %60, -1
  %cond = select i1 %tobool105.not, ptr @.str.98, ptr @.str.167
  %64 = and i32 %60, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool107.not = icmp eq i32 %64, 0
  %cond108 = select i1 %tobool107.not, ptr @.str.98, ptr @.str.168
  %65 = and i32 %60, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool110.not = icmp eq i32 %65, 0
  %cond111 = select i1 %tobool110.not, ptr @.str.98, ptr @.str.169
  %66 = and i32 %60, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool113.not = icmp eq i32 %66, 0
  %cond114 = select i1 %tobool113.not, ptr @.str.98, ptr @.str.170
  %67 = and i32 %60, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool116.not = icmp eq i32 %67, 0
  %cond117 = select i1 %tobool116.not, ptr @.str.98, ptr @.str.171
  %68 = and i32 %60, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool119.not = icmp eq i32 %68, 0
  %cond120 = select i1 %tobool119.not, ptr @.str.98, ptr @.str.172
  %69 = and i32 %60, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool122.not = icmp eq i32 %69, 0
  %cond123 = select i1 %tobool122.not, ptr @.str.174, ptr @.str.173
  %70 = and i32 %60, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool125.not = icmp eq i32 %70, 0
  %cond126 = select i1 %tobool125.not, ptr @.str.98, ptr @.str.175
  %71 = ptrtoint ptr %regs97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs97, align 4
  %ep_irqenb = getelementptr inbounds %struct.net2280_ep_regs, ptr %72, i32 0, i32 2
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_irqenb) #12, !srcloc !447
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !730
  %call133 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.0346, i32 noundef %size.0344, ptr noundef nonnull @.str.166, ptr noundef %63, i32 noundef %57, i32 noundef %61, ptr noundef nonnull %cond, ptr noundef nonnull %cond108, ptr noundef nonnull %cond111, ptr noundef nonnull %cond114, ptr noundef nonnull %cond117, ptr noundef nonnull %cond120, ptr noundef nonnull %cond123, ptr noundef nonnull %cond126, i32 noundef %74) #12
  %sub134 = sub i32 %size.0344, %call133
  %add.ptr135 = getelementptr i8, ptr %next.0346, i32 %call133
  %75 = ptrtoint ptr %regs97 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs97, align 4
  %ep_stat = getelementptr inbounds %struct.net2280_ep_regs, ptr %76, i32 0, i32 3
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_stat) #12, !srcloc !447
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !731
  %79 = ptrtoint ptr %regs97 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs97, align 4
  %ep_avail = getelementptr inbounds %struct.net2280_ep_regs, ptr %80, i32 0, i32 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_avail) #12, !srcloc !447
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !732
  %and148 = and i32 %57, 15
  %and149 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  %cond151 = select i1 %tobool150.not, ptr @.str.40, ptr @.str.39
  %shr = lshr i32 %57, 8
  %83 = and i32 %shr, 3
  %switch.tableidx = add nsw i32 %83, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %84 = icmp ult i32 %switch.tableidx, 3
  br i1 %84, label %switch.lookup, label %if.end89.type_string.exit_crit_edge

if.end89.type_string.exit_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %type_string.exit

switch.lookup:                                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.registers_show, i32 0, i32 %switch.tableidx
  %85 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %type_string.exit

type_string.exit:                                 ; preds = %switch.lookup, %if.end89.type_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.51, %if.end89.type_string.exit_crit_edge ]
  %stopped = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0342, i32 10
  %86 = ptrtoint ptr %stopped to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load = load i32, ptr %stopped, align 4
  %87 = and i32 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool154.not = icmp eq i32 %87, 0
  %cond155 = select i1 %tobool154.not, ptr @.str.98, ptr @.str.177
  %call156 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr135, i32 noundef %sub134, ptr noundef nonnull @.str.176, i32 noundef %78, i32 noundef %82, i32 noundef %and148, ptr noundef nonnull %cond151, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %cond155) #12
  %sub157 = sub i32 %sub134, %call156
  %add.ptr158 = getelementptr i8, ptr %add.ptr135, i32 %call156
  %dma = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.0342, i32 3
  %88 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dma, align 4
  %tobool159.not = icmp eq ptr %89, null
  br i1 %tobool159.not, label %type_string.exit.cleanup_crit_edge, label %if.end161

type_string.exit.cleanup_crit_edge:               ; preds = %type_string.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end161:                                        ; preds = %type_string.exit
  call void @__sanitizer_cov_trace_pc() #14
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %89) #12, !srcloc !447
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !733
  %92 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dma, align 4
  %dmastat = getelementptr inbounds %struct.net2280_dma_regs, ptr %93, i32 0, i32 1
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmastat) #12, !srcloc !447
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !734
  %96 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma, align 4
  %dmacount = getelementptr inbounds %struct.net2280_dma_regs, ptr %97, i32 0, i32 3
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacount) #12, !srcloc !447
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !735
  %100 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dma, align 4
  %dmaaddr = getelementptr inbounds %struct.net2280_dma_regs, ptr %101, i32 0, i32 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmaaddr) #12, !srcloc !447
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !736
  %104 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dma, align 4
  %dmadesc = getelementptr inbounds %struct.net2280_dma_regs, ptr %105, i32 0, i32 5
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmadesc) #12, !srcloc !447
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !737
  %call192 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr158, i32 noundef %sub157, ptr noundef nonnull @.str.178, i32 noundef %91, i32 noundef %95, i32 noundef %99, i32 noundef %103, i32 noundef %107) #12
  %sub193 = sub i32 %sub157, %call192
  %add.ptr194 = getelementptr i8, ptr %add.ptr158, i32 %call192
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %type_string.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %size.1 = phi i32 [ %sub193, %if.end161 ], [ %size.0344, %land.lhs.true.cleanup_crit_edge ], [ %sub157, %type_string.exit.cleanup_crit_edge ]
  %next.1 = phi ptr [ %add.ptr194, %if.end161 ], [ %next.0346, %land.lhs.true.cleanup_crit_edge ], [ %add.ptr158, %type_string.exit.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0342, 1
  %108 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_ep, align 8
  %cmp83 = icmp slt i32 %inc, %109
  br i1 %cmp83, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end67.for.end_crit_edge
  %size.0.lcssa = phi i32 [ %sub81, %if.end67.for.end_crit_edge ], [ %size.1, %cleanup.for.end_crit_edge ]
  %next.0.lcssa = phi ptr [ %add.ptr82, %if.end67.for.end_crit_edge ], [ %next.1, %cleanup.for.end_crit_edge ]
  %call195 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.0.lcssa, i32 noundef %size.0.lcssa, ptr noundef nonnull @.str.179) #12
  %sub196 = sub i32 %size.0.lcssa, %call195
  %add.ptr197 = getelementptr i8, ptr %next.0.lcssa, i32 %call195
  %110 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %n_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp200349 = icmp sgt i32 %111, 0
  br i1 %cmp200349, label %cleanup217.peel, label %for.end.for.end222_crit_edge

for.end.for.end222_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end222

cleanup217.peel:                                  ; preds = %for.end
  %name212.peel = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %112 = ptrtoint ptr %name212.peel to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name212.peel, align 4
  %irqs213.peel = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 0, i32 7
  %114 = ptrtoint ptr %irqs213.peel to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irqs213.peel, align 4
  %call214.peel = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr197, i32 noundef %sub196, ptr noundef nonnull @.str.180, ptr noundef %113, i32 noundef %115) #12
  %sub215.peel = sub i32 %sub196, %call214.peel
  %add.ptr216.peel = getelementptr i8, ptr %add.ptr197, i32 %call214.peel
  %116 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %n_ep, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp200.peel = icmp sgt i32 %117, 1
  br i1 %cmp200.peel, label %cleanup217.peel.land.lhs.true207_crit_edge, label %cleanup217.peel.for.end222_crit_edge

cleanup217.peel.for.end222_crit_edge:             ; preds = %cleanup217.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end222

cleanup217.peel.land.lhs.true207_crit_edge:       ; preds = %cleanup217.peel
  br label %land.lhs.true207

land.lhs.true207:                                 ; preds = %cleanup217.land.lhs.true207_crit_edge, %cleanup217.peel.land.lhs.true207_crit_edge
  %next.2354 = phi ptr [ %next.3, %cleanup217.land.lhs.true207_crit_edge ], [ %add.ptr216.peel, %cleanup217.peel.land.lhs.true207_crit_edge ]
  %size.2352 = phi i32 [ %size.3, %cleanup217.land.lhs.true207_crit_edge ], [ %sub215.peel, %cleanup217.peel.land.lhs.true207_crit_edge ]
  %i.1350 = phi i32 [ %inc221, %cleanup217.land.lhs.true207_crit_edge ], [ 1, %cleanup217.peel.land.lhs.true207_crit_edge ]
  %irqs = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.1350, i32 7
  %118 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool208.not = icmp eq i32 %119, 0
  br i1 %tobool208.not, label %land.lhs.true207.cleanup217_crit_edge, label %if.end210

land.lhs.true207.cleanup217_crit_edge:            ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup217

if.end210:                                        ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #14
  %name212 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.1350, i32 0, i32 1
  %120 = ptrtoint ptr %name212 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name212, align 4
  %irqs213 = getelementptr %struct.net2280, ptr %1, i32 0, i32 2, i32 %i.1350, i32 7
  %122 = ptrtoint ptr %irqs213 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irqs213, align 4
  %call214 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.2354, i32 noundef %size.2352, ptr noundef nonnull @.str.180, ptr noundef %121, i32 noundef %123) #12
  %sub215 = sub i32 %size.2352, %call214
  %add.ptr216 = getelementptr i8, ptr %next.2354, i32 %call214
  br label %cleanup217

cleanup217:                                       ; preds = %if.end210, %land.lhs.true207.cleanup217_crit_edge
  %size.3 = phi i32 [ %sub215, %if.end210 ], [ %size.2352, %land.lhs.true207.cleanup217_crit_edge ]
  %next.3 = phi ptr [ %add.ptr216, %if.end210 ], [ %next.2354, %land.lhs.true207.cleanup217_crit_edge ]
  %inc221 = add nuw nsw i32 %i.1350, 1
  %124 = ptrtoint ptr %n_ep to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %n_ep, align 8
  %cmp200 = icmp slt i32 %inc221, %125
  br i1 %cmp200, label %cleanup217.land.lhs.true207_crit_edge, label %cleanup217.for.end222_crit_edge, !llvm.loop !738

cleanup217.for.end222_crit_edge:                  ; preds = %cleanup217
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end222

cleanup217.land.lhs.true207_crit_edge:            ; preds = %cleanup217
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true207

for.end222:                                       ; preds = %cleanup217.for.end222_crit_edge, %cleanup217.peel.for.end222_crit_edge, %for.end.for.end222_crit_edge
  %size.2.lcssa = phi i32 [ %sub196, %for.end.for.end222_crit_edge ], [ %sub215.peel, %cleanup217.peel.for.end222_crit_edge ], [ %size.3, %cleanup217.for.end222_crit_edge ]
  %next.2.lcssa = phi ptr [ %add.ptr197, %for.end.for.end222_crit_edge ], [ %add.ptr216.peel, %cleanup217.peel.for.end222_crit_edge ], [ %next.3, %cleanup217.for.end222_crit_edge ]
  %call223 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.2.lcssa, i32 noundef %size.2.lcssa, ptr noundef nonnull @.str.181) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  %sub224.neg = sub i32 4096, %size.2.lcssa
  %sub227 = add i32 %sub224.neg, %call223
  ret i32 %sub227
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !81, !82, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !187, !188, !189, !191, !193, !195, !197, !198, !199, !200, !202, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !270, !272, !273, !274, !275, !276, !277, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !306, !308, !310, !312, !313, !314, !316, !317, !319, !320, !322, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !369, !371, !373, !374, !375, !377, !378, !380, !381, !383, !385, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !435, !436}
!llvm.module.flags = !{!437, !438, !439, !440, !441, !442, !443, !444}
!llvm.ident = !{!445}

!0 = !{ptr @__param_fifo_mode, !1, !"__param_fifo_mode", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 133, i32 1}
!2 = !{ptr @__UNIQUE_ID_fifo_modetype236, !1, !"__UNIQUE_ID_fifo_modetype236", i1 false, i1 false}
!3 = !{ptr @__param_enable_suspend, !4, !"__param_enable_suspend", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 143, i32 1}
!5 = !{ptr @__UNIQUE_ID_enable_suspendtype237, !4, !"__UNIQUE_ID_enable_suspendtype237", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_net2280__275_3886_net2280_pci_driver_init6, !7, !"__initcall__kmod_net2280__275_3886_net2280_pci_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3886, i32 1}
!8 = !{ptr @__exitcall_net2280_pci_driver_exit, !7, !"__exitcall_net2280_pci_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description276, !10, !"__UNIQUE_ID_description276", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3888, i32 1}
!11 = !{ptr @__UNIQUE_ID_author277, !12, !"__UNIQUE_ID_author277", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3889, i32 1}
!13 = !{ptr @__UNIQUE_ID_file278, !14, !"__UNIQUE_ID_file278", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3890, i32 1}
!15 = !{ptr @__UNIQUE_ID_license279, !14, !"__UNIQUE_ID_license279", i1 false, i1 false}
!16 = !{ptr @fifo_mode, !17, !"fifo_mode", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 130, i32 15}
!18 = !{ptr @enable_suspend, !19, !"enable_suspend", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 140, i32 13}
!20 = !{ptr @__param_str_fifo_mode, !1, !"__param_str_fifo_mode", i1 false, i1 false}
!21 = !{ptr @__param_str_enable_suspend, !4, !"__param_str_enable_suspend", i1 false, i1 false}
!22 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @net2280_pci_driver, !24, !"net2280_pci_driver", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3875, i32 26}
!25 = !{ptr @driver_name, !26, !"driver_name", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 69, i32 19}
!27 = !{ptr @pci_ids, !28, !"pci_ids", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3826, i32 35}
!29 = !{ptr @net2280_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3642, i32 2}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3666, i32 3}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @net2280_probe.__UNIQUE_ID_ddebug271, !33, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3678, i32 3}
!39 = !{ptr @net2280_probe.__UNIQUE_ID_ddebug272, !38, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3722, i32 3}
!42 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @net2280_probe._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @net2280_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3729, i32 4}
!48 = !{ptr @net2280_probe._entry.9, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @net2280_probe._entry_ptr.11, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3733, i32 3}
!52 = !{ptr @net2280_probe._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @net2280_probe._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3741, i32 34}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3746, i32 3}
!58 = !{ptr @net2280_probe.__UNIQUE_ID_ddebug273, !57, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3756, i32 4}
!61 = !{ptr @net2280_probe.__UNIQUE_ID_ddebug274, !60, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3783, i32 2}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @net2280_probe._entry.18, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @net2280_probe._entry_ptr.21, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3784, i32 2}
!69 = !{ptr @net2280_probe._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @net2280_probe._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3786, i32 2}
!73 = !{ptr @net2280_probe._entry.25, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @net2280_probe._entry_ptr.27, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @net2280_ops, !78, !"net2280_ops", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1622, i32 36}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1176, i32 5}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @scan_dma_completions._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @scan_dma_completions._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1184, i32 6}
!87 = !{ptr @scan_dma_completions.__UNIQUE_ID_ddebug248, !86, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 970, i32 3}
!90 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @done.__UNIQUE_ID_ddebug245, !89, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1653, i32 8}
!94 = !{ptr @dev_attr_function, !93, !"dev_attr_function", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1896, i32 8}
!97 = !{ptr @dev_attr_queues, !96, !"dev_attr_queues", i1 false, i1 false}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1833, i32 5}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1835, i32 24}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1835, i32 31}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1838, i32 15}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1838, i32 23}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1841, i32 30}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1849, i32 30}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1859, i32 6}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1866, i32 6}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1878, i32 31}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 150, i32 38}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 151, i32 38}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 152, i32 37}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 154, i32 9}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1995, i32 2}
!128 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @defect7374_enable_data_eps_zero._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @defect7374_enable_data_eps_zero._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1996, i32 2}
!133 = !{ptr @defect7374_enable_data_eps_zero._entry.54, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @defect7374_enable_data_eps_zero._entry_ptr.56, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1561, i32 40}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1564, i32 40}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1575, i32 40}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1578, i32 40}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1583, i32 40}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1586, i32 40}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1591, i32 40}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1594, i32 40}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1599, i32 40}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1602, i32 40}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1608, i32 31}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 87, i32 2}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 89, i32 2}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 91, i32 2}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 93, i32 2}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 99, i32 2}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 101, i32 2}
!169 = !{ptr @ep_info_dft, !170, !"ep_info_dft", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 84, i32 3}
!171 = !{ptr @ep0name, !172, !"ep0name", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 73, i32 19}
!173 = !{ptr @net2280_ep_ops, !174, !"net2280_ep_ops", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1448, i32 32}
!175 = distinct !{null, !176, !"ep_key", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 190, i32 19}
!177 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 196, i32 3}
!179 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @net2280_enable._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @net2280_enable._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 347, i32 2}
!184 = !{ptr @net2280_enable.__UNIQUE_ID_ddebug238, !183, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!185 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 357, i32 2}
!187 = !{ptr @net2280_enable._entry.77, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @net2280_enable._entry_ptr.79, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @set_max_speed.ep_enhanced, !190, !"ep_enhanced", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/udc/net2280.h", i32 365, i32 19}
!191 = !{ptr @ep_clear_seqnum.ep_pl, !192, !"ep_pl", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2858, i32 19}
!193 = !{ptr @ep_bit, !194, !"ep_bit", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 72, i32 18}
!195 = !{ptr @.str.80, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 519, i32 3}
!197 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @net2280_disable._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @net2280_disable._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 530, i32 2}
!202 = !{ptr @net2280_disable.__UNIQUE_ID_ddebug239, !201, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!203 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 477, i32 4}
!205 = !{ptr @.str.84, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @ep_reset_338x._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @ep_reset_338x._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 552, i32 3}
!210 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @net2280_alloc_request._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @net2280_alloc_request._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 587, i32 3}
!215 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @net2280_free_request._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @net2280_free_request._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 998, i32 3}
!220 = !{ptr @.str.90, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @net2280_queue._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @net2280_queue._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.91, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1031, i32 2}
!225 = !{ptr @net2280_queue.__UNIQUE_ID_ddebug246, !224, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!226 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1052, i32 5}
!228 = !{ptr @net2280_queue.__UNIQUE_ID_ddebug247, !227, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!229 = !{ptr @net2280_queue._entry.93, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1120, i32 2}
!231 = !{ptr @net2280_queue._entry_ptr.94, !230, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 631, i32 2}
!234 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @write_fifo.__UNIQUE_ID_ddebug240, !233, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!236 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.98, !233, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 749, i32 4}
!240 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @read_fifo._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @read_fifo._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.101, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 764, i32 2}
!245 = !{ptr @read_fifo.__UNIQUE_ID_ddebug242, !244, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!246 = !{ptr @.str.102, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.103, !244, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.104, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 677, i32 3}
!250 = !{ptr @.str.105, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @out_flush.__UNIQUE_ID_ddebug241, !249, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!252 = !{ptr @.str.106, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1250, i32 3}
!254 = !{ptr @.str.107, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @net2280_dequeue._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @net2280_dequeue._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.108, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1276, i32 3}
!259 = !{ptr @net2280_dequeue.__UNIQUE_ID_ddebug249, !258, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!260 = !{ptr @.str.109, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1283, i32 4}
!262 = !{ptr @net2280_dequeue.__UNIQUE_ID_ddebug250, !261, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!263 = !{ptr @.str.110, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1294, i32 4}
!265 = !{ptr @net2280_dequeue.__UNIQUE_ID_ddebug251, !264, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1335, i32 3}
!268 = !{ptr @net2280_set_halt_and_wedge._entry, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @net2280_set_halt_and_wedge._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.112, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1356, i32 3}
!272 = !{ptr @net2280_set_halt_and_wedge.__UNIQUE_ID_ddebug252, !271, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!273 = !{ptr @.str.113, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.114, !271, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.115, !271, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.116, !271, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @net2280_set_halt_and_wedge._entry.117, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1383, i32 2}
!279 = !{ptr @net2280_set_halt_and_wedge._entry_ptr.118, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.119, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1395, i32 3}
!282 = !{ptr @.str.120, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @net2280_set_wedge._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @net2280_set_wedge._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.121, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1408, i32 3}
!287 = !{ptr @net2280_fifo_status._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @net2280_fifo_status._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.123, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1412, i32 3}
!291 = !{ptr @net2280_fifo_status._entry.122, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @net2280_fifo_status._entry_ptr.124, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.126, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1420, i32 3}
!295 = !{ptr @net2280_fifo_status._entry.125, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @net2280_fifo_status._entry_ptr.127, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.128, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1434, i32 3}
!299 = !{ptr @net2280_fifo_flush._entry, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @net2280_fifo_flush._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @net2280_fifo_flush._entry.129, !302, !"_entry", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1438, i32 3}
!303 = !{ptr @net2280_fifo_flush._entry_ptr.130, !302, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @usb_reinit_338x.ne, !305, !"ne", i1 false, i1 false}
!305 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2197, i32 19}
!306 = !{ptr @usb_reinit_338x.ep_reg_addr, !307, !"ep_reg_addr", i1 false, i1 false}
!307 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2198, i32 19}
!308 = !{ptr @ep_info_adv, !309, !"ep_info_adv", i1 false, i1 false}
!309 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 103, i32 4}
!310 = !{ptr @.str.131, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3394, i32 5}
!312 = !{ptr @.str.132, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug267, !311, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!314 = !{ptr @.str.133, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3400, i32 5}
!316 = !{ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug268, !315, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!317 = !{ptr @.str.134, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3499, i32 4}
!319 = !{ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug269, !318, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!320 = !{ptr @.str.135, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3529, i32 3}
!322 = !{ptr @handle_stat1_irqs._entry, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @handle_stat1_irqs._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.136, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3540, i32 3}
!326 = !{ptr @handle_stat1_irqs.__UNIQUE_ID_ddebug270, !325, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!327 = !{ptr @.str.137, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3134, i32 4}
!329 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug259, !328, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!330 = !{ptr @.str.138, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3240, i32 4}
!332 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug260, !331, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!333 = !{ptr @.str.139, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3256, i32 5}
!335 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug261, !334, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!336 = !{ptr @.str.140, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3259, i32 5}
!338 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug262, !337, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!339 = !{ptr @.str.141, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3286, i32 4}
!341 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug263, !340, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!342 = !{ptr @.str.142, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3292, i32 4}
!344 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug264, !343, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!345 = !{ptr @.str.143, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3308, i32 4}
!347 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug265, !346, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!348 = !{ptr @.str.144, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3352, i32 3}
!350 = !{ptr @handle_stat0_irqs.__UNIQUE_ID_ddebug266, !349, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!351 = !{ptr @.str.145, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2832, i32 3}
!353 = !{ptr @.str.146, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @defect7374_workaround._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @defect7374_workaround._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.148, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2834, i32 3}
!358 = !{ptr @defect7374_workaround._entry.147, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @defect7374_workaround._entry_ptr.149, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.151, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2837, i32 3}
!362 = !{ptr @defect7374_workaround._entry.150, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @defect7374_workaround._entry_ptr.152, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.153, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2965, i32 4}
!366 = !{ptr @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug256, !365, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!367 = !{ptr @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug257, !368, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!368 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3048, i32 3}
!369 = !{ptr @handle_stat0_irqs_superspeed.__UNIQUE_ID_ddebug258, !370, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!370 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3062, i32 3}
!371 = !{ptr @.str.154, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2539, i32 2}
!373 = !{ptr @.str.155, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @handle_ep_small.__UNIQUE_ID_ddebug253, !372, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!375 = !{ptr @.str.156, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2656, i32 7}
!377 = !{ptr @handle_ep_small.__UNIQUE_ID_ddebug254, !376, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!378 = !{ptr @.str.157, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 2698, i32 4}
!380 = !{ptr @handle_ep_small.__UNIQUE_ID_ddebug255, !379, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!381 = !{ptr @driver_desc, !382, !"driver_desc", i1 false, i1 false}
!382 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 70, i32 19}
!383 = !{ptr @.str.158, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1804, i32 8}
!385 = !{ptr @dev_attr_registers, !384, !"dev_attr_registers", i1 false, i1 false}
!386 = !{ptr @.str.159, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1674, i32 7}
!388 = !{ptr @.str.160, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1677, i32 28}
!390 = !{ptr @.str.161, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1698, i32 8}
!392 = !{ptr @.str.162, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1700, i32 8}
!394 = !{ptr @.str.163, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1702, i32 8}
!396 = !{ptr @.str.164, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1705, i32 8}
!398 = !{ptr @.str.165, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1707, i32 4}
!400 = !{ptr @.str.166, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1729, i32 5}
!402 = !{ptr @.str.167, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1733, i32 8}
!404 = !{ptr @.str.168, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1735, i32 8}
!406 = !{ptr @.str.169, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1737, i32 8}
!408 = !{ptr @.str.170, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1739, i32 8}
!410 = !{ptr @.str.171, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1741, i32 8}
!412 = !{ptr @.str.172, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1743, i32 8}
!414 = !{ptr @.str.173, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1745, i32 8}
!416 = !{ptr @.str.174, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1745, i32 19}
!418 = !{ptr @.str.175, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1747, i32 8}
!420 = !{ptr @.str.176, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1753, i32 5}
!422 = !{ptr @.str.177, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1759, i32 19}
!424 = !{ptr @.str.178, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1767, i32 5}
!426 = !{ptr @.str.179, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1782, i32 28}
!428 = !{ptr @.str.180, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1791, i32 29}
!430 = !{ptr @.str.181, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 1796, i32 28}
!432 = !{ptr @.str.182, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/usb/gadget/udc/net2280.c", i32 3618, i32 2}
!434 = !{ptr @.str.183, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @net2280_remove._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @net2280_remove._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{i32 1, !"wchar_size", i32 2}
!438 = !{i32 1, !"min_enum_size", i32 4}
!439 = !{i32 8, !"branch-target-enforcement", i32 0}
!440 = !{i32 8, !"sign-return-address", i32 0}
!441 = !{i32 8, !"sign-return-address-all", i32 0}
!442 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!443 = !{i32 7, !"uwtable", i32 1}
!444 = !{i32 7, !"frame-pointer", i32 2}
!445 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!446 = !{i64 2149054420, i64 2149054425, i64 2149054438, i64 2149054482, i64 2149054516, i64 2149054537}
!447 = !{i64 5081268}
!448 = !{i64 2155073843}
!449 = !{i64 2154683870}
!450 = !{i64 5080850}
!451 = !{i64 2154684522}
!452 = !{i64 2155074170}
!453 = !{i64 2155074551}
!454 = !{i64 2155085648}
!455 = !{!"branch_weights", i32 2000, i32 1}
!456 = !{i64 2155064107, i64 2155064605, i64 2155064144, i64 2155064200, i64 2155064234, i64 2155064258, i64 2155064299, i64 2155064320, i64 2155064348, i64 2155064382}
!457 = !{i64 2154695113}
!458 = !{i64 2154696032}
!459 = !{i64 2155091779}
!460 = !{i64 2155092170}
!461 = !{i64 2155092556}
!462 = !{i64 2154905840}
!463 = !{i64 2154906226}
!464 = !{i64 2154906617}
!465 = !{i64 2154907007}
!466 = !{i64 2154907507}
!467 = !{i64 2154908272}
!468 = !{i64 2154908796}
!469 = !{i64 2154890176}
!470 = !{i64 2154909671}
!471 = !{i64 2154910057}
!472 = !{i64 2154910448}
!473 = !{i64 2154910933}
!474 = !{i64 2154911383}
!475 = !{i64 2154911763}
!476 = !{i64 2154912154}
!477 = !{i64 2154912823}
!478 = !{i64 2154913347}
!479 = !{i64 2154913827}
!480 = !{i64 2154914219}
!481 = !{i64 2154914905}
!482 = !{i64 2154915355}
!483 = !{i64 2154916045}
!484 = !{i64 2154916271}
!485 = !{i64 2154916962}
!486 = !{i64 2154917186}
!487 = !{i64 2154917909}
!488 = !{i64 2154918143}
!489 = !{i64 2154918874}
!490 = !{i64 2154919106}
!491 = !{i64 2154919833}
!492 = !{i64 2154920091}
!493 = !{i64 2154920897}
!494 = !{i64 2154921203}
!495 = !{i64 2154921611}
!496 = !{i64 2154922010}
!497 = !{i64 2154922409}
!498 = !{i64 2154922808}
!499 = !{i64 2154923207}
!500 = !{i64 2154923606}
!501 = !{i64 2155059998}
!502 = !{i64 2155060575}
!503 = !{i64 2155061073}
!504 = !{i64 2155061661}
!505 = !{i64 2155061900}
!506 = !{i64 2155062366}
!507 = !{i64 2154866376}
!508 = !{i64 2154866769}
!509 = !{i64 2154869034}
!510 = !{i64 2154869402}
!511 = !{i64 2154871597}
!512 = !{i64 2154871918}
!513 = !{i64 2154872506}
!514 = !{i64 2154693583}
!515 = !{i64 2154693803}
!516 = !{i64 2154924403}
!517 = !{i64 2154925587}
!518 = !{i64 2154926873}
!519 = !{i64 2154927907}
!520 = !{i64 2154929223}
!521 = !{i64 2154930513}
!522 = !{i64 2154930943}
!523 = !{i64 2154932150}
!524 = !{i64 2154933321}
!525 = !{i64 2154934193}
!526 = !{i64 2154935179}
!527 = !{i64 2154936190}
!528 = !{!"branch_weights", i32 1, i32 2000}
!529 = !{i64 2154818762}
!530 = !{i64 2154722413}
!531 = !{i64 2154722843}
!532 = !{i64 2154777819}
!533 = !{i64 2154778758}
!534 = !{i64 2154810788}
!535 = !{i64 2154811421}
!536 = !{i64 2154812005}
!537 = !{i64 2154814317}
!538 = !{i64 2154899181}
!539 = !{i64 2154899660}
!540 = !{i64 2154900055}
!541 = !{i64 2154900450}
!542 = !{i64 2154900845}
!543 = !{i64 2154901537}
!544 = !{i64 2154901783}
!545 = !{i64 2154902554}
!546 = !{i64 2154902854}
!547 = !{i64 2154903554}
!548 = !{i64 2154903853}
!549 = !{i64 2154904550}
!550 = !{i64 2154904850}
!551 = !{i64 2154684904}
!552 = !{i64 2154685295}
!553 = !{i64 2154888718}
!554 = !{i64 2154889208}
!555 = !{i64 2154723674}
!556 = !{i64 2154724377}
!557 = !{i64 2154725296}
!558 = !{i64 2154725591}
!559 = !{i64 2154726252}
!560 = !{i64 2154726553}
!561 = !{i64 2154726943}
!562 = !{i64 2154728185}
!563 = !{i64 2154730224}
!564 = !{i64 2154705074}
!565 = !{i64 2154705886}
!566 = !{i64 2154706501}
!567 = !{i64 2154707245}
!568 = !{i64 2154707563}
!569 = !{i64 2154708317}
!570 = !{i64 2154972046}
!571 = !{i64 2154972267}
!572 = !{i64 2154972749}
!573 = !{i64 2154708949}
!574 = !{i64 2154700854}
!575 = !{i64 2154701329}
!576 = !{i64 2154709857}
!577 = !{i64 2154710074}
!578 = !{i64 2154710845}
!579 = !{i64 2154711064}
!580 = !{i64 2154711543}
!581 = !{i64 2154747135}
!582 = !{i64 2154803295}
!583 = !{i64 2154686206}
!584 = !{i64 2154806246}
!585 = !{i64 2154806839}
!586 = !{i64 2154807231}
!587 = !{i64 2154775799}
!588 = !{i64 2154824100}
!589 = !{i64 2154832703}
!590 = !{i64 2154835348}
!591 = !{i64 2154851474}
!592 = !{i64 2154862086}
!593 = !{i64 2154862820}
!594 = !{i64 2154731811}
!595 = !{i64 2154732627}
!596 = !{i64 2154733642}
!597 = !{i64 2154735632}
!598 = !{i64 2154736296}
!599 = !{i64 2154736599}
!600 = !{i64 2154737260}
!601 = !{i64 2154737561}
!602 = !{i64 2154737951}
!603 = !{i64 2154739084}
!604 = !{i64 2154740357}
!605 = !{i64 2154740855}
!606 = !{i64 2154784167}
!607 = !{i64 2154784772}
!608 = !{i64 2154785430}
!609 = !{i64 2154785823}
!610 = !{i64 2154786565}
!611 = !{i64 2154787485}
!612 = !{i64 2154788364}
!613 = !{i64 2154788595}
!614 = !{i64 2154790655}
!615 = !{i64 2154791230}
!616 = !{i64 2154791783}
!617 = !{i64 2154699355}
!618 = !{i64 2154699747}
!619 = !{i64 2154779256}
!620 = !{i64 2154780348}
!621 = !{i64 2154781227}
!622 = !{i64 2154781452}
!623 = !{i64 2154782003}
!624 = !{i64 2154782696}
!625 = !{i64 2154783007}
!626 = !{i64 939331}
!627 = !{i64 2154757780}
!628 = !{i64 2154696456}
!629 = !{i64 5080653}
!630 = !{i64 2154697012}
!631 = !{i64 2154697248}
!632 = !{i64 2154758432}
!633 = !{i64 2154765291}
!634 = !{i64 2154697960}
!635 = !{i64 2154698696}
!636 = !{i64 2154765953}
!637 = !{i64 2154767017}
!638 = !{i64 2154767495}
!639 = !{i64 2154773318}
!640 = !{i64 2154774092}
!641 = !{i64 2154774407}
!642 = !{i64 2154775140}
!643 = !{i64 2154759042}
!644 = !{i64 2154761926}
!645 = !{i64 2154762586}
!646 = !{i64 2154763214}
!647 = !{i64 2154763592}
!648 = !{i64 2154764030}
!649 = !{i64 2154688045}
!650 = !{i64 2154689262}
!651 = !{i64 2154843265}
!652 = !{i64 2155037055}
!653 = !{i64 2155037796}
!654 = !{i64 2155044943}
!655 = !{i64 2155047627}
!656 = !{i8 0, i8 2}
!657 = !{i64 2155048177}
!658 = !{i64 2155050441}
!659 = !{i64 2155050651}
!660 = !{i64 2155051378}
!661 = !{i64 2155054502}
!662 = !{!"auto-init"}
!663 = !{i64 2155004085}
!664 = !{i64 2155009955}
!665 = !{i64 2155011727}
!666 = !{i64 2155012225}
!667 = !{i64 2155012705}
!668 = !{i64 2155013725}
!669 = !{i64 2155014742}
!670 = !{i64 2155015221}
!671 = !{i64 2155015798}
!672 = !{i64 2155031010}
!673 = !{i64 2154691911}
!674 = !{i64 2154692743}
!675 = !{i64 2154963296}
!676 = !{i64 2154963938}
!677 = !{i64 2154890621}
!678 = !{i64 2154891004}
!679 = !{i64 2154891690}
!680 = !{i64 2154891936}
!681 = !{i64 2154892711}
!682 = !{i64 2154893014}
!683 = !{i64 2154893723}
!684 = !{i64 2154894027}
!685 = !{i64 2154973413}
!686 = !{i64 2154973827}
!687 = !{i64 2154687117}
!688 = !{i64 2154974718}
!689 = !{i64 2154975015}
!690 = !{i64 2154975429}
!691 = !{i64 2154976932}
!692 = !{i64 2154977923}
!693 = !{i64 2154979065}
!694 = !{i64 2154980056}
!695 = !{i64 2154981198}
!696 = !{i64 2154982189}
!697 = !{i64 2154983454}
!698 = !{i64 2154984423}
!699 = !{i64 2154988445}
!700 = !{i64 2154989420}
!701 = !{i64 2154990546}
!702 = !{i64 2154991521}
!703 = !{i64 2154992647}
!704 = !{i64 2154993622}
!705 = !{i64 2154994872}
!706 = !{i64 2154995827}
!707 = !{i64 2155000234}
!708 = !{i64 2154942204}
!709 = !{i64 2154945299}
!710 = !{i64 2154945778}
!711 = !{i64 2154949082}
!712 = !{i64 2154949580}
!713 = !{i64 2154950078}
!714 = !{i64 2154950568}
!715 = !{i64 2154946969}
!716 = !{i64 2154954105}
!717 = !{i64 2154954877}
!718 = !{i64 2154874124}
!719 = !{i64 2154874618}
!720 = !{i64 2154875124}
!721 = !{i64 2154875630}
!722 = !{i64 2154876128}
!723 = !{i64 2154876626}
!724 = !{i64 2154877112}
!725 = !{i64 2154877602}
!726 = !{i64 2154878244}
!727 = !{i64 2154878734}
!728 = !{i64 2154879216}
!729 = !{i64 2154879702}
!730 = !{i64 2154880816}
!731 = !{i64 2154881306}
!732 = !{i64 2154881800}
!733 = !{i64 2154882333}
!734 = !{i64 2154882819}
!735 = !{i64 2154883309}
!736 = !{i64 2154883795}
!737 = !{i64 2154884281}
!738 = distinct !{!738, !739}
!739 = !{!"llvm.loop.peeled.count", i32 1}
