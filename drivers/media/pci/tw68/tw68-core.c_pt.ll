; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw68/tw68-core.c_pt.bc'
source_filename = "../drivers/media/pci/tw68/tw68-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.84 = type { ptr }
%struct.tw68_dev = type { %struct.mutex, %struct.spinlock, i16, %struct.v4l2_device, i32, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, ptr, i8, i8, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, %struct.vb2_queue, %struct.list_head, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description300 = internal constant [73 x i8] c"tw68.description=v4l2 driver module for tw6800 based video capture cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [29 x i8] c"tw68.author=William M. Brack\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [46 x i8] c"tw68.author=Hans Verkuil <hverkuil@xs4all.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [38 x i8] c"tw68.file=drivers/media/pci/tw68/tw68\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [17 x i8] c"tw68.license=GPL\00", section ".modinfo", align 1
@__param_str_latency = internal constant [13 x i8] c"tw68.latency\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@latency = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_latency = internal constant %struct.kernel_param { ptr @__param_str_latency, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @latency } }, section "__param", align 4
@__UNIQUE_ID_latencytype305 = internal constant [26 x i8] c"tw68.parmtype=latency:int\00", section ".modinfo", align 1
@__UNIQUE_ID_latency306 = internal constant [36 x i8] c"tw68.parm=latency:pci latency timer\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [14 x i8] c"tw68.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype307 = internal constant [36 x i8] c"tw68.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr308 = internal constant [39 x i8] c"tw68.parm=video_nr:video device number\00", section ".modinfo", align 1
@__param_str_card = internal constant [10 x i8] c"tw68.card\00", align 1
@__param_arr_card = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype309 = internal constant [32 x i8] c"tw68.parmtype=card:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_card310 = internal constant [25 x i8] c"tw68.parm=card:card type\00", section ".modinfo", align 1
@__initcall__kmod_tw68__313_418_tw68_pci_driver_init6 = internal global ptr @tw68_pci_driver_init, section ".initcall6.init", align 4
@tw68_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @tw68_pci_tbl, ptr @tw68_initdev, ptr @tw68_finidev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw68_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tw68_pci_driver_exit = internal global ptr @tw68_pci_driver_exit, section ".exitcall.exit", align 4
@video_nr = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@card = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tw68\00", [27 x i8] zeroinitializer }, align 32
@tw68_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 6039, i32 26624, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6039, i32 26625, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6039, i32 26628, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6039, i32 26640, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6039, i32 26641, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6039, i32 26642, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6039, i32 26643, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@tw68_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tw68_suspend, ptr @tw68_resume, ptr @tw68_suspend, ptr @tw68_resume, ptr @tw68_suspend, ptr @tw68_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tw68_instance = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@tw68_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: setting pci latency timer to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tw68_initdev\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/tw68/tw68-core.c\00", [61 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr = internal global ptr @tw68_initdev._entry, section ".printk_index", align 4
@tw68_initdev._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr.6 = internal global ptr @tw68_initdev._entry.4, section ".printk_index", align 4
@tw68_initdev._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Oops: no 32bit PCI DMA ???\0A\00", [62 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr.9 = internal global ptr @tw68_initdev._entry.7, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@tw68_initdev._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: can't get MMIO memory @ 0x%llx\0A\00", [58 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr.12 = internal global ptr @tw68_initdev._entry.10, section ".printk_index", align 4
@tw68_initdev._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: can't ioremap() MMIO memory\0A\00", [61 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr.15 = internal global ptr @tw68_initdev._entry.13, section ".printk_index", align 4
@tw68_initdev._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: can't get IRQ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr.18 = internal global ptr @tw68_initdev._entry.16, section ".printk_index", align 4
@tw68_initdev._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: can't register video device\0A\00", [61 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr.21 = internal global ptr @tw68_initdev._entry.19, section ".printk_index", align 4
@tw68_initdev._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: registered device %s\0A\00", [36 x i8] zeroinitializer }, align 32
@tw68_initdev._entry_ptr.24 = internal global ptr @tw68_initdev._entry.22, section ".printk_index", align 4
@tw68_hw_init1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@tw68_hw_init1.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@tw68_irq.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tw68_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: **** INTERRUPT NOT HANDLED - clearing mask (orig 0x%08x, cur 0x%08x)\00", [55 x i8] zeroinitializer }, align 32
@tw68_irq.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: pci_irqmask 0x%08x; board_virqmask 0x%08x ****\0A\00", [44 x i8] zeroinitializer }, align 32
@switch.table.tw68_initdev = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 3, i32 3, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.tw68_initdev.31 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32874, i32 4751482, i32 4751482, i32 4751482, i32 4751482], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 43, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"tw68_pci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 410, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 47, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 51, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 418, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"tw68_pci_tbl\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 64, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"tw68_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 408, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"tw68_instance\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 55, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 239, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 247, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 253, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 281, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 291, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 303, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 317, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 323, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 178, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 179, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 203, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [38 x i8] c"../drivers/media/pci/tw68/tw68-core.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 205, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [26 x i8] c"switch.table.tw68_initdev\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [29 x i8] c"switch.table.tw68_initdev.31\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_card310, ptr @__UNIQUE_ID_cardtype309, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_latency306, ptr @__UNIQUE_ID_latencytype305, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_video_nr308, ptr @__UNIQUE_ID_video_nrtype307, ptr @__exitcall_tw68_pci_driver_exit, ptr @__initcall__kmod_tw68__313_418_tw68_pci_driver_init6, ptr @__param_card, ptr @__param_latency, ptr @__param_video_nr, ptr @tw68_initdev._entry, ptr @tw68_initdev._entry.10, ptr @tw68_initdev._entry.13, ptr @tw68_initdev._entry.16, ptr @tw68_initdev._entry.19, ptr @tw68_initdev._entry.22, ptr @tw68_initdev._entry.4, ptr @tw68_initdev._entry.7, ptr @tw68_initdev._entry_ptr, ptr @tw68_initdev._entry_ptr.12, ptr @tw68_initdev._entry_ptr.15, ptr @tw68_initdev._entry_ptr.18, ptr @tw68_initdev._entry_ptr.21, ptr @tw68_initdev._entry_ptr.24, ptr @tw68_initdev._entry_ptr.6, ptr @tw68_initdev._entry_ptr.9, ptr @tw68_pci_driver_exit, ptr @latency, ptr @tw68_pci_driver, ptr @video_nr, ptr @card, ptr @.str, ptr @tw68_pci_tbl, ptr @tw68_pm_ops, ptr @tw68_instance, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @tw68_hw_init1.__key, ptr @.str.25, ptr @tw68_hw_init1.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @switch.table.tw68_initdev, ptr @switch.table.tw68_initdev.31], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @latency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_initdev._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_hw_init1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_hw_init1.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw68_initdev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw68_initdev.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @tw68_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tw68_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @tw68_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_initdev(ptr noundef %pci_dev, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2384, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 3
  %call2 = tail call i32 @v4l2_device_set_name(ptr noundef %v4l2_dev, ptr noundef nonnull @.str, ptr noundef nonnull @tw68_instance) #5
  %conv = trunc i32 %call2 to i16
  %instance = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %instance, align 8
  %call5 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %pci = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pci_dev, ptr %pci, align 4
  %call8 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.fail1_crit_edge

if.end7.fail1_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail1

if.end11:                                         ; preds = %if.end7
  %name = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 3, i32 4
  %name13 = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %name13, align 8
  %3 = load i32, ptr @latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp14.not = icmp eq i32 %3, -1
  br i1 %cmp14.not, label %if.end11.if.end21_crit_edge, label %do.end

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %3) #8
  %4 = load i32, ptr @latency, align 4
  %conv19 = trunc i32 %4 to i8
  %call20 = tail call i32 @pci_write_config_byte(ptr noundef %pci_dev, i32 noundef 13, i8 noundef zeroext %conv19) #5
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end11.if.end21_crit_edge
  %pci_rev = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 9
  %call22 = tail call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 8, ptr noundef %pci_rev) #5
  %pci_lat = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 10
  %call23 = tail call i32 @pci_read_config_byte(ptr noundef %pci_dev, i32 noundef 13, ptr noundef %pci_lat) #5
  %5 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name13, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end21.pci_name.exit_crit_edge

if.end21.pci_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end21.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end21.pci_name.exit_crit_edge ]
  %11 = ptrtoint ptr %pci_rev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pci_rev, align 8
  %conv31 = zext i8 %12 to i32
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %15 = ptrtoint ptr %pci_lat to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pci_lat, align 1
  %conv33 = zext i8 %16 to i32
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource, align 8
  %conv34 = zext i32 %18 to i64
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %6, ptr noundef %retval.0.i.i, i32 noundef %conv31, i32 noundef %14, i32 noundef %conv33, i64 noundef %conv34) #8
  tail call void @pci_set_master(ptr noundef %pci_dev) #5
  %call37 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end46, label %do.end42

do.end42:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name13, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %20) #8
  br label %fail1

if.end46:                                         ; preds = %pci_name.exit
  %device = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 1
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device, align 4
  %switch.tableidx = add i32 %22, -26624
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 5
  br i1 %23, label %switch.lookup, label %if.end46.sw.epilog_crit_edge

if.end46.sw.epilog_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tw68_initdev, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep285 = getelementptr inbounds [5 x i32], ptr @switch.table.tw68_initdev.31, i32 0, i32 %switch.tableidx
  %25 = ptrtoint ptr %switch.gep285 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load286 = load i32, ptr %switch.gep285, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end46.sw.epilog_crit_edge
  %.sink284 = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end46.sw.epilog_crit_edge ]
  %.sink = phi i32 [ %switch.load286, %switch.lookup ], [ 4751482, %if.end46.sw.epilog_crit_edge ]
  %vdecoder53 = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %vdecoder53 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink284, ptr %vdecoder53, align 4
  %board_virqmask54 = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 14
  %27 = ptrtoint ptr %board_virqmask54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %board_virqmask54, align 8
  %28 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 0, i32 1
  %30 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp60 = icmp eq i32 %31, 0
  %sub = sub i32 1, %29
  %add = add i32 %sub, %31
  %cond = select i1 %cmp60, i32 0, i32 %add
  %32 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name13, align 8
  %call69 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %cond, ptr noundef %33, i32 noundef 0) #5
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.then71, label %if.end82

if.then71:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name13, align 8
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resource, align 8
  %conv80 = zext i32 %37 to i64
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %35, i64 noundef %conv80) #8
  br label %fail1

if.end82:                                         ; preds = %sw.epilog
  %38 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %resource, align 8
  %40 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp89 = icmp eq i32 %41, 0
  %sub99 = sub i32 1, %39
  %add100 = add i32 %sub99, %41
  %cond102 = select i1 %cmp89, i32 0, i32 %add100
  %call103 = tail call ptr @ioremap(i32 noundef %39, i32 noundef %cond102) #5
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 11
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call103, ptr %lmmio, align 4
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 12
  %43 = ptrtoint ptr %bmmio to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call103, ptr %bmmio, align 8
  %cmp106 = icmp eq ptr %call103, null
  br i1 %cmp106, label %if.then108, label %if.end115

if.then108:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name13, align 8
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %45) #8
  br label %fail2

if.end115:                                        ; preds = %if.end82
  tail call fastcc void @tw68_hw_init1(ptr noundef nonnull %call.i)
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %48 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name13, align 8
  %call.i276 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %47, ptr noundef nonnull @tw68_irq, ptr noundef null, i32 noundef 128, ptr noundef %49, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %cmp121 = icmp slt i32 %call.i276, 0
  br i1 %cmp121, label %do.end126, label %if.end131

do.end126:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name13, align 8
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %51, i32 noundef %53) #8
  br label %fail3

if.end131:                                        ; preds = %if.end115
  %54 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %instance, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %55)
  %cmp134 = icmp ult i16 %55, 16
  br i1 %cmp134, label %if.then136, label %if.end131.if.end139_crit_edge

if.end131.if.end139_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

if.then136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  %conv133 = zext i16 %55 to i32
  %arrayidx138 = getelementptr [16 x i32], ptr @video_nr, i32 0, i32 %conv133
  %56 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx138, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end131.if.end139_crit_edge
  %vidnr.0 = phi i32 [ %57, %if.then136 ], [ -1, %if.end131.if.end139_crit_edge ]
  %call140 = tail call i32 @tw68_video_init2(ptr noundef nonnull %call.i, i32 noundef %vidnr.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %do.end146, label %do.body151

do.end146:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name13, align 8
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %59) #8
  %vdev170 = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 5
  tail call void @video_unregister_device(ptr noundef %vdev170) #5
  br label %fail3

do.body151:                                       ; preds = %if.end139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %61, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !104
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  %pci_irqmask = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 13
  %64 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pci_irqmask, align 4
  %or = or i32 %65, %63
  %66 = tail call i32 @llvm.bswap.i32(i32 %or)
  %67 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio, align 4
  %add.ptr162 = getelementptr i32, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %66) #5, !srcloc !106
  %69 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name13, align 8
  %init_name.i.i277 = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 5, i32 5, i32 3
  %71 = ptrtoint ptr %init_name.i.i277 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i.i277, align 8
  %tobool.not.i.i278 = icmp eq ptr %72, null
  br i1 %tobool.not.i.i278, label %if.end.i.i280, label %do.body151.video_device_node_name.exit_crit_edge

do.body151.video_device_node_name.exit_crit_edge: ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  br label %video_device_node_name.exit

if.end.i.i280:                                    ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i279 = getelementptr inbounds %struct.tw68_dev, ptr %call.i, i32 0, i32 5, i32 5
  %73 = ptrtoint ptr %dev.i279 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i279, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i280, %do.body151.video_device_node_name.exit_crit_edge
  %retval.0.i.i281 = phi ptr [ %74, %if.end.i.i280 ], [ %72, %do.body151.video_device_node_name.exit_crit_edge ]
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %70, ptr noundef %retval.0.i.i281) #8
  br label %cleanup

fail3:                                            ; preds = %do.end146, %do.end126
  %err.0 = phi i32 [ %call.i276, %do.end126 ], [ %call140, %do.end146 ]
  %75 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio, align 4
  tail call void @iounmap(ptr noundef %76) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %if.then108
  %err.1 = phi i32 [ -5, %if.then108 ], [ %err.0, %fail3 ]
  %77 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %resource, align 8
  %79 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp178 = icmp eq i32 %80, 0
  %sub188 = sub i32 1, %78
  %add189 = add i32 %sub188, %80
  %cond191 = select i1 %cmp178, i32 0, i32 %add189
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %78, i32 noundef %cond191) #5
  br label %fail1

fail1:                                            ; preds = %fail2, %if.then71, %do.end42, %if.end7.fail1_crit_edge
  %err.2 = phi i32 [ %call37, %do.end42 ], [ %err.1, %fail2 ], [ -16, %if.then71 ], [ -5, %if.end7.fail1_crit_edge ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %video_device_node_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ 0, %video_device_node_name.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw68_finidev(ptr nocapture noundef readonly %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr i8, ptr %1, i32 1680
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  %5 = and i32 %4, -50331649
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #5, !srcloc !106
  %vdev = getelementptr i8, ptr %1, i32 132
  tail call void @video_unregister_device(ptr noundef %vdev) #5
  %hdl = getelementptr i8, ptr %1, i32 1484
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #5
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  tail call void @iounmap(ptr noundef %11) #5
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 0, i32 1
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %sub = sub i32 1, %13
  %add = add i32 %sub, %15
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %cond) #5
  tail call void @v4l2_device_unregister(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_set_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw68_hw_init1(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %3, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1441792) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 12
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %7, i32 536
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 -128) #5, !srcloc !114
  tail call void @msleep(i32 noundef 100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %9, i32 520
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 64) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr19 = getelementptr i8, ptr %11, i32 524
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 4) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr23 = getelementptr i8, ptr %13, i32 528
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %15, i32 536
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 66) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %17, i32 540
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 2) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %19, i32 544
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 18) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio, align 8
  %add.ptr39 = getelementptr i8, ptr %21, i32 548
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 -16) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %23, i32 552
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 15) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmmio, align 8
  %add.ptr47 = getelementptr i8, ptr %25, i32 556
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47, i8 -48) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmmio, align 8
  %add.ptr51 = getelementptr i8, ptr %27, i32 560
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 -51) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio, align 8
  %add.ptr55 = getelementptr i8, ptr %29, i32 564
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmmio, align 8
  %add.ptr59 = getelementptr i8, ptr %31, i32 568
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 17) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmmio, align 8
  %add.ptr63 = getelementptr i8, ptr %33, i32 572
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio, align 8
  %add.ptr67 = getelementptr i8, ptr %35, i32 576
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bmmio, align 8
  %add.ptr71 = getelementptr i8, ptr %37, i32 580
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71, i8 92) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bmmio, align 8
  %add.ptr75 = getelementptr i8, ptr %39, i32 584
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr75, i8 81) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bmmio, align 8
  %add.ptr79 = getelementptr i8, ptr %41, i32 588
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79, i8 -128) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmmio, align 8
  %add.ptr83 = getelementptr i8, ptr %43, i32 592
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83, i8 -128) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bmmio, align 8
  %add.ptr87 = getelementptr i8, ptr %45, i32 596
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmmio, align 8
  %add.ptr91 = getelementptr i8, ptr %47, i32 600
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91, i8 83) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmmio, align 8
  %add.ptr95 = getelementptr i8, ptr %49, i32 604
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95, i8 -128) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bmmio, align 8
  %add.ptr99 = getelementptr i8, ptr %51, i32 608
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99, i8 68) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bmmio, align 8
  %add.ptr103 = getelementptr i8, ptr %53, i32 616
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr103, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bmmio, align 8
  %add.ptr107 = getelementptr i8, ptr %55, i32 624
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107, i8 7) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bmmio, align 8
  %add.ptr111 = getelementptr i8, ptr %57, i32 628
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr111, i8 127) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bmmio, align 8
  %add.ptr115 = getelementptr i8, ptr %59, i32 640
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr115, i8 80) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bmmio, align 8
  %add.ptr119 = getelementptr i8, ptr %61, i32 644
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr119, i8 34) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bmmio, align 8
  %add.ptr123 = getelementptr i8, ptr %63, i32 648
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr123, i8 -16) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bmmio, align 8
  %add.ptr127 = getelementptr i8, ptr %65, i32 652
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr127, i8 -40) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bmmio, align 8
  %add.ptr131 = getelementptr i8, ptr %67, i32 656
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr131, i8 60) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bmmio, align 8
  %add.ptr135 = getelementptr i8, ptr %69, i32 660
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr135, i8 48) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %70 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bmmio, align 8
  %add.ptr139 = getelementptr i8, ptr %71, i32 664
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139, i8 68) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bmmio, align 8
  %add.ptr143 = getelementptr i8, ptr %73, i32 668
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr143, i8 40) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bmmio, align 8
  %add.ptr147 = getelementptr i8, ptr %75, i32 672
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr147, i8 4) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bmmio, align 8
  %add.ptr151 = getelementptr i8, ptr %77, i32 676
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr151, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bmmio, align 8
  %add.ptr155 = getelementptr i8, ptr %79, i32 680
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr155, i8 104) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bmmio, align 8
  %add.ptr159 = getelementptr i8, ptr %81, i32 684
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr159, i8 68) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bmmio, align 8
  %add.ptr163 = getelementptr i8, ptr %83, i32 688
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr163, i8 48) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bmmio, align 8
  %add.ptr167 = getelementptr i8, ptr %85, i32 692
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr167, i8 20) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bmmio, align 8
  %add.ptr171 = getelementptr i8, ptr %87, i32 696
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr171, i8 -91) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bmmio, align 8
  %add.ptr175 = getelementptr i8, ptr %89, i32 700
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr175, i8 -32) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bmmio, align 8
  %add.ptr179 = getelementptr i8, ptr %91, i32 704
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr179, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bmmio, align 8
  %add.ptr183 = getelementptr i8, ptr %93, i32 716
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr183, i8 5) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bmmio, align 8
  %add.ptr187 = getelementptr i8, ptr %95, i32 720
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr187, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bmmio, align 8
  %add.ptr191 = getelementptr i8, ptr %97, i32 724
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr191, i8 0) #5, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lmmio, align 4
  %add.ptr195 = getelementptr i32, ptr %99, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 50331648) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio, align 4
  %add.ptr199 = getelementptr i32, ptr %101, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 50331648) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 2097152) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lmmio, align 4
  %add.ptr207 = getelementptr i32, ptr %105, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %lmmio, align 4
  %add.ptr211 = getelementptr i32, ptr %107, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr211, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lmmio, align 4
  %add.ptr215 = getelementptr i32, ptr %109, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr215, i32 251658240) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lmmio, align 4
  %add.ptr219 = getelementptr i32, ptr %111, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 0) #5, !srcloc !106
  tail call void @__mutex_init(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @tw68_hw_init1.__key) #5
  %slock = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.27, ptr noundef nonnull @tw68_hw_init1.__key.26, i16 noundef signext 3) #5
  %call224 = tail call i32 @tw68_video_init1(ptr noundef %dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !104
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  %pci_irqmask = getelementptr inbounds %struct.tw68_dev, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pci_irqmask, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %board_virqmask = getelementptr inbounds %struct.tw68_dev, ptr %dev_id, i32 0, i32 14
  br label %for.body

for.cond:                                         ; preds = %if.end5
  %inc = add nuw nsw i32 %loop.095, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %status.096 = phi i32 [ %and, %for.cond.preheader ], [ %and14, %for.cond.for.body_crit_edge ]
  %loop.095 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %board_virqmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %board_virqmask, align 8
  %and3 = and i32 %7, %status.096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %if.then4

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tw68_irq_video_done(ptr noundef %dev_id, i32 noundef %status.096) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body.if.end5_crit_edge
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr9 = getelementptr i32, ptr %9, i32 7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !104
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  %12 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_irqmask, align 4
  %and14 = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.end5.cleanup_crit_edge, label %for.cond

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_irq.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_irq, %if.then23)) #5
          to label %do.body33 [label %if.then23], !srcloc !169

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.tw68_dev, ptr %dev_id, i32 0, i32 8
  %14 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %name = getelementptr inbounds %struct.tw68_dev, ptr %dev_id, i32 0, i32 7
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 8
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %19, i32 7
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !104
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw68_irq.__UNIQUE_ID_ddebug311, ptr noundef %dev24, ptr noundef nonnull @.str.29, ptr noundef %17, i32 noundef %and, i32 noundef %21) #5
  br label %do.body33

do.body33:                                        ; preds = %if.then23, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_irq.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_irq, %if.then45)) #5
          to label %do.body54 [label %if.then45], !srcloc !169

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %pci46 = getelementptr inbounds %struct.tw68_dev, ptr %dev_id, i32 0, i32 8
  %22 = ptrtoint ptr %pci46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci46, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %name48 = getelementptr inbounds %struct.tw68_dev, ptr %dev_id, i32 0, i32 7
  %24 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name48, align 8
  %26 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pci_irqmask, align 4
  %28 = ptrtoint ptr %board_virqmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %board_virqmask, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw68_irq.__UNIQUE_ID_ddebug312, ptr noundef %dev47, ptr noundef nonnull @.str.30, ptr noundef %25, i32 noundef %27, i32 noundef %29) #5
  br label %do.body54

do.body54:                                        ; preds = %if.then45, %do.body33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add.ptr60 = getelementptr i32, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #5, !srcloc !104
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  %34 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pci_irqmask, align 4
  %neg = xor i32 %35, -1
  %and65 = and i32 %33, %neg
  %36 = tail call i32 @llvm.bswap.i32(i32 %and65)
  %37 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio, align 4
  %add.ptr67 = getelementptr i32, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %36) #5, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %do.body54, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body54 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw68_video_init2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw68_video_init1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw68_irq_video_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr i8, ptr %1, i32 1680
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  %5 = and i32 %4, -50331649
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !106
  %pci_irqmask = getelementptr i8, ptr %1, i32 1688
  %8 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pci_irqmask, align 4
  %and10 = and i32 %9, -32875
  store i32 %and10, ptr %pci_irqmask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr15 = getelementptr i32, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #5, !srcloc !106
  %irq = getelementptr i8, ptr %dev_d, i32 932
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %13) #5
  %vidq = getelementptr i8, ptr %1, i32 1716
  tail call void @vb2_discard_done(ptr noundef %vidq) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -140
  tail call void @msleep(i32 noundef 100) #5
  tail call void @tw68_set_tvnorm_hw(ptr noundef %add.ptr) #5
  %slock = getelementptr i8, ptr %1, i32 -48
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %active = getelementptr i8, ptr %1, i32 2228
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active, align 8
  %add.ptr9 = getelementptr i8, ptr %3, i32 -736
  %call10 = tail call i32 @tw68_video_start_dma(ptr noundef %add.ptr, ptr noundef %add.ptr9) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_discard_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw68_set_tvnorm_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw68_video_start_dma(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__UNIQUE_ID_description300, !1, !"__UNIQUE_ID_description300", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_author302, !5, !"__UNIQUE_ID_author302", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 41, i32 1}
!8 = !{ptr @__UNIQUE_ID_license304, !7, !"__UNIQUE_ID_license304", i1 false, i1 false}
!9 = !{ptr @__param_latency, !10, !"__param_latency", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 44, i32 1}
!11 = !{ptr @__UNIQUE_ID_latencytype305, !10, !"__UNIQUE_ID_latencytype305", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_latency306, !13, !"__UNIQUE_ID_latency306", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 45, i32 1}
!14 = !{ptr @__param_video_nr, !15, !"__param_video_nr", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 48, i32 1}
!16 = !{ptr @__UNIQUE_ID_video_nrtype307, !15, !"__UNIQUE_ID_video_nrtype307", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_video_nr308, !18, !"__UNIQUE_ID_video_nr308", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 49, i32 1}
!19 = !{ptr @__param_card, !20, !"__param_card", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 52, i32 1}
!21 = !{ptr @__UNIQUE_ID_cardtype309, !20, !"__UNIQUE_ID_cardtype309", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_card310, !23, !"__UNIQUE_ID_card310", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 53, i32 1}
!24 = !{ptr @__initcall__kmod_tw68__313_418_tw68_pci_driver_init6, !25, !"__initcall__kmod_tw68__313_418_tw68_pci_driver_init6", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 418, i32 1}
!26 = !{ptr @__exitcall_tw68_pci_driver_exit, !25, !"__exitcall_tw68_pci_driver_exit", i1 false, i1 false}
!27 = !{ptr @__param_str_latency, !10, !"__param_str_latency", i1 false, i1 false}
!28 = !{ptr @latency, !29, !"latency", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 43, i32 21}
!30 = !{ptr @__param_str_video_nr, !15, !"__param_str_video_nr", i1 false, i1 false}
!31 = !{ptr @__param_arr_video_nr, !15, !"__param_arr_video_nr", i1 false, i1 false}
!32 = !{ptr @video_nr, !33, !"video_nr", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 47, i32 21}
!34 = !{ptr @__param_str_card, !20, !"__param_str_card", i1 false, i1 false}
!35 = !{ptr @__param_arr_card, !20, !"__param_arr_card", i1 false, i1 false}
!36 = !{ptr @card, !37, !"card", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 51, i32 21}
!38 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tw68_pci_driver, !40, !"tw68_pci_driver", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 410, i32 26}
!41 = !{ptr @tw68_pci_tbl, !42, !"tw68_pci_tbl", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 64, i32 35}
!43 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 239, i32 3}
!45 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tw68_initdev._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @tw68_initdev._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 247, i32 2}
!51 = !{ptr @tw68_initdev._entry.4, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tw68_initdev._entry_ptr.6, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 253, i32 3}
!55 = !{ptr @tw68_initdev._entry.7, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tw68_initdev._entry_ptr.9, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 281, i32 3}
!59 = !{ptr @tw68_initdev._entry.10, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tw68_initdev._entry_ptr.12, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 291, i32 3}
!63 = !{ptr @tw68_initdev._entry.13, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tw68_initdev._entry_ptr.15, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 303, i32 3}
!67 = !{ptr @tw68_initdev._entry.16, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tw68_initdev._entry_ptr.18, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 317, i32 3}
!71 = !{ptr @tw68_initdev._entry.19, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @tw68_initdev._entry_ptr.21, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 323, i32 2}
!75 = !{ptr @tw68_initdev._entry.22, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tw68_initdev._entry_ptr.24, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @tw68_instance, !78, !"tw68_instance", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 55, i32 17}
!79 = !{ptr @tw68_hw_init1.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 178, i32 2}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tw68_hw_init1.__key.26, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 179, i32 2}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 203, i32 2}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @tw68_irq.__UNIQUE_ID_ddebug311, !86, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 205, i32 2}
!91 = !{ptr @tw68_irq.__UNIQUE_ID_ddebug312, !90, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!92 = !{ptr @tw68_pm_ops, !93, !"tw68_pm_ops", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/tw68/tw68-core.c", i32 408, i32 8}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2156777214}
!104 = !{i64 5774086}
!105 = !{i64 2156778339}
!106 = !{i64 5773668}
!107 = !{i64 2156783128}
!108 = !{i64 2156784133}
!109 = !{i64 2156784458}
!110 = !{i64 2156731612}
!111 = !{i64 2156732108}
!112 = !{i64 2156732623}
!113 = !{i64 2156733108}
!114 = !{i64 5773471}
!115 = !{i64 2156733448}
!116 = !{i64 2156733788}
!117 = !{i64 2156734122}
!118 = !{i64 2156734459}
!119 = !{i64 2156734799}
!120 = !{i64 2156735139}
!121 = !{i64 2156735479}
!122 = !{i64 2156735819}
!123 = !{i64 2156736159}
!124 = !{i64 2156736499}
!125 = !{i64 2156736833}
!126 = !{i64 2156737170}
!127 = !{i64 2156737504}
!128 = !{i64 2156737835}
!129 = !{i64 2156738172}
!130 = !{i64 2156738512}
!131 = !{i64 2156738852}
!132 = !{i64 2156739192}
!133 = !{i64 2156739532}
!134 = !{i64 2156739872}
!135 = !{i64 2156740212}
!136 = !{i64 2156740552}
!137 = !{i64 2156740892}
!138 = !{i64 2156741232}
!139 = !{i64 2156741572}
!140 = !{i64 2156741912}
!141 = !{i64 2156742252}
!142 = !{i64 2156742592}
!143 = !{i64 2156742932}
!144 = !{i64 2156743272}
!145 = !{i64 2156743612}
!146 = !{i64 2156743952}
!147 = !{i64 2156744292}
!148 = !{i64 2156744632}
!149 = !{i64 2156744966}
!150 = !{i64 2156745303}
!151 = !{i64 2156745643}
!152 = !{i64 2156745983}
!153 = !{i64 2156746323}
!154 = !{i64 2156746663}
!155 = !{i64 2156747003}
!156 = !{i64 2156747337}
!157 = !{i64 2156747674}
!158 = !{i64 2156748008}
!159 = !{i64 2156748339}
!160 = !{i64 2156748690}
!161 = !{i64 2156749183}
!162 = !{i64 2156749680}
!163 = !{i64 2156750173}
!164 = !{i64 2156750651}
!165 = !{i64 2156751135}
!166 = !{i64 2156751622}
!167 = !{i64 2156752739}
!168 = !{i64 2156753318}
!169 = !{i64 2148965034, i64 2148965039, i64 2148965052, i64 2148965096, i64 2148965130, i64 2148965151}
!170 = !{i64 2156756767}
!171 = !{i64 2156760654}
!172 = !{i64 2156761653}
!173 = !{i64 2156788868}
!174 = !{i64 2156789873}
!175 = !{i64 2156790319}
