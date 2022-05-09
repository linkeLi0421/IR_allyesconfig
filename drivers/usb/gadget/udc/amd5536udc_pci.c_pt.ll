; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/amd5536udc_pci.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/amd5536udc_pci.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.udc = type { %struct.usb_gadget, %struct.spinlock, [32 x %struct.udc_ep], ptr, i8, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i16, i16, i16, ptr, ptr, ptr, %struct.extcon_specific_cable_nb, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.udc_ep = type { %struct.usb_ep, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, %struct.list_head, i32, i32, i24 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.extcon_specific_cable_nb = type { ptr, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_use_dma = internal constant [23 x i8] c"amd5536udc_pci.use_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_dma = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype236 = internal constant [37 x i8] c"amd5536udc_pci.parmtype=use_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma237 = internal constant [41 x i8] c"amd5536udc_pci.parm=use_dma:true for DMA\00", section ".modinfo", align 1
@__param_str_use_dma_ppb = internal constant [27 x i8] c"amd5536udc_pci.use_dma_ppb\00", align 1
@use_dma_ppb = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_dma_ppb = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_dma_ppb } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppbtype238 = internal constant [41 x i8] c"amd5536udc_pci.parmtype=use_dma_ppb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb239 = internal constant [71 x i8] c"amd5536udc_pci.parm=use_dma_ppb:true for DMA in packet per buffer mode\00", section ".modinfo", align 1
@__param_str_use_dma_ppb_du = internal constant [30 x i8] c"amd5536udc_pci.use_dma_ppb_du\00", align 1
@use_dma_ppb_du = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_dma_ppb_du = internal constant %struct.kernel_param { ptr @__param_str_use_dma_ppb_du, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_dma_ppb_du } }, section "__param", align 4
@__UNIQUE_ID_use_dma_ppb_dutype240 = internal constant [44 x i8] c"amd5536udc_pci.parmtype=use_dma_ppb_du:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma_ppb_du241 = internal constant [97 x i8] c"amd5536udc_pci.parm=use_dma_ppb_du:true for DMA in packet per buffer mode with descriptor update\00", section ".modinfo", align 1
@__param_str_use_fullspeed = internal constant [29 x i8] c"amd5536udc_pci.use_fullspeed\00", align 1
@use_fullspeed = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_fullspeed = internal constant %struct.kernel_param { ptr @__param_str_use_fullspeed, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_fullspeed } }, section "__param", align 4
@__UNIQUE_ID_use_fullspeedtype242 = internal constant [43 x i8] c"amd5536udc_pci.parmtype=use_fullspeed:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_fullspeed243 = internal constant [58 x i8] c"amd5536udc_pci.parm=use_fullspeed:true for fullspeed only\00", section ".modinfo", align 1
@__initcall__kmod_amd5536udc_pci__248_209_udc_pci_driver_init6 = internal global ptr @udc_pci_driver_init, section ".initcall6.init", align 4
@udc_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @name, ptr @pci_id, ptr @udc_pci_probe, ptr @udc_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_udc_pci_driver_exit = internal global ptr @udc_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"amd5536udc_pci.description=AMD 5536 UDC - USB Device Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"amd5536udc_pci.author=Thomas Dahlmann\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [58 x i8] c"amd5536udc_pci.file=drivers/usb/gadget/udc/amd5536udc_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [27 x i8] c"amd5536udc_pci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amd5536udc_pci\00", [17 x i8] zeroinitializer }, align 32
@name = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amd5536udc-pci\00", [17 x i8] zeroinitializer }, align 32
@pci_id = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 8342, i32 -1, i32 -1, i32 787454, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"udc_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/usb/gadget/udc/amd5536udc_pci.c\00", [56 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@udc_pci_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci device used already\0A\00", [39 x i8] zeroinitializer }, align 32
@udc_pci_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"start address cannot be mapped\0A\00", [32 x i8] zeroinitializer }, align 32
@udc_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 126, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"irq not set\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@udc_pci_probe._entry_ptr = internal global ptr @udc_pci_probe._entry, section ".printk_index", align 4
@udc_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@udc_pci_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_irq(%d) fail\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 599, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"use_dma_ppb\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 601, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"use_dma_ppb_du\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 603, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"use_fullspeed\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [39 x i8] c"../drivers/usb/gadget/udc/amd5536udc.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 605, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"udc_pci_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 203, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 209, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 52, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"pci_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 192, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 93, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 113, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 120, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 126, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 131, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [43 x i8] c"../drivers/usb/gadget/udc/amd5536udc_pci.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 143, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__UNIQUE_ID_use_dma237, ptr @__UNIQUE_ID_use_dma_ppb239, ptr @__UNIQUE_ID_use_dma_ppb_du241, ptr @__UNIQUE_ID_use_dma_ppb_dutype240, ptr @__UNIQUE_ID_use_dma_ppbtype238, ptr @__UNIQUE_ID_use_dmatype236, ptr @__UNIQUE_ID_use_fullspeed243, ptr @__UNIQUE_ID_use_fullspeedtype242, ptr @__exitcall_udc_pci_driver_exit, ptr @__initcall__kmod_amd5536udc_pci__248_209_udc_pci_driver_init6, ptr @__param_use_dma, ptr @__param_use_dma_ppb, ptr @__param_use_dma_ppb_du, ptr @__param_use_fullspeed, ptr @udc_pci_driver_exit, ptr @udc_pci_probe._entry, ptr @udc_pci_probe._entry_ptr, ptr @use_dma, ptr @use_dma_ppb, ptr @use_dma_ppb_du, ptr @use_fullspeed, ptr @udc_pci_driver, ptr @.str, ptr @name, ptr @pci_id, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @udc_pci_probe.__key, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma_ppb to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma_ppb_du to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_fullspeed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udc_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @udc_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udc_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @udc_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udc_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5144) #8
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.err_pcidev_crit_edge, label %if.end15

if.end12.err_pcidev_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pcidev

if.end15:                                         ; preds = %if.end12
  %resource16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %1 = ptrtoint ptr %resource16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %resource16, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp19 = icmp eq i32 %4, 0
  %sub = sub i32 1, %2
  %add = add i32 %sub, %4
  %cond = select i1 %cmp19, i32 0, i32 %add
  %call26 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %cond, ptr noundef nonnull @name, i32 noundef 0) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.body29, label %if.end48

do.body29:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_pci_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_pci_probe, %err_memreg)) #5
          to label %if.then43 [label %err_memreg], !srcloc !83

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_pci_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev44, ptr noundef nonnull @.str.4) #5
  br label %err_memreg

if.end48:                                         ; preds = %if.end15
  %call49 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %cond) #5
  %virt_addr = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call49, ptr %virt_addr, align 8
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.body53, label %if.end72

do.body53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_pci_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_pci_probe, %err_ioremap)) #5
          to label %if.then67 [label %err_ioremap], !srcloc !83

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_pci_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev68, ptr noundef nonnull @.str.5) #5
  br label %err_ioremap

if.end72:                                         ; preds = %if.end48
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool73.not = icmp eq i32 %7, 0
  br i1 %tobool73.not, label %do.end77, label %do.body80

do.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.6) #9
  br label %err_irq

do.body80:                                        ; preds = %if.end72
  %lock = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @udc_pci_probe.__key, i16 noundef signext 3) #5
  %8 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 1280
  %csr = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %csr, align 8
  %add.ptr86 = getelementptr i8, ptr %9, i32 1024
  %regs = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr86, ptr %regs, align 4
  %ep_regs = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %ep_regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %ep_regs, align 8
  %add.ptr90 = getelementptr i8, ptr %9, i32 2048
  %rxfifo = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %rxfifo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr90, ptr %rxfifo, align 4
  %add.ptr92 = getelementptr i8, ptr %9, i32 3072
  %txfifo = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %txfifo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr92, ptr %txfifo, align 8
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @udc_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @name, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp95.not = icmp eq i32 %call.i, 0
  br i1 %cmp95.not, label %if.end117, label %do.body97

do.body97:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udc_pci_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@udc_pci_probe, %err_irq)) #5
          to label %if.then111 [label %err_irq], !srcloc !83

if.then111:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  %dev112 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @udc_pci_probe.__UNIQUE_ID_ddebug247, ptr noundef %dev112, ptr noundef nonnull @.str.10, i32 noundef %18) #5
  br label %err_irq

if.end117:                                        ; preds = %do.body80
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision, align 4
  %conv = zext i8 %21 to i16
  %chiprev = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %chiprev to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %chiprev, align 8
  tail call void @pci_set_master(ptr noundef %pdev) #5
  %call118 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #5
  %phys_addr = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %2, ptr %phys_addr, align 4
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %irq120 = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %irq120 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq120, align 4
  %pdev121 = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %pdev121 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pdev, ptr %pdev121, align 4
  %dev122 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev123 = getelementptr inbounds %struct.udc, ptr %call7.i.i, i32 0, i32 21
  %28 = ptrtoint ptr %dev123 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev122, ptr %dev123, align 8
  %29 = load i8, ptr @use_dma, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool124.not = icmp eq i8 %29, 0
  br i1 %tobool124.not, label %if.end117.if.end131_crit_edge, label %if.then125

if.end117.if.end131_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then125:                                       ; preds = %if.end117
  %call126 = tail call i32 @init_dma_pools(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127.not = icmp eq i32 %call126, 0
  br i1 %cmp127.not, label %if.then125.if.end131_crit_edge, label %if.then125.err_dma_crit_edge

if.then125.err_dma_crit_edge:                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dma

if.then125.if.end131_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.end131:                                        ; preds = %if.then125.if.end131_crit_edge, %if.end117.if.end131_crit_edge
  %call132 = tail call i32 @udc_probe(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end131.cleanup_crit_edge, label %if.then134

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then134:                                       ; preds = %if.end131
  %30 = load i8, ptr @use_dma, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool136.not = icmp eq i8 %30, 0
  br i1 %tobool136.not, label %if.then134.err_dma_crit_edge, label %if.then137

if.then134.err_dma_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_dma

if.then137:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @free_dma_pools(ptr noundef nonnull %call7.i.i) #5
  br label %err_dma

err_dma:                                          ; preds = %if.then137, %if.then134.err_dma_crit_edge, %if.then125.err_dma_crit_edge
  %retval1.0 = phi i32 [ %call126, %if.then125.err_dma_crit_edge ], [ -19, %if.then137 ], [ -19, %if.then134.err_dma_crit_edge ]
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call140 = tail call ptr @free_irq(i32 noundef %32, ptr noundef nonnull %call7.i.i) #5
  br label %err_irq

err_irq:                                          ; preds = %err_dma, %if.then111, %do.body97, %do.end77
  %retval1.1 = phi i32 [ %retval1.0, %err_dma ], [ -19, %do.end77 ], [ -16, %if.then111 ], [ -16, %do.body97 ]
  %33 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %virt_addr, align 8
  tail call void @iounmap(ptr noundef %34) #5
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_irq, %if.then67, %do.body53
  %retval1.2 = phi i32 [ %retval1.1, %err_irq ], [ -14, %if.then67 ], [ -14, %do.body53 ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %cond) #5
  br label %err_memreg

err_memreg:                                       ; preds = %err_ioremap, %if.then43, %do.body29
  %retval1.3 = phi i32 [ %retval1.2, %err_ioremap ], [ -16, %if.then43 ], [ -16, %do.body29 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  br label %err_pcidev

err_pcidev:                                       ; preds = %err_memreg, %if.end12.err_pcidev_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %err_memreg ], [ -19, %if.end12.err_pcidev_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pcidev, %if.end131.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.4, %err_pcidev ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end131.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udc_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_del_gadget_udc(ptr noundef null) #5
  %driver = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !85

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @free_dma_pools(ptr noundef %1) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 128) #5, !srcloc !87
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call26 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #5
  %virt_addr = getelementptr inbounds %struct.udc, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr, align 8
  tail call void @iounmap(ptr noundef %9) #5
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %sub = sub i32 1, %11
  %add = add i32 %sub, %13
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %cond) #5
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  tail call void @udc_remove(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_irq(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dma_pools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udc_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_dma_pools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget_udc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udc_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !64, !65, !66, !68, !69, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__param_use_dma, !1, !"__param_use_dma", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 608, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_dmatype236, !1, !"__UNIQUE_ID_use_dmatype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_dma237, !4, !"__UNIQUE_ID_use_dma237", i1 false, i1 false}
!4 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 609, i32 1}
!5 = !{ptr @__param_use_dma_ppb, !6, !"__param_use_dma_ppb", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 610, i32 1}
!7 = !{ptr @__UNIQUE_ID_use_dma_ppbtype238, !6, !"__UNIQUE_ID_use_dma_ppbtype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_use_dma_ppb239, !9, !"__UNIQUE_ID_use_dma_ppb239", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 611, i32 1}
!10 = !{ptr @__param_use_dma_ppb_du, !11, !"__param_use_dma_ppb_du", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 612, i32 1}
!12 = !{ptr @__UNIQUE_ID_use_dma_ppb_dutype240, !11, !"__UNIQUE_ID_use_dma_ppb_dutype240", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_use_dma_ppb_du241, !14, !"__UNIQUE_ID_use_dma_ppb_du241", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 613, i32 1}
!15 = !{ptr @__param_use_fullspeed, !16, !"__param_use_fullspeed", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 615, i32 1}
!17 = !{ptr @__UNIQUE_ID_use_fullspeedtype242, !16, !"__UNIQUE_ID_use_fullspeedtype242", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_use_fullspeed243, !19, !"__UNIQUE_ID_use_fullspeed243", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 616, i32 1}
!20 = !{ptr @__initcall__kmod_amd5536udc_pci__248_209_udc_pci_driver_init6, !21, !"__initcall__kmod_amd5536udc_pci__248_209_udc_pci_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 209, i32 1}
!22 = !{ptr @__exitcall_udc_pci_driver_exit, !21, !"__exitcall_udc_pci_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description249, !24, !"__UNIQUE_ID_description249", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 211, i32 1}
!25 = !{ptr @__UNIQUE_ID_author250, !26, !"__UNIQUE_ID_author250", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 212, i32 1}
!27 = !{ptr @__UNIQUE_ID_file251, !28, !"__UNIQUE_ID_file251", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 213, i32 1}
!29 = !{ptr @__UNIQUE_ID_license252, !28, !"__UNIQUE_ID_license252", i1 false, i1 false}
!30 = !{ptr @use_dma_ppb_du, !31, !"use_dma_ppb_du", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 603, i32 13}
!32 = !{ptr @use_fullspeed, !33, !"use_fullspeed", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 605, i32 13}
!34 = !{ptr @__param_str_use_dma, !1, !"__param_str_use_dma", i1 false, i1 false}
!35 = !{ptr @use_dma, !36, !"use_dma", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 599, i32 13}
!37 = !{ptr @__param_str_use_dma_ppb, !6, !"__param_str_use_dma_ppb", i1 false, i1 false}
!38 = !{ptr @use_dma_ppb, !39, !"use_dma_ppb", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/udc/amd5536udc.h", i32 601, i32 13}
!40 = !{ptr @__param_str_use_dma_ppb_du, !11, !"__param_str_use_dma_ppb_du", i1 false, i1 false}
!41 = !{ptr @__param_str_use_fullspeed, !16, !"__param_str_use_fullspeed", i1 false, i1 false}
!42 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @udc_pci_driver, !44, !"udc_pci_driver", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 203, i32 26}
!45 = !{ptr @name, !46, !"name", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 52, i32 19}
!47 = !{ptr @pci_id, !48, !"pci_id", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 192, i32 35}
!49 = !{ptr @.str.1, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 93, i32 3}
!51 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !50, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!54 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 113, i32 3}
!56 = !{ptr @udc_pci_probe.__UNIQUE_ID_ddebug245, !55, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!57 = !{ptr @.str.5, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 120, i32 3}
!59 = !{ptr @udc_pci_probe.__UNIQUE_ID_ddebug246, !58, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!60 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 126, i32 3}
!62 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @udc_pci_probe._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @udc_pci_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @udc_pci_probe.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 131, i32 2}
!68 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.10, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 143, i32 3}
!71 = !{ptr @udc_pci_probe.__UNIQUE_ID_ddebug247, !70, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!72 = distinct !{null, !73, !"udc", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/amd5536udc_pci.c", i32 49, i32 20}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148280522, i64 2148280527, i64 2148280540, i64 2148280584, i64 2148280618, i64 2148280639}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2154552788}
!87 = !{i64 6200760}
