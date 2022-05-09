; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c_pt.bc'
source_filename = "../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_csi = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], %struct.anon.86, %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_device, %struct.media_device, %struct.video_device, %struct.media_pad, %struct.v4l2_pix_format_mplane, %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_async_notifier, ptr, i32, %struct.mutex, %struct.vb2_queue, %struct.list_head, %struct.spinlock, i32 }
%struct.anon.86 = type { i32, ptr, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.93, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.93 = type { i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.89, i16, i16, i16, [10 x i16] }
%union.anon.89 = type { i16 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }
%struct.sun4i_csi_format = type { i32, i32, i32, i32, i32, [3 x i8], i32, i32 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_csi_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }

@sun4i_csi_dma_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&csi->qlock\00", [20 x i8] zeroinitializer }, align 32
@sun4i_csi_dma_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&csi->lock\00", [21 x i8] zeroinitializer }, align 32
@sun4i_csi_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @sun4i_csi_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @sun4i_csi_buffer_prepare, ptr null, ptr null, ptr @sun4i_csi_start_streaming, ptr @sun4i_csi_stop_streaming, ptr @sun4i_csi_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@sun4i_csi_dma_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 427, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize VB2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_csi_dma_register\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_csi_dma_register._entry_ptr = internal global ptr @sun4i_csi_dma_register._entry, section ".printk_index", align 4
@sun4i_csi_dma_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 433, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't register the v4l2 device\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_csi_dma_register._entry_ptr.10 = internal global ptr @sun4i_csi_dma_register._entry.8, section ".printk_index", align 4
@sun4i_csi_dma_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 440, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't register our interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_csi_dma_register._entry_ptr.13 = internal global ptr @sun4i_csi_dma_register._entry.11, section ".printk_index", align 4
@sun4i_csi_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 83, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer too small (%lu < %lu)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun4i_csi_buffer_prepare\00", [39 x i8] zeroinitializer }, align 32
@sun4i_csi_buffer_prepare._entry_ptr = internal global ptr @sun4i_csi_buffer_prepare._entry, section ".printk_index", align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@sun4i_csi_start_streaming.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i_csi\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sun4i_csi_start_streaming\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Starting capture\0A\00", [46 x i8] zeroinitializer }, align 32
@sun4i_csi_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 264, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate scratch buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_csi_start_streaming._entry_ptr = internal global ptr @sun4i_csi_start_streaming._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@sun4i_csi_setup_scratch_buffer.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sun4i_csi_setup_scratch_buffer\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"No more available buffer, using the scratch buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@sun4i_csi_stop_streaming.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun4i_csi_stop_streaming\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stopping capture\0A\00", [46 x i8] zeroinitializer }, align 32
@sun4i_csi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 393, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Flip failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sun4i_csi_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun4i_csi_irq._entry_ptr = internal global ptr @sun4i_csi_irq._entry, section ".printk_index", align 4
@sun4i_csi_buffer_mark_done.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun4i_csi_buffer_mark_done\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Scratch buffer was used, ignoring..\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 407, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 408, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"sun4i_csi_qops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 368, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 427, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 433, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 440, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 82, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1163, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 240, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 264, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 99, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 352, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 393, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [54 x i8] c"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 165, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @sun4i_csi_buffer_prepare._entry, ptr @sun4i_csi_buffer_prepare._entry_ptr, ptr @sun4i_csi_dma_register._entry, ptr @sun4i_csi_dma_register._entry.11, ptr @sun4i_csi_dma_register._entry.8, ptr @sun4i_csi_dma_register._entry_ptr, ptr @sun4i_csi_dma_register._entry_ptr.10, ptr @sun4i_csi_dma_register._entry_ptr.13, ptr @sun4i_csi_irq._entry, ptr @sun4i_csi_irq._entry_ptr, ptr @sun4i_csi_start_streaming._entry, ptr @sun4i_csi_start_streaming._entry_ptr, ptr @sun4i_csi_dma_register.__key, ptr @.str, ptr @sun4i_csi_dma_register.__key.1, ptr @.str.2, ptr @sun4i_csi_qops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_dma_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_dma_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_dma_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_dma_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_dma_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_csi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_csi_dma_register(ptr noundef %csi, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str, ptr noundef nonnull @sun4i_csi_dma_register.__key, i16 noundef signext 3) #5
  %lock = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @sun4i_csi_dma_register.__key.1) #5
  %buf_list = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 23
  %0 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 23, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf_list, ptr %prev.i, align 4
  %uglygep = getelementptr i8, ptr %csi, i32 28
  %2 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %uglygep, align 4
  %queue = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22
  %min_buffers_needed = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 15
  %3 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %min_buffers_needed, align 4
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 1
  %5 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 17, ptr %io_modes, align 4
  %lock5 = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 5
  %6 = ptrtoint ptr %lock5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock, ptr %lock5, align 4
  %drv_priv = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 10
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %csi, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 12
  %8 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 7
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sun4i_csi_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 8
  %10 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 13
  %11 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8192, ptr %timestamp_flags, align 4
  %12 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csi, align 8
  %dev6 = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev6, align 4
  %call7 = tail call i32 @vb2_queue_init(ptr noundef %queue) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  %15 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csi, align 8
  br i1 %cmp8, label %do.end11, label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.3) #8
  br label %err_free_mutex

if.end:                                           ; preds = %entry
  %v4l = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 10
  %call14 = tail call i32 @v4l2_device_register(ptr noundef %16, ptr noundef %v4l) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  %17 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csi, align 8
  br i1 %tobool.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.9) #8
  br label %err_free_mutex

if.end20:                                         ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %if.end20.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %irq, ptr noundef nonnull @sun4i_csi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %csi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %dev_name.exit.cleanup_crit_edge, label %do.end29

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csi, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.12) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l) #5
  br label %err_free_mutex

err_free_mutex:                                   ; preds = %do.end29, %do.end18, %do.end11
  %ret.0 = phi i32 [ %call7, %do.end11 ], [ %call14, %do.end18 ], [ %call.i, %do.end29 ]
  tail call void @mutex_destroy(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_mutex, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_mutex ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sun4i_csi, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !71
  %5 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %qlock = getelementptr inbounds %struct.sun4i_csi, ptr %data, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %qlock) #5
  %sequence = getelementptr inbounds %struct.sun4i_csi, ptr %data, i32 0, i32 25
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sequence, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %sequence, align 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %11 = lshr i32 %10, 25
  %.lobit.i = and i32 %11, 1
  %12 = xor i32 %.lobit.i, 1
  %arrayidx.i.i = getelementptr %struct.sun4i_csi, ptr %data, i32 0, i32 7, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end5.i.i

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_csi_buffer_mark_done.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_csi_irq, %if.then4.i.i)) #5
          to label %sun4i_csi_buffer_flip.exit [label %if.then4.i.i], !srcloc !73

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_csi_buffer_mark_done.__UNIQUE_ID_ddebug299, ptr noundef %16, ptr noundef nonnull @.str.29) #5
  br label %sun4i_csi_buffer_flip.exit

if.end5.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %field.i.i = getelementptr inbounds %struct.sun4i_csi, ptr %data, i32 0, i32 14, i32 3
  %17 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %field.i.i, align 4
  %field8.i.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %field8.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %field8.i.i, align 4
  %sequence9.i.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %14, i32 0, i32 4
  %20 = ptrtoint ptr %sequence9.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %7, ptr %sequence9.i.i, align 8
  %call.i.i.i = tail call i64 @ktime_get() #5
  %timestamp.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %14, i32 0, i32 5
  %21 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i.i.i, ptr %timestamp.i.i, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %14, i32 noundef 5) #5
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %sun4i_csi_buffer_flip.exit

sun4i_csi_buffer_flip.exit:                       ; preds = %if.end5.i.i, %if.then4.i.i, %do.body.i.i
  %call2.i = tail call fastcc i32 @sun4i_csi_buffer_fill_slot(ptr noundef %data, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool5.not = icmp eq i32 %call2.i, 0
  br i1 %tobool5.not, label %sun4i_csi_buffer_flip.exit.if.end10_crit_edge, label %do.end9

sun4i_csi_buffer_flip.exit.if.end10_crit_edge:    ; preds = %sun4i_csi_buffer_flip.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end9:                                          ; preds = %sun4i_csi_buffer_flip.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr.i22 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 0) #5, !srcloc !71
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %sun4i_csi_buffer_flip.exit.if.end10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_csi_dma_unregister(ptr noundef %csi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 10
  tail call void @v4l2_device_unregister(ptr noundef %v4l) #5
  %lock = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 21
  tail call void @mutex_destroy(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %num_planes1 = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 6
  %2 = ptrtoint ptr %num_planes1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes1, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp eq i32 %5, %conv
  br i1 %cmp.not, label %for.cond.preheader, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp443.not = icmp eq i8 %3, 0
  br i1 %cmp443.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.044
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 5, i32 %i.044
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8 = icmp ult i32 %7, %9
  br i1 %cmp8, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %entry
  %10 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1446.not = icmp eq i8 %3, 0
  br i1 %cmp1446.not, label %if.end12.cleanup_crit_edge, label %if.end12.for.body16_crit_edge

if.end12.for.body16_crit_edge:                    ; preds = %if.end12
  br label %for.body16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.end12.for.body16_crit_edge
  %i.147 = phi i32 [ %inc23, %for.body16.for.body16_crit_edge ], [ 0, %if.end12.for.body16_crit_edge ]
  %arrayidx19 = getelementptr %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 5, i32 %i.147
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr i32, ptr %sizes, i32 %i.147
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx21, align 4
  %inc23 = add nuw nsw i32 %i.147, 1
  %exitcond49.not = icmp eq i32 %inc23, %conv
  br i1 %exitcond49.not, label %for.body16.cleanup_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body16.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_buffer_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %num_planes = getelementptr inbounds %struct.sun4i_csi, ptr %3, i32 0, i32 14, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp37.not = icmp eq i8 %5, 0
  br i1 %cmp37.not, label %entry.cleanup7_crit_edge, label %for.body.lr.ph

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

for.body.lr.ph:                                   ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sun4i_csi, ptr %3, i32 0, i32 14, i32 5, i32 %i.038
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %i.038)
  %cmp.i = icmp ugt i32 %7, %i.038
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.038, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp4 = icmp ult i32 %11, %9
  br i1 %cmp4, label %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge, label %if.end42.i

vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_plane_size.exit26

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp432.not = icmp eq i32 %9, 0
  br i1 %cmp432.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_plane_size.exit26

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit26:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge
  %retval.0.i25 = phi i32 [ %11, %vb2_plane_size.exit.vb2_plane_size.exit26_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit26_crit_edge ]
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i25, i32 noundef %9) #8
  br label %cleanup7

if.end42.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.038, i32 3
  %14 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %15 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %16 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup7_crit_edge

vb2_set_plane_payload.exit.cleanup7_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup7

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup7:                                         ; preds = %vb2_set_plane_payload.exit.cleanup7_crit_edge, %vb2_plane_size.exit26, %entry.cleanup7_crit_edge
  %retval.2 = phi i32 [ -22, %vb2_plane_size.exit26 ], [ 0, %entry.cleanup7_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup7_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_csi_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %bus1 = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 9
  %fmt = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 14
  %pixelformat = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 2
  %call2 = tail call ptr @sun4i_csi_find_format(ptr noundef %pixelformat, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_csi_start_streaming.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_csi_start_streaming, %if.then7)) #5
          to label %do.end [label %if.then7], !srcloc !73

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_csi_start_streaming.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.19) #5
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %sequence = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sequence, align 4
  %scratch = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %scratch, align 4
  %num_planes = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 6
  %6 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp256.not = icmp eq i8 %7, 0
  br i1 %cmp256.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0257 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 5, i32 %i.0257
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scratch, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %scratch, align 4
  %inc = add nuw nsw i32 %i.0257, 1
  %12 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scratch, align 4
  %paddr = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 8, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef %17, ptr noundef %paddr, i32 noundef 3264, i32 noundef 0) #5
  %vaddr = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %vaddr, align 4
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.20) #8
  br label %do.body160

if.end28:                                         ; preds = %for.end
  %vdev = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 12
  %pipe = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 12, i32 2
  %call30 = tail call i32 @media_pipeline_start(ptr noundef %vdev, ptr noundef %pipe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end28.err_free_scratch_buffer_crit_edge, label %do.body36

if.end28.err_free_scratch_buffer_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_scratch_buffer

do.body36:                                        ; preds = %if.end28
  %qlock = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 24
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt, align 8
  %mul = shl i32 %22, 17
  %23 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %regs = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %height = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = lshr i32 %28, 16
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %add.ptr56 = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %29) #5, !srcloc !71
  %32 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bus1, align 4
  %and71 = lshr i32 %33, 6
  %and71.lobit = and i32 %and71, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %input = getelementptr inbounds %struct.sun4i_csi_format, ptr %call2, i32 0, i32 2
  %34 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %input, align 4
  %shl80 = shl i32 %35, 20
  %output = getelementptr inbounds %struct.sun4i_csi_format, ptr %call2, i32 0, i32 3
  %36 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %output, align 4
  %shl81 = shl i32 %37, 16
  %38 = lshr i32 %33, 3
  %shl82 = and i32 %38, 4
  %39 = lshr i32 %33, 2
  %shl84 = and i32 %39, 2
  %or83 = or i32 %shl84, %shl82
  %or = or i32 %or83, %and71.lobit
  %or85 = or i32 %or, %shl80
  %or87 = or i32 %or85, %shl81
  %40 = tail call i32 @llvm.bswap.i32(i32 %or87)
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %add.ptr89 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %40) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %bytesperline = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 14, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytesperline, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %add.ptr97 = getelementptr i8, ptr %47, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %45) #5, !srcloc !71
  %call.i242 = tail call fastcc i32 @sun4i_csi_buffer_fill_slot(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %tobool.not.i = icmp eq i32 %call.i242, 0
  br i1 %tobool.not.i, label %sun4i_csi_buffer_fill_all.exit, label %do.body36.if.then100_crit_edge

do.body36.if.then100_crit_edge:                   ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then100

sun4i_csi_buffer_fill_all.exit:                   ; preds = %do.body36
  %call.1.i = tail call fastcc i32 @sun4i_csi_buffer_fill_slot(ptr noundef %1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool99.not = icmp eq i32 %call.1.i, 0
  br i1 %tobool99.not, label %do.body103, label %sun4i_csi_buffer_fill_all.exit.if.then100_crit_edge

sun4i_csi_buffer_fill_all.exit.if.then100_crit_edge: ; preds = %sun4i_csi_buffer_fill_all.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then100

if.then100:                                       ; preds = %sun4i_csi_buffer_fill_all.exit.if.then100_crit_edge, %do.body36.if.then100_crit_edge
  %retval.0.i243250 = phi i32 [ %call.1.i, %sun4i_csi_buffer_fill_all.exit.if.then100_crit_edge ], [ %call.i242, %do.body36.if.then100_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call41) #5
  br label %err_disable_pipeline

do.body103:                                       ; preds = %sun4i_csi_buffer_fill_all.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %add.ptr107 = getelementptr i8, ptr %49, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 16777216) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %add.ptr112 = getelementptr i8, ptr %51, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 33554432) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 8
  %add.ptr117 = getelementptr i8, ptr %53, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 33554432) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #5, !srcloc !71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call41) #5
  %src_subdev = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %src_subdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %src_subdev, align 4
  %tobool119.not = icmp eq ptr %57, null
  br i1 %tobool119.not, label %do.body103.if.end141_crit_edge, label %if.else

do.body103.if.end141_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

if.else:                                          ; preds = %do.body103
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %video, align 4
  %tobool121.not = icmp eq ptr %61, null
  br i1 %tobool121.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_stream, align 4
  %tobool124.not = icmp eq ptr %63, null
  br i1 %tobool124.not, label %land.lhs.true.cleanup_crit_edge, label %if.else126

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else126:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool127.not = icmp eq ptr %64, null
  br i1 %tobool127.not, label %if.else126.if.else134_crit_edge, label %land.lhs.true128

if.else126.if.else134_crit_edge:                  ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else134

land.lhs.true128:                                 ; preds = %if.else126
  %s_stream129 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %s_stream129 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_stream129, align 4
  %tobool130.not = icmp eq ptr %66, null
  br i1 %tobool130.not, label %land.lhs.true128.if.else134_crit_edge, label %land.lhs.true128.if.end141.sink.split_crit_edge

land.lhs.true128.if.end141.sink.split_crit_edge:  ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141.sink.split

land.lhs.true128.if.else134_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else134

if.else134:                                       ; preds = %land.lhs.true128.if.else134_crit_edge, %if.else126.if.else134_crit_edge
  br label %if.end141.sink.split

if.end141.sink.split:                             ; preds = %if.else134, %land.lhs.true128.if.end141.sink.split_crit_edge
  %.sink = phi ptr [ %63, %if.else134 ], [ %66, %land.lhs.true128.if.end141.sink.split_crit_edge ]
  %call138 = tail call i32 %.sink(ptr noundef nonnull %57, i32 noundef 1) #5
  br label %if.end141

if.end141:                                        ; preds = %if.end141.sink.split, %do.body103.if.end141_crit_edge
  %__result.0 = phi i32 [ -19, %do.body103.if.end141_crit_edge ], [ %call138, %if.end141.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0)
  %cmp143 = icmp sgt i32 %__result.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0)
  %cmp146.not = icmp eq i32 %__result.0, -515
  %or.cond = or i1 %cmp143, %cmp146.not
  br i1 %or.cond, label %if.end141.cleanup_crit_edge, label %err_disable_device

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_disable_device:                               ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 8
  %add.ptr.i245 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 0) #5, !srcloc !71
  br label %err_disable_pipeline

err_disable_pipeline:                             ; preds = %err_disable_device, %if.then100
  %ret.0 = phi i32 [ %retval.0.i243250, %if.then100 ], [ %__result.0, %err_disable_device ]
  tail call void @media_pipeline_stop(ptr noundef %vdev) #5
  br label %err_free_scratch_buffer

err_free_scratch_buffer:                          ; preds = %err_disable_pipeline, %if.end28.err_free_scratch_buffer_crit_edge
  %ret.1 = phi i32 [ %call30, %if.end28.err_free_scratch_buffer_crit_edge ], [ %ret.0, %err_disable_pipeline ]
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 8
  %71 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %scratch, align 4
  %73 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vaddr, align 4
  %75 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %70, i32 noundef %72, ptr noundef %74, i32 noundef %76, i32 noundef 0) #5
  br label %do.body160

do.body160:                                       ; preds = %err_free_scratch_buffer, %do.end26
  %ret.2 = phi i32 [ %ret.1, %err_free_scratch_buffer ], [ -12, %do.end26 ]
  %qlock166 = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 24
  %call168 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock166) #5
  %buf_list.i = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 23
  %77 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf_list.i, align 8
  %cmp.not34.i = icmp eq ptr %78, %buf_list.i
  br i1 %cmp.not34.i, label %do.body160.for.cond13.preheader.i_crit_edge, label %do.body160.for.body.i_crit_edge

do.body160.for.body.i_crit_edge:                  ; preds = %do.body160
  br label %for.body.i

do.body160.for.cond13.preheader.i_crit_edge:      ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %list_del.exit.i.for.cond13.preheader.i_crit_edge, %do.body160.for.cond13.preheader.i_crit_edge
  %arrayidx.i = getelementptr %struct.sun4i_csi, ptr %1, i32 0, i32 7, i32 0
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i246 = icmp eq ptr %80, null
  br i1 %tobool.not.i246, label %for.cond13.preheader.i.cleanup.i_crit_edge, label %if.end.i

for.cond13.preheader.i.cleanup.i_crit_edge:       ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %do.body160.for.body.i_crit_edge
  %.pn.in35.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %78, %do.body160.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in35.i, i32 -736
  %81 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn.i = load ptr, ptr %.pn.in35.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 3) #5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i.i, align 4
  %84 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %.pn.in35.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %88 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.cond13.preheader.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_del.exit.i.for.cond13.preheader.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader.i

if.end.i:                                         ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_buffer_done(ptr noundef nonnull %80, i32 noundef 3) #5
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.cond13.preheader.i.cleanup.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.sun4i_csi, ptr %1, i32 0, i32 7, i32 1
  %91 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %92, null
  br i1 %tobool.not.1.i, label %cleanup.i.return_all_buffers.exit_crit_edge, label %if.end.1.i

cleanup.i.return_all_buffers.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return_all_buffers.exit

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_buffer_done(ptr noundef nonnull %92, i32 noundef 3) #5
  %93 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %if.end.1.i, %cleanup.i.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock166, i32 noundef %call168) #5
  br label %cleanup

cleanup:                                          ; preds = %return_all_buffers.exit, %if.end141.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %return_all_buffers.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end141.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_csi_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_csi_stop_streaming.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_csi_stop_streaming, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_csi_stop_streaming.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.24) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %src_subdev = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %src_subdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_subdev, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end26_crit_edge, label %if.else

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.else:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_stream, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %land.lhs.true.if.end26_crit_edge, label %if.else11

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.else11:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.else11.if.else19_crit_edge, label %land.lhs.true13

if.else11.if.else19_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else19

land.lhs.true13:                                  ; preds = %if.else11
  %s_stream14 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_stream14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_stream14, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %land.lhs.true13.if.else19_crit_edge, label %land.lhs.true13.if.end26.sink.split_crit_edge

land.lhs.true13.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.sink.split

land.lhs.true13.if.else19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true13.if.else19_crit_edge, %if.else11.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true13.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else19 ], [ %14, %land.lhs.true13.if.end26.sink.split_crit_edge ]
  %call23 = tail call i32 %.sink(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge, %do.end.if.end26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %regs.i = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !71
  %qlock = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 24
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #5
  %buf_list.i = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf_list.i, align 8
  %cmp.not34.i = icmp eq ptr %18, %buf_list.i
  br i1 %cmp.not34.i, label %if.end26.for.cond13.preheader.i_crit_edge, label %if.end26.for.body.i_crit_edge

if.end26.for.body.i_crit_edge:                    ; preds = %if.end26
  br label %for.body.i

if.end26.for.cond13.preheader.i_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %list_del.exit.i.for.cond13.preheader.i_crit_edge, %if.end26.for.cond13.preheader.i_crit_edge
  %arrayidx.i = getelementptr %struct.sun4i_csi, ptr %1, i32 0, i32 7, i32 0
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %for.cond13.preheader.i.cleanup.i_crit_edge, label %if.end.i

for.cond13.preheader.i.cleanup.i_crit_edge:       ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end26.for.body.i_crit_edge
  %.pn.in35.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %18, %if.end26.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in35.i, i32 -736
  %21 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load ptr, ptr %.pn.in35.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in35.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.for.cond13.preheader.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_del.exit.i.for.cond13.preheader.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13.preheader.i

if.end.i:                                         ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_buffer_done(ptr noundef nonnull %20, i32 noundef 6) #5
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.cond13.preheader.i.cleanup.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.sun4i_csi, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %32, null
  br i1 %tobool.not.1.i, label %cleanup.i.return_all_buffers.exit_crit_edge, label %if.end.1.i

cleanup.i.return_all_buffers.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return_all_buffers.exit

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_buffer_done(ptr noundef nonnull %32, i32 noundef 6) #5
  %33 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %if.end.1.i, %cleanup.i.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call32) #5
  %vdev = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 12
  tail call void @media_pipeline_stop(ptr noundef %vdev) #5
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %scratch = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scratch, align 4
  %vaddr = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vaddr, align 4
  %paddr = getelementptr inbounds %struct.sun4i_csi, ptr %1, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef %37, ptr noundef %39, i32 noundef %41, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_csi_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %qlock = getelementptr inbounds %struct.sun4i_csi, ptr %3, i32 0, i32 24
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #5
  %list = getelementptr inbounds %struct.sun4i_csi_buffer, ptr %vb, i32 0, i32 1
  %buf_list = getelementptr inbounds %struct.sun4i_csi, ptr %3, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.sun4i_csi, ptr %3, i32 0, i32 23, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %buf_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun4i_csi_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun4i_csi_find_format(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_csi_buffer_fill_slot(ptr noundef %csi, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sun4i_csi, ptr %csi, i32 0, i32 7, i32 %slot
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !83

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 121, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %buf_list = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 23
  %2 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not = icmp eq ptr %3, %buf_list
  br i1 %cmp.i.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  %paddr.i = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_csi_setup_scratch_buffer.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_csi_buffer_fill_slot, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !73

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %csi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csi, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_csi_setup_scratch_buffer.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.22) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then24
  %num_planes.i = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 14, i32 6
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp3.not.i = icmp eq i8 %9, 0
  br i1 %cmp3.not.i, label %do.end.i.sun4i_csi_setup_scratch_buffer.exit_crit_edge, label %do.body4.lr.ph.i

do.end.i.sun4i_csi_setup_scratch_buffer.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun4i_csi_setup_scratch_buffer.exit

do.body4.lr.ph.i:                                 ; preds = %do.end.i
  %regs.i = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 2
  %mul7.i = shl i32 %slot, 2
  %add.i = add i32 %mul7.i, 16
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body4.lr.ph.i
  %addr.05.i = phi i32 [ %5, %do.body4.lr.ph.i ], [ %add10.i, %do.body4.i.do.body4.i_crit_edge ]
  %plane.04.i = phi i32 [ 0, %do.body4.lr.ph.i ], [ %inc.i, %do.body4.i.do.body4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %addr.05.i) #5
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %mul.i = shl i32 %plane.04.i, 3
  %add8.i = add i32 %add.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #5, !srcloc !71
  %arrayidx.i = getelementptr %struct.sun4i_csi, ptr %csi, i32 0, i32 14, i32 5, i32 %plane.04.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add10.i = add i32 %14, %addr.05.i
  %inc.i = add nuw nsw i32 %plane.04.i, 1
  %15 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_planes.i, align 4
  %conv.i56 = zext i8 %16 to i32
  %cmp.i57 = icmp ult i32 %inc.i, %conv.i56
  br i1 %cmp.i57, label %do.body4.i.do.body4.i_crit_edge, label %do.body4.i.sun4i_csi_setup_scratch_buffer.exit_crit_edge

do.body4.i.sun4i_csi_setup_scratch_buffer.exit_crit_edge: ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun4i_csi_setup_scratch_buffer.exit

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4.i

sun4i_csi_setup_scratch_buffer.exit:              ; preds = %do.body4.i.sun4i_csi_setup_scratch_buffer.exit_crit_edge, %do.end.i.sun4i_csi_setup_scratch_buffer.exit_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_del_init.exit_crit_edge

if.end26.list_del_init.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end26.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %prev.i3.i, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %num_planes = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 14, i32 6
  %27 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp59.not = icmp eq i8 %28, 0
  br i1 %cmp59.not, label %list_del_init.exit.cleanup_crit_edge, label %for.body.lr.ph

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %list_del_init.exit
  %regs = getelementptr inbounds %struct.sun4i_csi, ptr %csi, i32 0, i32 2
  %mul36 = shl i32 %slot, 2
  %add = add i32 %mul36, 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %plane.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef %plane.060) #5
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %mul = shl i32 %plane.060, 3
  %add37 = add i32 %add, %mul
  %add.ptr38 = getelementptr i8, ptr %33, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %31) #5, !srcloc !71
  %inc = add nuw nsw i32 %plane.060, 1
  %34 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_planes, align 4
  %conv = zext i8 %35 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %list_del_init.exit.cleanup_crit_edge, %sun4i_csi_setup_scratch_buffer.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sun4i_csi_setup_scratch_buffer.exit ], [ 0, %list_del_init.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @sun4i_csi_dma_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 407, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @sun4i_csi_dma_register.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 408, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 427, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sun4i_csi_dma_register._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @sun4i_csi_dma_register._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 433, i32 3}
!16 = !{ptr @sun4i_csi_dma_register._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sun4i_csi_dma_register._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 440, i32 3}
!20 = !{ptr @sun4i_csi_dma_register._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun4i_csi_dma_register._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sun4i_csi_qops, !23, !"sun4i_csi_qops", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 368, i32 29}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 82, i32 4}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sun4i_csi_buffer_prepare._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @sun4i_csi_buffer_prepare._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 240, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sun4i_csi_start_streaming.__UNIQUE_ID_ddebug300, !33, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 264, i32 3}
!39 = !{ptr @sun4i_csi_start_streaming._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sun4i_csi_start_streaming._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 99, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sun4i_csi_setup_scratch_buffer.__UNIQUE_ID_ddebug298, !42, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 352, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sun4i_csi_stop_streaming.__UNIQUE_ID_ddebug301, !46, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 393, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sun4i_csi_irq._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @sun4i_csi_irq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/sunxi/sun4i-csi/sun4i_dma.c", i32 165, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sun4i_csi_buffer_mark_done.__UNIQUE_ID_ddebug299, !56, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 4868807}
!69 = !{i64 2156347756}
!70 = !{i64 2156347974}
!71 = !{i64 4868389}
!72 = !{i64 2156329032}
!73 = !{i64 2148287136, i64 2148287141, i64 2148287154, i64 2148287198, i64 2148287232, i64 2148287253}
!74 = !{i64 2156318510}
!75 = !{i64 2156339019}
!76 = !{i64 2156339544}
!77 = !{i64 2156340498}
!78 = !{i64 2156341278}
!79 = !{i64 2156341869}
!80 = !{i64 2156342434}
!81 = !{i64 2156343004}
!82 = !{i64 2156318048}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2156323239}
!85 = !{i64 2156325913}
