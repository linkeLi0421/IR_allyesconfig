; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw5864/tw5864-core.c_pt.bc'
source_filename = "../drivers/media/pci/tw5864/tw5864-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tw5864_dev = type { %struct.spinlock, %struct.v4l2_device, [4 x %struct.tw5864_input], [4 x %struct.tw5864_h264_frame], i32, i32, %struct.tasklet_struct, i32, i32, [64 x i8], ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tw5864_input = type { i32, ptr, %struct.mutex, %struct.spinlock, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [192 x i16], i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.tw5864_h264_frame = type { %struct.tw5864_dma_buf, %struct.tw5864_dma_buf, i32, i32, ptr, i64, i32, i32 }
%struct.tw5864_dma_buf = type { ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }

@__UNIQUE_ID_description300 = internal constant [93 x i8] c"tw5864.description=V4L2 driver module for tw5864-based multimedia capture & encoding devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [69 x i8] c"tw5864.author=Bluecherry Maintainers <maintainers@bluecherrydvr.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [62 x i8] c"tw5864.author=Andrey Utkin <andrey.utkin@corp.bluecherry.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [44 x i8] c"tw5864.file=drivers/media/pci/tw5864/tw5864\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [19 x i8] c"tw5864.license=GPL\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [16 x i8] c"tw5864.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype305 = internal constant [38 x i8] c"tw5864.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr306 = internal constant [49 x i8] c"tw5864.parm=video_nr:video devices numbers array\00", section ".modinfo", align 1
@__initcall__kmod_tw5864__308_349_tw5864_pci_driver_init6 = internal global ptr @tw5864_pci_driver_init, section ".initcall6.init", align 4
@tw5864_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @tw5864_pci_tbl, ptr @tw5864_initdev, ptr @tw5864_finidev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tw5864_pci_driver_exit = internal global ptr @tw5864_pci_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@video_nr = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw5864\00", [25 x i8] zeroinitializer }, align 32
@tw5864_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6039, i32 22628, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tw5864:%s\00", [22 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_enable_device() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tw5864_initdev\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/tw5864/tw5864-core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr = internal global ptr @tw5864_initdev._entry, section ".printk_index", align 4
@tw5864_initdev._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"32 bit PCI DMA is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.9 = internal global ptr @tw5864_initdev._entry.7, section ".printk_index", align 4
@tw5864_initdev._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot request regions for MMIO\0A\00", [63 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.12 = internal global ptr @tw5864_initdev._entry.10, section ".printk_index", align 4
@tw5864_initdev._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't ioremap() MMIO memory\0A\00", [35 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.15 = internal global ptr @tw5864_initdev._entry.13, section ".printk_index", align 4
@tw5864_initdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 287, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TW5864 hardware version: %04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.20 = internal global ptr @tw5864_initdev._entry.17, section ".printk_index", align 4
@tw5864_initdev._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 290, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TW5864 H.264 core version: %04x:%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.23 = internal global ptr @tw5864_initdev._entry.21, section ".printk_index", align 4
@tw5864_initdev._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can't get IRQ %d\0A\00", [46 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.26 = internal global ptr @tw5864_initdev._entry.24, section ".printk_index", align 4
@tw5864_initdev._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 304, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Note: there are known video quality issues. For details\0A\00", [39 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.29 = internal global ptr @tw5864_initdev._entry.27, section ".printk_index", align 4
@tw5864_initdev._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 305, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"see the comment in drivers/media/pci/tw5864/tw5864-core.c.\0A\00", [36 x i8] zeroinitializer }, align 32
@tw5864_initdev._entry_ptr.32 = internal global ptr @tw5864_initdev._entry.30, section ".printk_index", align 4
@tw5864_isr.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tw5864_isr\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown interrupt, status 0x%08X\0A\00", [62 x i8] zeroinitializer }, align 32
@tw5864_h264_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Skipped frame on input %d because all buffers busy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tw5864_h264_isr\00", [16 x i8] zeroinitializer }, align 32
@tw5864_h264_isr._entry_ptr = internal global ptr @tw5864_h264_isr._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"tw5864_pci_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 342, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 62, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 349, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"tw5864_pci_tbl\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 72, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 249, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 259, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 267, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 274, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 280, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 284, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 286, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 288, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 300, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 304, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 305, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 116, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [42 x i8] c"../drivers/media/pci/tw5864/tw5864-core.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 158, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_video_nr306, ptr @__UNIQUE_ID_video_nrtype305, ptr @__exitcall_tw5864_pci_driver_exit, ptr @__initcall__kmod_tw5864__308_349_tw5864_pci_driver_init6, ptr @__param_video_nr, ptr @tw5864_h264_isr._entry, ptr @tw5864_h264_isr._entry_ptr, ptr @tw5864_initdev._entry, ptr @tw5864_initdev._entry.10, ptr @tw5864_initdev._entry.13, ptr @tw5864_initdev._entry.17, ptr @tw5864_initdev._entry.21, ptr @tw5864_initdev._entry.24, ptr @tw5864_initdev._entry.27, ptr @tw5864_initdev._entry.30, ptr @tw5864_initdev._entry.7, ptr @tw5864_initdev._entry_ptr, ptr @tw5864_initdev._entry_ptr.12, ptr @tw5864_initdev._entry_ptr.15, ptr @tw5864_initdev._entry_ptr.20, ptr @tw5864_initdev._entry_ptr.23, ptr @tw5864_initdev._entry_ptr.26, ptr @tw5864_initdev._entry_ptr.29, ptr @tw5864_initdev._entry_ptr.32, ptr @tw5864_initdev._entry_ptr.9, ptr @tw5864_pci_driver_exit, ptr @tw5864_pci_driver, ptr @video_nr, ptr @.str, ptr @tw5864_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @tw5864_initdev.__key, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_initdev._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw5864_h264_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw5864_irqmask_apply(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %irqmask = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irqmask, align 8
  %and = and i32 %1, 65535
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %mmio = getelementptr inbounds %struct.tw5864_dev, ptr %dev, i32 0, i32 11
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 34824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %irqmask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqmask, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = shl i32 %7, 16
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 34828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #6, !srcloc !91
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_pci_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @tw5864_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tw5864_pci_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @tw5864_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_initdev(ptr noundef %pci_dev, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 11304, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.tw5864_dev, ptr %call.i, i32 0, i32 9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i)
  %v4l2_dev = getelementptr inbounds %struct.tw5864_dev, ptr %call.i, i32 0, i32 1
  %call5 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %pci_name.exit.cleanup_crit_edge

pci_name.exit.cleanup_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %pci_name.exit
  %pci = getelementptr inbounds %struct.tw5864_dev, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pci_dev, ptr %pci, align 8
  %call9 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.2) #9
  br label %unreg_v4l2

if.end14:                                         ; preds = %if.end8
  tail call void @pci_set_master(ptr noundef %pci_dev) #6
  %call16 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.8) #9
  br label %disable_pci

if.end24:                                         ; preds = %if.end14
  %call27 = tail call i32 @pci_request_regions(ptr noundef %pci_dev, ptr noundef %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.11) #9
  br label %disable_pci

if.end35:                                         ; preds = %if.end24
  %call36 = tail call ptr @pci_ioremap_bar(ptr noundef %pci_dev, i32 noundef 0) #6
  %mmio = getelementptr inbounds %struct.tw5864_dev, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call36, ptr %mmio, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.then39, label %do.body46

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 8
  %dev44 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.14) #9
  br label %release_mmio

do.body46:                                        ; preds = %if.end35
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @tw5864_initdev.__key, i16 noundef signext 3) #6
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 45060
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !93
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %17) #9
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !93
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr71 = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #6, !srcloc !93
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %21, i32 noundef %25) #9
  %call75 = tail call i32 @tw5864_video_init(ptr noundef nonnull %call.i, ptr noundef nonnull @video_nr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %do.body46.unmap_mmio_crit_edge

do.body46.unmap_mmio_crit_edge:                   ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap_mmio

if.end78:                                         ; preds = %do.body46
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call.i144 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %27, ptr noundef nonnull @tw5864_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp = icmp slt i32 %call.i144, 0
  br i1 %cmp, label %do.end84, label %do.end91

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci, align 8
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.25, i32 noundef %31) #9
  tail call void @tw5864_video_fini(ptr noundef nonnull %call.i) #6
  br label %unmap_mmio

do.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31) #9
  br label %cleanup

unmap_mmio:                                       ; preds = %do.end84, %do.body46.unmap_mmio_crit_edge
  %err.0 = phi i32 [ %call75, %do.body46.unmap_mmio_crit_edge ], [ %call.i144, %do.end84 ]
  %32 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %33) #6
  br label %release_mmio

release_mmio:                                     ; preds = %unmap_mmio, %if.then39
  %err.1 = phi i32 [ %err.0, %unmap_mmio ], [ -5, %if.then39 ]
  tail call void @pci_release_regions(ptr noundef %pci_dev) #6
  br label %disable_pci

disable_pci:                                      ; preds = %release_mmio, %do.end32, %do.end21
  %err.2 = phi i32 [ %call16, %do.end21 ], [ %call27, %do.end32 ], [ %err.1, %release_mmio ]
  tail call void @pci_disable_device(ptr noundef %pci_dev) #6
  br label %unreg_v4l2

unreg_v4l2:                                       ; preds = %disable_pci, %do.end
  %err.3 = phi i32 [ %call9, %do.end ], [ %err.2, %disable_pci ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %unreg_v4l2, %do.end91, %pci_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %unreg_v4l2 ], [ 0, %do.end91 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %pci_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw5864_finidev(ptr noundef %pci_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %irqmask.i = getelementptr i8, ptr %1, i32 11252
  %2 = ptrtoint ptr %irqmask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %irqmask.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %irqmask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irqmask.i, align 8
  %and.i.i = and i32 %4, 65535
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #6
  %mmio.i.i = getelementptr i8, ptr %1, i32 11248
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 34824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %irqmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqmask.i, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %11 = shl i32 %10, 16
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %13, i32 34828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %11) #6, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call2.i) #6
  tail call void @tw5864_video_fini(ptr noundef %add.ptr) #6
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  tail call void @iounmap(ptr noundef %15) #6
  tail call void @pci_release_regions(ptr noundef %pci_dev) #6
  tail call void @pci_disable_device(ptr noundef %pci_dev) #6
  tail call void @v4l2_device_unregister(ptr noundef %1) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw5864_video_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw5864_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 34872
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !93
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 34876
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %shl = shl i32 %7, 16
  %or = or i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 34832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -65536) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 34836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -65536) #6, !srcloc !91
  %and = and i32 %or, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.if.end18_crit_edge, label %if.then17

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %do.body
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %and.i = and i32 %15, 15
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #6
  %h264_buf_w_index.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 5
  %16 = ptrtoint ptr %h264_buf_w_index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h264_buf_w_index.i, align 4
  %add.i = add i32 %17, 1
  %rem.i = srem i32 %add.i, 4
  %h264_buf_r_index.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 4
  %18 = ptrtoint ptr %h264_buf_r_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h264_buf_r_index.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %19)
  %cmp11.not.i = icmp eq i32 %rem.i, %19
  br i1 %cmp11.not.i, label %do.end42.i, label %if.then.i

if.then.i:                                        ; preds = %if.then17
  %arrayidx.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %and.i
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr16.i = getelementptr i8, ptr %21, i32 98340
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !93
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %shl.i = shl i32 %23, 2
  %vlc_len.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %17, i32 2
  %24 = ptrtoint ptr %vlc_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl.i, ptr %vlc_len.i, align 8
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr23.i = getelementptr i8, ptr %26, i32 98332
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #6, !srcloc !93
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %checksum.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %17, i32 3
  %29 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %checksum.i, align 4
  %input27.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %17, i32 4
  %30 = ptrtoint ptr %input27.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.i, ptr %input27.i, align 8
  %call.i.i = tail call i64 @ktime_get() #6
  %timestamp.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %17, i32 5
  %31 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %frame_seqno.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %and.i, i32 11
  %32 = ptrtoint ptr %frame_seqno.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frame_seqno.i, align 4
  %seqno.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %17, i32 6
  %34 = ptrtoint ptr %seqno.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %seqno.i, align 8
  %frame_gop_seqno.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %and.i, i32 12
  %35 = ptrtoint ptr %frame_gop_seqno.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame_gop_seqno.i, align 8
  %gop_seqno.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %17, i32 7
  %37 = ptrtoint ptr %gop_seqno.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %gop_seqno.i, align 4
  %38 = ptrtoint ptr %h264_buf_w_index.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %rem.i, ptr %h264_buf_w_index.i, align 4
  %state.i.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 6, i32 1
  %call.i104.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %tobool.not.i.i = icmp eq i32 %call.i104.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.tasklet_schedule.exit.i_crit_edge

if.then.i.tasklet_schedule.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_schedule.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %tasklet.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 6
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i) #6
  br label %tasklet_schedule.exit.i

tasklet_schedule.exit.i:                          ; preds = %if.then.i.i, %if.then.i.tasklet_schedule.exit.i_crit_edge
  %slock30.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %and.i, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock30.i) #6
  %39 = ptrtoint ptr %frame_seqno.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frame_seqno.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %frame_seqno.i, align 4
  %41 = ptrtoint ptr %frame_gop_seqno.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frame_gop_seqno.i, align 8
  %inc33.i = add i32 %42, 1
  %gop.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %and.i, i32 34
  %43 = ptrtoint ptr %gop.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %gop.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc33.i, i32 %44)
  %cmp35.not.i = icmp ult i32 %inc33.i, %44
  %spec.store.select.i = select i1 %cmp35.not.i, i32 %inc33.i, i32 0
  %45 = ptrtoint ptr %frame_gop_seqno.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select.i, ptr %frame_gop_seqno.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %slock30.i) #6
  br label %tw5864_h264_isr.exit

do.end42.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %pci.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 10
  %46 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci.i, align 8
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.35, i32 noundef %and.i) #9
  br label %tw5864_h264_isr.exit

tw5864_h264_isr.exit:                             ; preds = %do.end42.i, %tasklet_schedule.exit.i
  %rem.pn.i = phi i32 [ %rem.i, %tasklet_schedule.exit.i ], [ %17, %do.end42.i ]
  %encoder_busy.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 7
  %48 = ptrtoint ptr %encoder_busy.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %encoder_busy.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call5.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %dma_addr.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %rem.pn.i, i32 0, i32 1
  %49 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_addr.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #6
  %52 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio, align 4
  %add.ptr50.i = getelementptr i8, ptr %53, i32 98432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %51) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %dma_addr54.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 3, i32 %rem.pn.i, i32 1, i32 1
  %54 = ptrtoint ptr %dma_addr54.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_addr54.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  %57 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio, align 4
  %add.ptr56.i = getelementptr i8, ptr %58, i32 98436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %56) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio, align 4
  %add.ptr61.i = getelementptr i8, ptr %60, i32 4116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 16777216) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio, align 4
  %add.ptr66.i = getelementptr i8, ptr %62, i32 98304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 33554432) #6, !srcloc !91
  br label %if.end18

if.end18:                                         ; preds = %tw5864_h264_isr.exit, %do.body.if.end18_crit_edge
  %and19 = and i32 %or, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio, align 4
  %add.ptr.i50 = getelementptr i8, ptr %64, i32 98304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 1073741824) #6, !srcloc !91
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #6
  %encoder_busy8.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 7
  %65 = ptrtoint ptr %encoder_busy8.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %encoder_busy8.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then21.if.end22_crit_edge

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.cond.preheader.i:                             ; preds = %if.then21
  %next_input12.i = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0138.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i56, %for.inc.i.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %next_input12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %next_input12.i, align 4
  %add.i51 = add i32 %68, %i.0138.i
  %rem.i52 = srem i32 %add.i51, 4
  %arrayidx.i53 = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %rem.i52
  %slock20.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %rem.i52, i32 3
  %call22.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock20.i) #6
  %enabled.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %rem.i52, i32 14
  %69 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool27.not.i = icmp eq i32 %70, 0
  br i1 %tobool27.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end29.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end29.i:                                       ; preds = %for.body.i
  %71 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio, align 4
  %add.ptr31.i = getelementptr i8, ptr %72, i32 56
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #6, !srcloc !93
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  %75 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i53, align 8
  %mul.i = shl i32 %76, 1
  %shl.i54 = shl i32 3, %mul.i
  %and.i55 = and i32 %shl.i54, %74
  %shr.i = lshr i32 %and.i55, %mul.i
  %buf_id.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %rem.i52, i32 29
  %77 = ptrtoint ptr %buf_id.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_id.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %shr.i)
  %cmp37.not.i = icmp eq i32 %78, %shr.i
  br i1 %cmp37.not.i, label %if.end61.i, label %cleanup.i

if.end61.i:                                       ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %new_frame_deadline.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %rem.i52, i32 36
  %80 = ptrtoint ptr %new_frame_deadline.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %new_frame_deadline.i, align 8
  %sub.i = sub i32 %79, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp62.i = icmp slt i32 %sub.i, 0
  br i1 %cmp62.i, label %do.body65.i, label %if.end61.i.for.inc.i_crit_edge

if.end61.i.for.inc.i_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body65.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio, align 4
  %add.ptr71.i = getelementptr i8, ptr %83, i32 16
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #6, !srcloc !93
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %86 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i53, align 8
  %mul76.i = shl i32 %87, 1
  %shl77.i = shl i32 3, %mul76.i
  %neg.i = xor i32 %shl77.i, -1
  %and78.i = and i32 %85, %neg.i
  %88 = ptrtoint ptr %buf_id.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %buf_id.i, align 8
  %add80.i = add i32 %89, 3
  %shl83.i = shl i32 %add80.i, %mul76.i
  %and87.i = and i32 %shl83.i, %shl77.i
  %or.i = or i32 %and87.i, %and78.i
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %91 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio, align 4
  %add.ptr89.i = getelementptr i8, ptr %92, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89.i, i32 %90) #6, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %add.i133.i = add i32 %93, 100
  %94 = ptrtoint ptr %new_frame_deadline.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i133.i, ptr %new_frame_deadline.i, align 8
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %buf_id.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shr.i, ptr %buf_id.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %96, 100
  %new_frame_deadline.i.i = getelementptr %struct.tw5864_dev, ptr %dev_id, i32 0, i32 2, i32 %rem.i52, i32 36
  %97 = ptrtoint ptr %new_frame_deadline.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.i.i, ptr %new_frame_deadline.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock20.i, i32 noundef %call22.i) #6
  %call51.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #6
  %98 = ptrtoint ptr %encoder_busy8.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %encoder_busy8.i, align 8
  %99 = trunc i32 %rem.i52 to i8
  %rem58.lhs.trunc.i = add nsw i8 %99, 1
  %rem58137.i = srem i8 %rem58.lhs.trunc.i, 4
  %rem58.sext.i = sext i8 %rem58137.i to i32
  %100 = ptrtoint ptr %next_input12.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %rem58.sext.i, ptr %next_input12.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call51.i) #6
  tail call void @tw5864_request_encoded_frame(ptr noundef %arrayidx.i53) #6
  br label %if.end22

for.inc.i:                                        ; preds = %do.body65.i, %if.end61.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock20.i, i32 noundef %call22.i) #6
  %inc.i56 = add nuw nsw i32 %i.0138.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i56, 4
  br i1 %exitcond.not.i, label %for.inc.i.if.end22_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end22_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %for.inc.i.if.end22_crit_edge, %cleanup.i, %if.then21.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %and23 = and i32 %or, 4325376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw5864_isr.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw5864_isr, %if.then32)) #6
          to label %cleanup [label %if.then32], !srcloc !112

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %pci = getelementptr inbounds %struct.tw5864_dev, ptr %dev_id, i32 0, i32 10
  %101 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pci, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw5864_isr.__UNIQUE_ID_ddebug307, ptr noundef %dev33, ptr noundef nonnull @.str.34, i32 noundef %or) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body26, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then32 ], [ 1, %if.end22.cleanup_crit_edge ], [ 1, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw5864_video_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw5864_request_encoded_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__UNIQUE_ID_description300, !1, !"__UNIQUE_ID_description300", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_author302, !5, !"__UNIQUE_ID_author302", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 30, i32 1}
!8 = !{ptr @__UNIQUE_ID_license304, !7, !"__UNIQUE_ID_license304", i1 false, i1 false}
!9 = !{ptr @__param_video_nr, !10, !"__param_video_nr", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 64, i32 1}
!11 = !{ptr @__UNIQUE_ID_video_nrtype305, !10, !"__UNIQUE_ID_video_nrtype305", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_video_nr306, !13, !"__UNIQUE_ID_video_nr306", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 65, i32 1}
!14 = !{ptr @__initcall__kmod_tw5864__308_349_tw5864_pci_driver_init6, !15, !"__initcall__kmod_tw5864__308_349_tw5864_pci_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 349, i32 1}
!16 = !{ptr @__exitcall_tw5864_pci_driver_exit, !15, !"__exitcall_tw5864_pci_driver_exit", i1 false, i1 false}
!17 = !{ptr @__param_str_video_nr, !10, !"__param_str_video_nr", i1 false, i1 false}
!18 = !{ptr @__param_arr_video_nr, !10, !"__param_arr_video_nr", i1 false, i1 false}
!19 = !{ptr @video_nr, !20, !"video_nr", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 62, i32 21}
!21 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tw5864_pci_driver, !23, !"tw5864_pci_driver", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 342, i32 26}
!24 = !{ptr @tw5864_pci_tbl, !25, !"tw5864_pci_tbl", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 72, i32 35}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 249, i32 41}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 259, i32 3}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tw5864_initdev._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @tw5864_initdev._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 267, i32 3}
!38 = !{ptr @tw5864_initdev._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tw5864_initdev._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 274, i32 3}
!42 = !{ptr @tw5864_initdev._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tw5864_initdev._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 280, i32 3}
!46 = !{ptr @tw5864_initdev._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tw5864_initdev._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @tw5864_initdev.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 284, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 286, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tw5864_initdev._entry.17, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @tw5864_initdev._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 288, i32 2}
!58 = !{ptr @tw5864_initdev._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tw5864_initdev._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 300, i32 3}
!62 = !{ptr @tw5864_initdev._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tw5864_initdev._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 304, i32 2}
!66 = !{ptr @tw5864_initdev._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tw5864_initdev._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 305, i32 2}
!70 = !{ptr @tw5864_initdev._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tw5864_initdev._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 116, i32 3}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tw5864_isr.__UNIQUE_ID_ddebug307, !73, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/tw5864/tw5864-core.c", i32 158, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tw5864_h264_isr._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @tw5864_h264_isr._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2156849040}
!91 = !{i64 5770235}
!92 = !{i64 2156849586}
!93 = !{i64 5770653}
!94 = !{i64 2156876585}
!95 = !{i64 2156878995}
!96 = !{i64 2156879522}
!97 = !{i64 2156850706}
!98 = !{i64 2156851233}
!99 = !{i64 2156851509}
!100 = !{i64 2156851982}
!101 = !{i64 2156855444}
!102 = !{i64 2156856340}
!103 = !{i64 2156856873}
!104 = !{i64 2156859068}
!105 = !{i64 2156859628}
!106 = !{i64 2156860158}
!107 = !{i64 2156860770}
!108 = !{i64 2156861434}
!109 = !{i64 2156863119}
!110 = !{i64 2156865867}
!111 = !{i64 2156867056}
!112 = !{i64 2148961601, i64 2148961606, i64 2148961619, i64 2148961663, i64 2148961697, i64 2148961718}
