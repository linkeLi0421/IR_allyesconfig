; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw686x/tw686x-core.c_pt.bc'
source_filename = "../drivers/media/pci/tw686x/tw686x-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tw686x_dev = type { %struct.spinlock, %struct.v4l2_device, ptr, [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.tw686x_video_channel = type { ptr, %struct.vb2_queue, %struct.list_head, ptr, [2 x ptr], [2 x %struct.tw686x_dma_desc], [2 x ptr], %struct.v4l2_ctrl_handler, ptr, %struct.mutex, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.tw686x_dma_desc = type { i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }

@__param_str_dma_interval = internal constant [20 x i8] c"tw686x.dma_interval\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dma_interval = internal global { i32, [28 x i8] } { i32 625000, [28 x i8] zeroinitializer }, align 32
@__param_dma_interval = internal constant %struct.kernel_param { ptr @__param_str_dma_interval, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @dma_interval } }, section "__param", align 4
@__UNIQUE_ID_dma_intervaltype300 = internal constant [33 x i8] c"tw686x.parmtype=dma_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dma_interval301 = internal constant [69 x i8] c"tw686x.parm=dma_interval:Minimum time span for DMA interrupting host\00", section ".modinfo", align 1
@__param_str_dma_mode = internal constant [16 x i8] c"tw686x.dma_mode\00", align 1
@__param_ops_dma_mode = internal constant %struct.kernel_param_ops { i32 0, ptr @tw686x_dma_mode_set, ptr @tw686x_dma_mode_get, ptr null }, align 4
@dma_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dma_mode = internal constant %struct.kernel_param { ptr @__param_str_dma_mode, ptr null, ptr @__param_ops_dma_mode, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dma_mode } }, section "__param", align 4
@__UNIQUE_ID_dma_mode302 = internal constant [75 x i8] c"tw686x.parm=dma_mode:DMA operation mode (memcpy/contig/sg, default=memcpy)\00", section ".modinfo", align 1
@__initcall__kmod_tw686x__305_446_tw686x_pci_driver_init6 = internal global ptr @tw686x_pci_driver_init, section ".initcall6.init", align 4
@tw686x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.5, ptr @tw686x_pci_tbl, ptr @tw686x_probe, ptr @tw686x_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tw686x_pci_driver_exit = internal global ptr @tw686x_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [95 x i8] c"tw686x.description=Driver for video frame grabber cards based on Intersil/Techwell TW686[4589]\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [62 x i8] c"tw686x.author=Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [49 x i8] c"tw686x.author=Krzysztof Ha?asa <khalasa@piap.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [44 x i8] c"tw686x.file=drivers/media/pci/tw686x/tw686x\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [22 x i8] c"tw686x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memcpy\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"contig\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sg\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw686x\00", [25 x i8] zeroinitializer }, align 32
@tw686x_pci_tbl = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 6039, i32 26724, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 6039, i32 26725, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 6039, i32 26728, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 6039, i32 26729, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw%04X\00", [25 x i8] zeroinitializer }, align 32
@tw686x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: PCI %s, IRQ %d, MMIO 0x%lx (%s mode)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tw686x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/tw686x/tw686x-core.c\00", [57 x i8] zeroinitializer }, align 32
@tw686x_probe._entry_ptr = internal global ptr @tw686x_probe._entry, section ".printk_index", align 4
@tw686x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 281, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"32-bit PCI DMA not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tw686x_probe._entry_ptr.14 = internal global ptr @tw686x_probe._entry.10, section ".printk_index", align 4
@tw686x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 288, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to request PCI region\0A\00", [34 x i8] zeroinitializer }, align 32
@tw686x_probe._entry_ptr.17 = internal global ptr @tw686x_probe._entry.15, section ".printk_index", align 4
@tw686x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.9, i32 294, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to remap PCI region\0A\00", [36 x i8] zeroinitializer }, align 32
@tw686x_probe._entry_ptr.20 = internal global ptr @tw686x_probe._entry.18, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tw686x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@tw686x_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 321, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@tw686x_probe._entry_ptr.24 = internal global ptr @tw686x_probe._entry.22, section ".printk_index", align 4
@tw686x_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&dev->dma_delay_timer)\00", [40 x i8] zeroinitializer }, align 32
@tw686x_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.9, i32 335, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't register video\0A\00", [42 x i8] zeroinitializer }, align 32
@tw686x_probe._entry_ptr.29 = internal global ptr @tw686x_probe._entry.27, section ".printk_index", align 4
@tw686x_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.9, i32 341, ptr @.str.32, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't register audio\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tw686x_probe._entry_ptr.33 = internal global ptr @tw686x_probe._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tw686x_irq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.9, ptr @.str.35, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tw686x_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DMA timeout. Resetting DMA for all channels\0A\00", [51 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tw686x_reset_channels.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.36, ptr @.str.9, ptr @.str.37, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tw686x_reset_channels\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reset: stopping DMA\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.tw686x_dma_mode_get = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@switch.table.tw686x_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"dma_interval\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 53, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"dma_mode\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 57, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"tw686x_pci_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 440, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 62, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 64, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 66, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 68, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 446, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"tw686x_pci_tbl\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 416, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 251, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 267, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 281, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 288, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 294, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 316, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 321, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 325, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 335, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 341, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 181, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [42 x i8] c"../drivers/media/pci/tw686x/tw686x-core.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 159, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [33 x i8] c"switch.table.tw686x_dma_mode_get\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [26 x i8] c"switch.table.tw686x_probe\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_dma_interval301, ptr @__UNIQUE_ID_dma_intervaltype300, ptr @__UNIQUE_ID_dma_mode302, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_tw686x_pci_driver_exit, ptr @__initcall__kmod_tw686x__305_446_tw686x_pci_driver_init6, ptr @__param_dma_interval, ptr @__param_dma_mode, ptr @tw686x_pci_driver_exit, ptr @tw686x_probe._entry, ptr @tw686x_probe._entry.10, ptr @tw686x_probe._entry.15, ptr @tw686x_probe._entry.18, ptr @tw686x_probe._entry.22, ptr @tw686x_probe._entry.27, ptr @tw686x_probe._entry.30, ptr @tw686x_probe._entry_ptr, ptr @tw686x_probe._entry_ptr.14, ptr @tw686x_probe._entry_ptr.17, ptr @tw686x_probe._entry_ptr.20, ptr @tw686x_probe._entry_ptr.24, ptr @tw686x_probe._entry_ptr.29, ptr @tw686x_probe._entry_ptr.33, ptr @dma_interval, ptr @dma_mode, ptr @tw686x_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @tw686x_pci_tbl, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @tw686x_probe.__key, ptr @.str.21, ptr @.str.23, ptr @tw686x_probe.__key.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @switch.table.tw686x_dma_mode_get, ptr @switch.table.tw686x_probe], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_pci_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw686x_dma_mode_get to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw686x_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw686x_disable_channel(ptr nocapture noundef %dev, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i23 = getelementptr i32, ptr %5, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #12, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %shl = shl nuw i32 1, %channel
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %and4 = and i32 %7, %neg
  %pending_dma_en = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %pending_dma_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_dma_en, align 4
  %and7 = and i32 %9, %neg
  store i32 %and7, ptr %pending_dma_en, align 4
  %pending_dma_cmd = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %pending_dma_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pending_dma_cmd, align 4
  %and10 = and i32 %11, %neg
  store i32 %and10, ptr %pending_dma_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %and4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25 = getelementptr i32, ptr %14, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %12) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i27 = getelementptr i32, ptr %17, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %15) #12, !srcloc !104
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw686x_enable_channel(ptr nocapture noundef %dev, i32 noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12 = getelementptr i32, ptr %5, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #12, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %shl = shl nuw i32 1, %channel
  %or = or i32 %3, %shl
  %pending_dma_en = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %pending_dma_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_dma_en, align 4
  %or2 = or i32 %or, %9
  store i32 %or2, ptr %pending_dma_en, align 4
  %pending_dma_cmd = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %pending_dma_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pending_dma_cmd, align 4
  %or3 = or i32 %shl, %7
  %or5 = or i32 %or3, %11
  %or6 = or i32 %or5, -2147483648
  store i32 %or6, ptr %pending_dma_cmd, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_pci_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @tw686x_pci_driver, ptr noundef null, ptr noundef nonnull @.str.5) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_pci_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @tw686x_pci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw686x_dma_mode_set(ptr nocapture noundef readonly %val, ptr nocapture noundef readnone %kp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @strcasecmp(ptr noundef %val, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.return.sink.split_crit_edge, label %if.else

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcasecmp(ptr noundef %val, ptr noundef nonnull @.str.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.return.sink.split_crit_edge, label %if.else6

if.else.return.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.else6:                                         ; preds = %if.else
  %call8 = tail call i32 @strcasecmp(ptr noundef %val, ptr noundef nonnull @.str.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else6.return.sink.split_crit_edge, label %if.else6.return_crit_edge

if.else6.return_crit_edge:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else6.return.sink.split_crit_edge:             ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

return.sink.split:                                ; preds = %if.else6.return.sink.split_crit_edge, %if.else.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 0, %entry.return.sink.split_crit_edge ], [ 1, %if.else.return.sink.split_crit_edge ], [ 2, %if.else6.return.sink.split_crit_edge ]
  store i32 %.sink, ptr @dma_mode, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else6.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.else6.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw686x_dma_mode_get(ptr noundef %buffer, ptr nocapture noundef readnone %kp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %1 = icmp ult i32 %0, 3
  br i1 %1, label %switch.lookup, label %entry.dma_mode_name.exit_crit_edge

entry.dma_mode_name.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_mode_name.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.tw686x_dma_mode_get, i32 0, i32 %0
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dma_mode_name.exit

dma_mode_name.exit:                               ; preds = %switch.lookup, %entry.dma_mode_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %entry.dma_mode_name.exit_crit_edge ]
  %stpcpy = tail call ptr @stpcpy(ptr %buffer, ptr nonnull %retval.0.i) #15
  %3 = ptrtoint ptr %stpcpy to i32
  %4 = ptrtoint ptr %buffer to i32
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_probe(ptr noundef %pci_dev, ptr nocapture noundef readonly %pci_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 304) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type, align 8
  %4 = load i32, ptr @dma_mode, align 4
  %dma_mode = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dma_mode, align 4
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 3
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %conv = zext i16 %7 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.6, i32 noundef %conv)
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  %and.i = and i32 %9, 15
  %10 = mul nuw nsw i32 %and.i, 952
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #17
  %video_channels = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %video_channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %video_channels, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end.free_dev_crit_edge, label %if.end7.i.i198

if.end.free_dev_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_dev

if.end7.i.i198:                                   ; preds = %if.end
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  %and.i167 = and i32 %13, 15
  %14 = mul nuw nsw i32 %and.i167, 356
  %call8.i.i197 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #17
  %audio_channels = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %audio_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i197, ptr %audio_channels, align 8
  %tobool11.not = icmp eq ptr %call8.i.i197, null
  br i1 %tobool11.not, label %if.end7.i.i198.free_video_crit_edge, label %do.end

if.end7.i.i198.free_video_crit_edge:              ; preds = %if.end7.i.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_video

do.end:                                           ; preds = %if.end7.i.i198
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i201, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i201:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i201, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i202 = phi ptr [ %19, %if.end.i.i201 ], [ %17, %do.end.pci_name.exit_crit_edge ]
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 47
  %22 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource, align 8
  %24 = load i32, ptr @dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %switch.lookup, label %pci_name.exit.dma_mode_name.exit_crit_edge

pci_name.exit.dma_mode_name.exit_crit_edge:       ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_mode_name.exit

switch.lookup:                                    ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.tw686x_probe, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dma_mode_name.exit

dma_mode_name.exit:                               ; preds = %switch.lookup, %pci_name.exit.dma_mode_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.3, %pci_name.exit.dma_mode_name.exit_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %retval.0.i.i202, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %retval.0.i) #18
  %pci_dev19 = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %pci_dev19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pci_dev, ptr %pci_dev19, align 8
  %call20 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %dma_mode_name.exit.free_audio_crit_edge

dma_mode_name.exit.free_audio_crit_edge:          ; preds = %dma_mode_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_audio

if.end23:                                         ; preds = %dma_mode_name.exit
  tail call void @pci_set_master(ptr noundef %pci_dev) #12
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call25 = tail call i32 @dma_set_mask(ptr noundef %dev24, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.11) #18
  br label %disable_pci

if.end32:                                         ; preds = %if.end23
  %call35 = tail call i32 @pci_request_regions(ptr noundef %pci_dev, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.16) #18
  br label %disable_pci

if.end42:                                         ; preds = %if.end32
  %call43 = tail call ptr @pci_ioremap_bar(ptr noundef %pci_dev, i32 noundef 0) #12
  %mmio = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call43, ptr %mmio, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.19) #18
  br label %free_region

if.end51:                                         ; preds = %if.end42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i32, ptr %30, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #12, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio, align 4
  %add.ptr.i204 = getelementptr i32, ptr %33, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 1056964608) #12, !srcloc !104
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 8
  %and.i206 = and i32 %35, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i206)
  %cmp = icmp ugt i32 %and.i206, 4
  br i1 %cmp, label %if.then56, label %if.end51.if.end62_crit_edge

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr.i208 = getelementptr i32, ptr %37, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 1056964608) #12, !srcloc !104
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end51.if.end62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  %add.ptr.i210 = getelementptr i32, ptr %39, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210, i32 0) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio, align 4
  %add.ptr.i212 = getelementptr i32, ptr %41, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 0) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %42 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio, align 4
  %add.ptr.i214 = getelementptr i32, ptr %43, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214, i32 83886079) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio, align 4
  %add.ptr.i216 = getelementptr i32, ptr %45, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 -2071655404) #12, !srcloc !104
  %46 = load i32, ptr @dma_interval, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr.i218 = getelementptr i32, ptr %49, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %47) #12, !srcloc !104
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @tw686x_probe.__key, i16 noundef signext 3) #12
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %51, ptr noundef nonnull @tw686x_irq, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp71 = icmp slt i32 %call.i, 0
  br i1 %cmp71, label %do.end76, label %do.body79

do.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.23) #18
  br label %iounmap

do.body79:                                        ; preds = %if.end62
  %dma_delay_timer = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %dma_delay_timer, ptr noundef nonnull @tw686x_dma_delay, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @tw686x_probe.__key.25) #12
  %release = getelementptr inbounds %struct.tw686x_dev, ptr %call7.i.i, i32 0, i32 1, i32 9
  %52 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @tw686x_dev_release, ptr %release, align 8
  %call82 = tail call i32 @tw686x_video_init(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end89, label %do.end87

do.end87:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.28) #18
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  %call99 = tail call ptr @free_irq(i32 noundef %54, ptr noundef nonnull %call7.i.i) #12
  br label %iounmap

if.end89:                                         ; preds = %do.body79
  %call90 = tail call i32 @tw686x_audio_init(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end89.if.end97_crit_edge, label %do.end95

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.31) #18
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.end89.if.end97_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

iounmap:                                          ; preds = %do.end87, %do.end76
  %err.0 = phi i32 [ %call.i, %do.end76 ], [ %call82, %do.end87 ]
  %56 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio, align 4
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef %57) #12
  br label %free_region

free_region:                                      ; preds = %iounmap, %do.end49
  %err.1 = phi i32 [ %err.0, %iounmap ], [ -12, %do.end49 ]
  tail call void @pci_release_regions(ptr noundef %pci_dev) #12
  br label %disable_pci

disable_pci:                                      ; preds = %free_region, %do.end40, %do.end30
  %err.2 = phi i32 [ -5, %do.end30 ], [ %call35, %do.end40 ], [ %err.1, %free_region ]
  tail call void @pci_disable_device(ptr noundef %pci_dev) #12
  br label %free_audio

free_audio:                                       ; preds = %disable_pci, %dma_mode_name.exit.free_audio_crit_edge
  %err.3 = phi i32 [ %err.2, %disable_pci ], [ -5, %dma_mode_name.exit.free_audio_crit_edge ]
  %58 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %audio_channels, align 8
  tail call void @kfree(ptr noundef %59) #12
  br label %free_video

free_video:                                       ; preds = %free_audio, %if.end7.i.i198.free_video_crit_edge
  %err.4 = phi i32 [ %err.3, %free_audio ], [ -12, %if.end7.i.i198.free_video_crit_edge ]
  %60 = ptrtoint ptr %video_channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %video_channels, align 4
  tail call void @kfree(ptr noundef %61) #12
  br label %free_dev

free_dev:                                         ; preds = %free_video, %if.end.free_dev_crit_edge
  %err.5 = phi i32 [ %err.4, %free_video ], [ -12, %if.end.free_dev_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_dev, %if.end97, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %free_dev ], [ 0, %if.end97 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_remove(ptr noundef %pci_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #12
  tail call void @tw686x_video_free(ptr noundef %1) #12
  tail call void @tw686x_audio_free(ptr noundef %1) #12
  %dma_delay_timer = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 14
  %call2 = tail call i32 @del_timer_sync(ptr noundef %dma_delay_timer) #12
  %mmio = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef %5) #12
  tail call void @pci_release_regions(ptr noundef %pci_dev) #12
  tail call void @pci_disable_device(ptr noundef %pci_dev) #12
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %pci_dev8 = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %pci_dev8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pci_dev8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call5) #12
  %v4l2_dev = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 1
  %call10 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %reset_ch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_ch) #12
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %5, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %tobool2.not = icmp ult i32 %7, 256
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body15, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw686x_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw686x_irq, %if.then10)) #12
          to label %reset_channels.thread [label %if.then10], !srcloc !105

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev = getelementptr inbounds %struct.tw686x_dev, ptr %dev_id, i32 0, i32 6
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw686x_irq.__UNIQUE_ID_ddebug304, ptr noundef %dev11, ptr noundef nonnull @.str.35) #12
  br label %reset_channels.thread

reset_channels.thread:                            ; preds = %if.then10, %do.body
  %10 = ptrtoint ptr %reset_ch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reset_ch, align 4
  br label %do.body44

do.body15:                                        ; preds = %if.end
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #12
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i101 = getelementptr i32, ptr %12, i32 10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #12, !srcloc !101
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call18) #12
  %and25 = and i32 %14, 255
  %neg = xor i32 %7, -1
  %shr = lshr i32 %7, 24
  %shr28 = lshr i32 %7, 16
  %or = or i32 %shr, %shr28
  %and27 = and i32 %or, %neg
  %15 = ptrtoint ptr %reset_ch to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %reset_ch, align 4
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i103 = getelementptr i32, ptr %17, i32 1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #12, !srcloc !101
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %and29106 = or i32 %and27, %3
  %or32 = and i32 %and29106, %and25
  %and33 = and i32 %14, %3
  %shr34 = lshr i32 %and33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or32)
  %tobool35.not = icmp eq i32 %or32, 0
  br i1 %tobool35.not, label %do.body15.if.end37_crit_edge, label %if.then36

do.body15.if.end37_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  call void @tw686x_video_irq(ptr noundef %dev_id, i32 noundef %or32, i32 noundef %19, i32 noundef %7, ptr noundef nonnull %reset_ch) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %do.body15.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and33)
  %tobool38.not = icmp ult i32 %and33, 256
  br i1 %tobool38.not, label %if.end37.reset_channels_crit_edge, label %if.then39

if.end37.reset_channels_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset_channels

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void @tw686x_audio_irq(ptr noundef %dev_id, i32 noundef %shr34, i32 noundef %19) #12
  br label %reset_channels

reset_channels:                                   ; preds = %if.then39, %if.end37.reset_channels_crit_edge
  %20 = ptrtoint ptr %reset_ch to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %reset_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool41.not = icmp eq i32 %.pr, 0
  br i1 %tobool41.not, label %reset_channels.cleanup_crit_edge, label %reset_channels.do.body44_crit_edge

reset_channels.do.body44_crit_edge:               ; preds = %reset_channels
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44

reset_channels.cleanup_crit_edge:                 ; preds = %reset_channels
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body44:                                        ; preds = %reset_channels.do.body44_crit_edge, %reset_channels.thread
  %call52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #12
  %21 = ptrtoint ptr %reset_ch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reset_ch, align 4
  call fastcc void @tw686x_reset_channels(ptr noundef %dev_id, i32 noundef %22)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call52) #12
  %dma_delay_timer = getelementptr inbounds %struct.tw686x_dev, ptr %dev_id, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 10
  %call59 = call i32 @mod_timer(ptr noundef %dma_delay_timer, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body44, %reset_channels.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body44 ], [ 1, %reset_channels.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_ch) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_dma_delay(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -248
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #12
  %pending_dma_en = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %pending_dma_en to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pending_dma_en, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #12
  %mmio.i = getelementptr i8, ptr %t, i32 -28
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %4, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #12, !srcloc !104
  %pending_dma_cmd = getelementptr i8, ptr %t, i32 52
  %5 = ptrtoint ptr %pending_dma_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pending_dma_cmd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i17 = getelementptr i32, ptr %9, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %7) #12, !srcloc !104
  %10 = ptrtoint ptr %pending_dma_en to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pending_dma_en, align 4
  %11 = ptrtoint ptr %pending_dma_cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pending_dma_cmd, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_dev_release(ptr noundef %v4l2_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr i8, ptr %v4l2_dev, i32 164
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %and.i10 = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %cmp11.not = icmp eq i32 %and.i10, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %video_channels = getelementptr i8, ptr %v4l2_dev, i32 184
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ch.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %video_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video_channels, align 4
  %ctrl_handler = getelementptr %struct.tw686x_video_channel, ptr %3, i32 %ch.012, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  %inc = add nuw nsw i32 %ch.012, 1
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %and.i = and i32 %5, 15
  %cmp = icmp ult i32 %inc, %and.i
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %v4l2_dev, i32 -44
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #12
  %audio_channels = getelementptr i8, ptr %v4l2_dev, i32 188
  %6 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %audio_channels, align 4
  tail call void @kfree(ptr noundef %7) #12
  %video_channels2 = getelementptr i8, ptr %v4l2_dev, i32 184
  %8 = ptrtoint ptr %video_channels2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video_channels2, align 4
  tail call void @kfree(ptr noundef %9) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw686x_video_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw686x_audio_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_video_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_audio_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw686x_reset_channels(ptr nocapture noundef %dev, i32 noundef %ch_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %1, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i27 = getelementptr i32, ptr %5, i32 2
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #12, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %pending_dma_en = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %pending_dma_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_dma_en, align 4
  %or = or i32 %9, %3
  store i32 %or, ptr %pending_dma_en, align 4
  %pending_dma_cmd = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %pending_dma_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pending_dma_cmd, align 4
  %or2 = or i32 %11, %7
  store i32 %or2, ptr %pending_dma_cmd, align 4
  %neg = xor i32 %ch_mask, -1
  %and = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i29 = getelementptr i32, ptr %14, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %12) #12, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw686x_reset_channels.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw686x_reset_channels, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !105

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw686x_reset_channels.__UNIQUE_ID_ddebug303, ptr noundef %dev9, ptr noundef nonnull @.str.37) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %and10 = and i32 %7, 2147483647
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %dma_cmd.0 = phi i32 [ %and10, %do.end ], [ %7, %entry.if.end11_crit_edge ]
  %and13 = and i32 %dma_cmd.0, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %and13) #12
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i31 = getelementptr i32, ptr %19, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %17) #12, !srcloc !104
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_video_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_audio_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__param_dma_interval, !1, !"__param_dma_interval", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_dma_intervaltype300, !1, !"__UNIQUE_ID_dma_intervaltype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dma_interval301, !4, !"__UNIQUE_ID_dma_interval301", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 55, i32 1}
!5 = !{ptr @__param_dma_mode, !6, !"__param_dma_mode", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 89, i32 1}
!7 = !{ptr @__UNIQUE_ID_dma_mode302, !8, !"__UNIQUE_ID_dma_mode302", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 91, i32 1}
!9 = !{ptr @__initcall__kmod_tw686x__305_446_tw686x_pci_driver_init6, !10, !"__initcall__kmod_tw686x__305_446_tw686x_pci_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 446, i32 1}
!11 = !{ptr @__exitcall_tw686x_pci_driver_exit, !10, !"__exitcall_tw686x_pci_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description306, !13, !"__UNIQUE_ID_description306", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 448, i32 1}
!14 = !{ptr @__UNIQUE_ID_author307, !15, !"__UNIQUE_ID_author307", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 449, i32 1}
!16 = !{ptr @__UNIQUE_ID_author308, !17, !"__UNIQUE_ID_author308", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 450, i32 1}
!18 = !{ptr @__UNIQUE_ID_file309, !19, !"__UNIQUE_ID_file309", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 451, i32 1}
!20 = !{ptr @__UNIQUE_ID_license310, !19, !"__UNIQUE_ID_license310", i1 false, i1 false}
!21 = !{ptr @__param_str_dma_interval, !1, !"__param_str_dma_interval", i1 false, i1 false}
!22 = !{ptr @dma_interval, !23, !"dma_interval", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 53, i32 12}
!24 = !{ptr @__param_str_dma_mode, !6, !"__param_str_dma_mode", i1 false, i1 false}
!25 = !{ptr @__param_ops_dma_mode, !6, !"__param_ops_dma_mode", i1 false, i1 false}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 62, i32 10}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 64, i32 10}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 66, i32 10}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 68, i32 10}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 74, i32 25}
!36 = !{ptr @dma_mode, !37, !"dma_mode", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 57, i32 21}
!38 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tw686x_pci_driver, !40, !"tw686x_pci_driver", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 440, i32 26}
!41 = !{ptr @tw686x_pci_tbl, !42, !"tw686x_pci_tbl", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 416, i32 35}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 251, i32 21}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 267, i32 2}
!47 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tw686x_probe._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @tw686x_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 281, i32 3}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tw686x_probe._entry.10, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @tw686x_probe._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 288, i32 3}
!59 = !{ptr @tw686x_probe._entry.15, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tw686x_probe._entry_ptr.17, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 294, i32 3}
!63 = !{ptr @tw686x_probe._entry.18, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tw686x_probe._entry_ptr.20, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @tw686x_probe.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 316, i32 2}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 321, i32 3}
!70 = !{ptr @tw686x_probe._entry.22, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tw686x_probe._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @tw686x_probe.__key.25, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 325, i32 2}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 335, i32 3}
!77 = !{ptr @tw686x_probe._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tw686x_probe._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 341, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tw686x_probe._entry.30, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @tw686x_probe._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 181, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @tw686x_irq.__UNIQUE_ID_ddebug304, !85, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/tw686x/tw686x-core.c", i32 159, i32 3}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tw686x_reset_channels.__UNIQUE_ID_ddebug303, !89, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 4209204}
!102 = !{i64 2156851971}
!103 = !{i64 2156852354}
!104 = !{i64 4208786}
!105 = !{i64 2148727978, i64 2148727983, i64 2148727996, i64 2148728040, i64 2148728074, i64 2148728095}
