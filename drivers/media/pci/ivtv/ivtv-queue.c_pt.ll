; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-queue.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119 }
%struct.anon.112 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, ptr }
%struct.anon.114 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.92 }
%union.anon.92 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.94, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.94 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.111, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.111 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_stream_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s:  info: Allocate %s%s stream: %d x %d buffers (%dkB total)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ivtv_stream_alloc\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/ivtv/ivtv-queue.c\00", [60 x i8] zeroinitializer }, align 32
@ivtv_stream_alloc._entry_ptr = internal global ptr @ivtv_stream_alloc._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA \00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ivtv_stream_alloc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Could not allocate sg_pending for %s stream\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtv_stream_alloc._entry_ptr.7 = internal global ptr @ivtv_stream_alloc._entry.5, section ".printk_index", align 4
@ivtv_stream_alloc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: Could not allocate sg_processing for %s stream\0A\00", [42 x i8] zeroinitializer }, align 32
@ivtv_stream_alloc._entry_ptr.10 = internal global ptr @ivtv_stream_alloc._entry.8, section ".printk_index", align 4
@ivtv_stream_alloc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Could not allocate sg_dma for %s stream\0A\00", [49 x i8] zeroinitializer }, align 32
@ivtv_stream_alloc._entry_ptr.13 = internal global ptr @ivtv_stream_alloc._entry.11, section ".printk_index", align 4
@ivtv_stream_alloc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Couldn't allocate buffers for %s stream\0A\00", [49 x i8] zeroinitializer }, align 32
@ivtv_stream_alloc._entry_ptr.16 = internal global ptr @ivtv_stream_alloc._entry.14, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 190, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 196, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 203, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 213, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private constant [39 x i8] c"../drivers/media/pci/ivtv/ivtv-queue.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 249, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 230, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 214, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 156, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 326, i32 6 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ivtv_stream_alloc._entry, ptr @ivtv_stream_alloc._entry.11, ptr @ivtv_stream_alloc._entry.14, ptr @ivtv_stream_alloc._entry.5, ptr @ivtv_stream_alloc._entry.8, ptr @ivtv_stream_alloc._entry_ptr, ptr @ivtv_stream_alloc._entry_ptr.10, ptr @ivtv_stream_alloc._entry_ptr.13, ptr @ivtv_stream_alloc._entry_ptr.16, ptr @ivtv_stream_alloc._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_alloc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_alloc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_alloc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stream_alloc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_buf_copy_from_user(ptr nocapture noundef readonly %s, ptr nocapture noundef %buf, ptr noundef %src, i32 noundef %copybytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 8
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused, align 4
  %sub = sub i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %copybytes)
  %buf4 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 4
  %5 = ptrtoint ptr %buf4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf4, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i.i = icmp slt i32 %4, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %entry
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.return_crit_edge, label %if.then27.i.i, !prof !45

land.rhs16.i.i.return_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %return

if.then.i.i.i:                                    ; preds = %entry
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %4, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %4, i32 -1226833920) #12, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !45

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %4) #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !47
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %src, i32 noundef %4) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !49
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.then11.i.i, !prof !45

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %return

if.end7:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytesused, align 4
  %add = add i32 %13, %4
  store i32 %add, ptr %bytesused, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.return_crit_edge
  %retval.0 = phi i32 [ %4, %if.end7 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_buf_swap(ptr nocapture noundef readonly %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytesused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buf1 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %i.06
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr, align 4
  %add = add i32 %i.06, 4
  %8 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesused, align 4
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_queue_init(ptr noundef %q) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %q, ptr %q, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %q, ptr %prev.i, align 4
  %buffers = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buffers, align 4
  %length = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 2
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %length, align 4
  %bytesused = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 3
  %4 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytesused, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_enqueue(ptr noundef %s, ptr noundef %buf, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_free = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21
  %cmp = icmp eq ptr %q_free, %q
  br i1 %cmp, label %if.then, label %entry.do.body1_crit_edge

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytesused, align 4
  %readpos = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 6
  %1 = ptrtoint ptr %readpos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %readpos, align 4
  %b_flags = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 2
  %2 = ptrtoint ptr %b_flags to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %b_flags, align 4
  %dma_xfer_cnt = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %dma_xfer_cnt to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %dma_xfer_cnt, align 2
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  %qlock = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %buf, ptr noundef %5, ptr noundef %q) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_add_tail.exit_crit_edge

do.body1.list_add_tail.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %prev.i, align 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %q, ptr %buf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %buf, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body1.list_add_tail.exit_crit_edge
  %buffers = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 1
  %10 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffers, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %buffers, align 4
  %buf_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %12 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_size, align 8
  %length = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %length, align 4
  %bytesused7 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 5
  %16 = ptrtoint ptr %bytesused7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytesused7, align 4
  %readpos8 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 6
  %18 = ptrtoint ptr %readpos8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %readpos8, align 4
  %sub = sub i32 %17, %19
  %bytesused9 = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused9, align 4
  %add10 = add i32 %sub, %21
  store i32 %add10, ptr %bytesused9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ivtv_dequeue(ptr noundef %s, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #9
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %q, align 4
  %cmp.i.not = icmp eq ptr %1, %q
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %buffers = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 1
  %10 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffers, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %buffers, align 4
  %buf_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %12 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_size, align 8
  %length = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %sub = sub i32 %15, %13
  store i32 %sub, ptr %length, align 4
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytesused, align 4
  %readpos = getelementptr inbounds %struct.ivtv_buffer, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %readpos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %readpos, align 4
  %sub10.neg = sub i32 %19, %17
  %bytesused11 = getelementptr inbounds %struct.ivtv_queue, ptr %q, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused11, align 4
  %sub12 = add i32 %sub10.neg, %21
  store i32 %sub12, ptr %bytesused11, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %buf.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %1, %list_del_init.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call2) #9
  ret ptr %buf.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_queue_move(ptr noundef %s, ptr noundef %from, ptr noundef %steal, ptr noundef %to, i32 noundef %needed_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_free = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21
  %cmp = icmp eq ptr %q_free, %from
  %conv = zext i1 %cmp to i32
  %cmp2 = icmp eq ptr %q_free, %to
  %conv3 = zext i1 %cmp2 to i32
  %qlock = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needed_bytes)
  %cmp10 = icmp eq i32 %needed_bytes, 0
  br i1 %cmp10, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr inbounds %struct.ivtv_queue, ptr %from, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %from_free.0 = phi i32 [ 1, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  %needed_bytes.addr.0 = phi i32 [ %1, %if.then ], [ %needed_bytes, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from_free.0)
  %tobool.not = icmp eq i32 %from_free.0, 0
  %length12 = getelementptr inbounds %struct.ivtv_queue, ptr %from, i32 0, i32 2
  %bytesused = getelementptr inbounds %struct.ivtv_queue, ptr %from, i32 0, i32 3
  %cond.in = select i1 %tobool.not, ptr %bytesused, ptr %length12
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load i32, ptr %cond.in, align 4
  %tobool14.not = icmp eq ptr %steal, null
  %or.cond = or i1 %tobool14.not, %tobool.not
  br i1 %or.cond, label %if.end.cond.end18_crit_edge, label %cond.true15

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end18

cond.true15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %length16 = getelementptr inbounds %struct.ivtv_queue, ptr %steal, i32 0, i32 2
  %3 = ptrtoint ptr %length16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length16, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true15, %if.end.cond.end18_crit_edge
  %cond19 = phi i32 [ %4, %cond.true15 ], [ 0, %if.end.cond.end18_crit_edge ]
  %add = add i32 %cond19, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %needed_bytes.addr.0)
  %cmp20 = icmp slt i32 %add, %needed_bytes.addr.0
  br i1 %cmp20, label %cond.end18.cleanup_crit_edge, label %while.cond.preheader

cond.end18.cleanup_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %cond.end18
  %tobool25.not = icmp ne ptr %steal, null
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %needed_bytes.addr.0)
  %cmp26151 = icmp slt i32 %cond, %needed_bytes.addr.0
  %or.cond140152 = select i1 %tobool25.not, i1 %cmp26151, i1 false
  br i1 %or.cond140152, label %while.body.lr.ph, label %while.cond.preheader.while.end65_crit_edge

while.cond.preheader.while.end65_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end65

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %prev = getelementptr inbounds %struct.list_head, ptr %steal, i32 0, i32 1
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %from, i32 0, i32 1
  %buffers = getelementptr inbounds %struct.ivtv_queue, ptr %steal, i32 0, i32 1
  %buf_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %length40 = getelementptr inbounds %struct.ivtv_queue, ptr %steal, i32 0, i32 2
  %bytesused43 = getelementptr inbounds %struct.ivtv_queue, ptr %steal, i32 0, i32 3
  %buffers48 = getelementptr inbounds %struct.ivtv_queue, ptr %from, i32 0, i32 1
  br label %while.body36.preheader

while.body36.preheader:                           ; preds = %while.end.while.body36.preheader_crit_edge, %while.body.lr.ph
  %rc.0154 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.end.while.body36.preheader_crit_edge ]
  %bytes_available.0153 = phi i32 [ %cond, %while.body.lr.ph ], [ %add54, %while.end.while.body36.preheader_crit_edge ]
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  %dma_xfer_cnt29 = getelementptr inbounds %struct.ivtv_buffer, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dma_xfer_cnt29 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dma_xfer_cnt29, align 2
  br label %while.body36

while.body36:                                     ; preds = %if.end59.while.body36_crit_edge, %while.body36.preheader
  %dma_xfer_cnt32147 = phi ptr [ %dma_xfer_cnt32, %if.end59.while.body36_crit_edge ], [ %dma_xfer_cnt29, %while.body36.preheader ]
  %rc.1146 = phi i32 [ %inc, %if.end59.while.body36_crit_edge ], [ %rc.0154, %while.body36.preheader ]
  %buf.0145 = phi ptr [ %46, %if.end59.while.body36_crit_edge ], [ %6, %while.body36.preheader ]
  %bytes_available.1144 = phi i32 [ %add54, %if.end59.while.body36_crit_edge ], [ %bytes_available.0153, %while.body36.preheader ]
  %9 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body36.__list_del_entry.exit.i_crit_edge

while.body36.__list_del_entry.exit.i_crit_edge:   ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body36
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body36.__list_del_entry.exit.i_crit_edge
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %18, ptr noundef %from) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %prev.i2.i, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %from, ptr %10, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %10, ptr %18, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %inc = add i32 %rc.1146, 1
  %23 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffers, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %buffers, align 4
  %25 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buf_size, align 8
  %27 = ptrtoint ptr %length40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length40, align 4
  %sub = sub i32 %28, %26
  store i32 %sub, ptr %length40, align 4
  %bytesused41 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0145, i32 0, i32 5
  %29 = ptrtoint ptr %bytesused41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytesused41, align 4
  %readpos = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0145, i32 0, i32 6
  %31 = ptrtoint ptr %readpos to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %readpos, align 4
  %sub42.neg = sub i32 %32, %30
  %33 = ptrtoint ptr %bytesused43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesused43, align 4
  %sub44 = add i32 %sub42.neg, %34
  store i32 %sub44, ptr %bytesused43, align 4
  %35 = ptrtoint ptr %dma_xfer_cnt32147 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %dma_xfer_cnt32147, align 2
  %b_flags = getelementptr inbounds %struct.ivtv_buffer, ptr %buf.0145, i32 0, i32 2
  %36 = ptrtoint ptr %b_flags to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %b_flags, align 4
  store i32 0, ptr %readpos, align 4
  store i32 0, ptr %bytesused41, align 4
  %37 = ptrtoint ptr %buffers48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buffers48, align 4
  %inc49 = add i32 %38, 1
  store i32 %inc49, ptr %buffers48, align 4
  %39 = load i32, ptr %buf_size, align 8
  %40 = ptrtoint ptr %length12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length12, align 4
  %add52 = add i32 %41, %39
  store i32 %add52, ptr %length12, align 4
  %42 = load i32, ptr %buf_size, align 8
  %add54 = add i32 %42, %bytes_available.1144
  %43 = ptrtoint ptr %steal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %steal, align 4
  %cmp.i.not = icmp eq ptr %44, %steal
  br i1 %cmp.i.not, label %list_move_tail.exit.while.end_crit_edge, label %if.end59

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end59:                                         ; preds = %list_move_tail.exit
  %45 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev, align 4
  %dma_xfer_cnt32 = getelementptr inbounds %struct.ivtv_buffer, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dma_xfer_cnt32 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dma_xfer_cnt32, align 2
  %cmp34 = icmp eq i16 %8, %48
  br i1 %cmp34, label %if.end59.while.body36_crit_edge, label %if.end59.while.end_crit_edge

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end59.while.body36_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body36

while.end:                                        ; preds = %if.end59.while.end_crit_edge, %list_move_tail.exit.while.end_crit_edge
  %cmp26 = icmp slt i32 %add54, %needed_bytes.addr.0
  br i1 %cmp26, label %while.end.while.body36.preheader_crit_edge, label %while.end.while.end65_crit_edge

while.end.while.end65_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end65

while.end.while.body36.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body36.preheader

while.end65:                                      ; preds = %while.end.while.end65_crit_edge, %while.cond.preheader.while.end65_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end65_crit_edge ], [ %inc, %while.end.while.end65_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %while.end65
  %length68 = getelementptr inbounds %struct.ivtv_queue, ptr %to, i32 0, i32 2
  %49 = ptrtoint ptr %length68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needed_bytes.addr.0)
  %cmp72157.not = icmp eq i32 %needed_bytes.addr.0, 0
  br i1 %cmp72157.not, label %if.then67.cleanup_crit_edge, label %if.then67.while.body74_crit_edge

if.then67.while.body74_crit_edge:                 ; preds = %if.then67
  br label %while.body74

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body74:                                     ; preds = %while.body74.while.body74_crit_edge, %if.then67.while.body74_crit_edge
  tail call fastcc void @ivtv_queue_move_buf(ptr noundef %s, ptr noundef %from, ptr noundef %to, i32 noundef 1)
  %51 = ptrtoint ptr %length68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length68, align 4
  %sub71 = sub i32 %52, %50
  %cmp72 = icmp ult i32 %sub71, %needed_bytes.addr.0
  br i1 %cmp72, label %while.body74.while.body74_crit_edge, label %while.body74.cleanup_crit_edge

while.body74.cleanup_crit_edge:                   ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body74.while.body74_crit_edge:              ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body74

if.else:                                          ; preds = %while.end65
  %bytesused76 = getelementptr inbounds %struct.ivtv_queue, ptr %to, i32 0, i32 3
  %53 = ptrtoint ptr %bytesused76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytesused76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needed_bytes.addr.0)
  %cmp80159.not = icmp eq i32 %needed_bytes.addr.0, 0
  br i1 %cmp80159.not, label %if.else.cleanup_crit_edge, label %if.else.while.body82_crit_edge

if.else.while.body82_crit_edge:                   ; preds = %if.else
  br label %while.body82

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body82:                                     ; preds = %while.body82.while.body82_crit_edge, %if.else.while.body82_crit_edge
  tail call fastcc void @ivtv_queue_move_buf(ptr noundef %s, ptr noundef %from, ptr noundef %to, i32 noundef %conv3)
  %55 = ptrtoint ptr %bytesused76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bytesused76, align 4
  %sub79 = sub i32 %56, %54
  %cmp80 = icmp ult i32 %sub79, %needed_bytes.addr.0
  br i1 %cmp80, label %while.body82.while.body82_crit_edge, label %while.body82.cleanup_crit_edge

while.body82.cleanup_crit_edge:                   ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body82.while.body82_crit_edge:              ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body82

cleanup:                                          ; preds = %while.body82.cleanup_crit_edge, %if.else.cleanup_crit_edge, %while.body74.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %cond.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %cond.end18.cleanup_crit_edge ], [ %rc.0.lcssa, %if.then67.cleanup_crit_edge ], [ %rc.0.lcssa, %if.else.cleanup_crit_edge ], [ %rc.0.lcssa, %while.body82.cleanup_crit_edge ], [ %rc.0.lcssa, %while.body74.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call7) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_queue_move_buf(ptr nocapture noundef readonly %s, ptr nocapture noundef %from, ptr noundef %to, i32 noundef %clear) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %from, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %to, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %9, ptr noundef %to) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev.i2.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %to, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %1, ptr %9, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %buffers = getelementptr inbounds %struct.ivtv_queue, ptr %from, i32 0, i32 1
  %14 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffers, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %buffers, align 4
  %buf_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %16 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_size, align 8
  %length = getelementptr inbounds %struct.ivtv_queue, ptr %from, i32 0, i32 2
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length, align 4
  %sub = sub i32 %19, %17
  store i32 %sub, ptr %length, align 4
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused, align 4
  %readpos = getelementptr inbounds %struct.ivtv_buffer, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %readpos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %readpos, align 4
  %sub4.neg = sub i32 %23, %21
  %bytesused5 = getelementptr inbounds %struct.ivtv_queue, ptr %from, i32 0, i32 3
  %24 = ptrtoint ptr %bytesused5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytesused5, align 4
  %sub6 = add i32 %sub4.neg, %25
  store i32 %sub6, ptr %bytesused5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear)
  %tobool.not = icmp eq i32 %clear, 0
  br i1 %tobool.not, label %list_move_tail.exit.if.end_crit_edge, label %if.then

list_move_tail.exit.if.end_crit_edge:             ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dma_xfer_cnt = getelementptr inbounds %struct.ivtv_buffer, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %dma_xfer_cnt to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %dma_xfer_cnt, align 2
  %b_flags = getelementptr inbounds %struct.ivtv_buffer, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %b_flags to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %b_flags, align 4
  %28 = ptrtoint ptr %readpos to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %readpos, align 4
  %29 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bytesused, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_move_tail.exit.if.end_crit_edge
  %buffers9 = getelementptr inbounds %struct.ivtv_queue, ptr %to, i32 0, i32 1
  %30 = ptrtoint ptr %buffers9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buffers9, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %buffers9, align 4
  %32 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_size, align 8
  %length11 = getelementptr inbounds %struct.ivtv_queue, ptr %to, i32 0, i32 2
  %34 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length11, align 4
  %add = add i32 %35, %33
  store i32 %add, ptr %length11, align 4
  %36 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytesused, align 4
  %38 = ptrtoint ptr %readpos to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %readpos, align 4
  %sub14 = sub i32 %37, %39
  %bytesused15 = getelementptr inbounds %struct.ivtv_queue, ptr %to, i32 0, i32 3
  %40 = ptrtoint ptr %bytesused15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytesused15, align 4
  %add16 = add i32 %sub14, %41
  store i32 %add16, ptr %bytesused15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_flush_queues(ptr noundef %s) local_unnamed_addr #0 align 64 {
while.cond.preheader.i:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_io = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 23
  %q_free = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21
  %qlock.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 6
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #9
  %length.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 23, i32 2
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i, align 4
  %length68.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp72157.not.i = icmp eq i32 %1, 0
  br i1 %cmp72157.not.i, label %while.cond.preheader.i.while.cond.preheader.i27_crit_edge, label %while.cond.preheader.i.while.body74.i_crit_edge

while.cond.preheader.i.while.body74.i_crit_edge:  ; preds = %while.cond.preheader.i
  br label %while.body74.i

while.cond.preheader.i.while.cond.preheader.i27_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i27

while.body74.i:                                   ; preds = %while.body74.i.while.body74.i_crit_edge, %while.cond.preheader.i.while.body74.i_crit_edge
  tail call fastcc void @ivtv_queue_move_buf(ptr noundef %s, ptr noundef %q_io, ptr noundef %q_free, i32 noundef 1) #9
  %4 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length68.i, align 4
  %sub71.i = sub i32 %5, %3
  %cmp72.i = icmp ult i32 %sub71.i, %1
  br i1 %cmp72.i, label %while.body74.i.while.body74.i_crit_edge, label %while.body74.i.while.cond.preheader.i27_crit_edge

while.body74.i.while.cond.preheader.i27_crit_edge: ; preds = %while.body74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i27

while.body74.i.while.body74.i_crit_edge:          ; preds = %while.body74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body74.i

while.cond.preheader.i27:                         ; preds = %while.body74.i.while.cond.preheader.i27_crit_edge, %while.cond.preheader.i.while.cond.preheader.i27_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call7.i) #9
  %q_full = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 22
  %call7.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #9
  %length.i21 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %length.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i21, align 4
  %8 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp72157.not.i29 = icmp eq i32 %7, 0
  br i1 %cmp72157.not.i29, label %while.cond.preheader.i27.while.cond.preheader.i44_crit_edge, label %while.cond.preheader.i27.while.body74.i32_crit_edge

while.cond.preheader.i27.while.body74.i32_crit_edge: ; preds = %while.cond.preheader.i27
  br label %while.body74.i32

while.cond.preheader.i27.while.cond.preheader.i44_crit_edge: ; preds = %while.cond.preheader.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i44

while.body74.i32:                                 ; preds = %while.body74.i32.while.body74.i32_crit_edge, %while.cond.preheader.i27.while.body74.i32_crit_edge
  tail call fastcc void @ivtv_queue_move_buf(ptr noundef %s, ptr noundef %q_full, ptr noundef %q_free, i32 noundef 1) #9
  %10 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length68.i, align 4
  %sub71.i30 = sub i32 %11, %9
  %cmp72.i31 = icmp ult i32 %sub71.i30, %7
  br i1 %cmp72.i31, label %while.body74.i32.while.body74.i32_crit_edge, label %while.body74.i32.while.cond.preheader.i44_crit_edge

while.body74.i32.while.cond.preheader.i44_crit_edge: ; preds = %while.body74.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i44

while.body74.i32.while.body74.i32_crit_edge:      ; preds = %while.body74.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body74.i32

while.cond.preheader.i44:                         ; preds = %while.body74.i32.while.cond.preheader.i44_crit_edge, %while.cond.preheader.i27.while.cond.preheader.i44_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call7.i20) #9
  %q_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24
  %call7.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #9
  %length.i38 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 24, i32 2
  %12 = ptrtoint ptr %length.i38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i38, align 4
  %14 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp72157.not.i46 = icmp eq i32 %13, 0
  br i1 %cmp72157.not.i46, label %while.cond.preheader.i44.while.cond.preheader.i61_crit_edge, label %while.cond.preheader.i44.while.body74.i49_crit_edge

while.cond.preheader.i44.while.body74.i49_crit_edge: ; preds = %while.cond.preheader.i44
  br label %while.body74.i49

while.cond.preheader.i44.while.cond.preheader.i61_crit_edge: ; preds = %while.cond.preheader.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i61

while.body74.i49:                                 ; preds = %while.body74.i49.while.body74.i49_crit_edge, %while.cond.preheader.i44.while.body74.i49_crit_edge
  tail call fastcc void @ivtv_queue_move_buf(ptr noundef %s, ptr noundef %q_dma, ptr noundef %q_free, i32 noundef 1) #9
  %16 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length68.i, align 4
  %sub71.i47 = sub i32 %17, %15
  %cmp72.i48 = icmp ult i32 %sub71.i47, %13
  br i1 %cmp72.i48, label %while.body74.i49.while.body74.i49_crit_edge, label %while.body74.i49.while.cond.preheader.i61_crit_edge

while.body74.i49.while.cond.preheader.i61_crit_edge: ; preds = %while.body74.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.i61

while.body74.i49.while.body74.i49_crit_edge:      ; preds = %while.body74.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body74.i49

while.cond.preheader.i61:                         ; preds = %while.body74.i49.while.cond.preheader.i61_crit_edge, %while.cond.preheader.i44.while.cond.preheader.i61_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call7.i37) #9
  %q_predma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25
  %call7.i54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #9
  %length.i55 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 25, i32 2
  %18 = ptrtoint ptr %length.i55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i55, align 4
  %20 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp72157.not.i63 = icmp eq i32 %19, 0
  br i1 %cmp72157.not.i63, label %while.cond.preheader.i61.ivtv_queue_move.exit68_crit_edge, label %while.cond.preheader.i61.while.body74.i66_crit_edge

while.cond.preheader.i61.while.body74.i66_crit_edge: ; preds = %while.cond.preheader.i61
  br label %while.body74.i66

while.cond.preheader.i61.ivtv_queue_move.exit68_crit_edge: ; preds = %while.cond.preheader.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %ivtv_queue_move.exit68

while.body74.i66:                                 ; preds = %while.body74.i66.while.body74.i66_crit_edge, %while.cond.preheader.i61.while.body74.i66_crit_edge
  tail call fastcc void @ivtv_queue_move_buf(ptr noundef %s, ptr noundef %q_predma, ptr noundef %q_free, i32 noundef 1) #9
  %22 = ptrtoint ptr %length68.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length68.i, align 4
  %sub71.i64 = sub i32 %23, %21
  %cmp72.i65 = icmp ult i32 %sub71.i64, %19
  br i1 %cmp72.i65, label %while.body74.i66.while.body74.i66_crit_edge, label %while.body74.i66.ivtv_queue_move.exit68_crit_edge

while.body74.i66.ivtv_queue_move.exit68_crit_edge: ; preds = %while.body74.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %ivtv_queue_move.exit68

while.body74.i66.while.body74.i66_crit_edge:      ; preds = %while.body74.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body74.i66

ivtv_queue_move.exit68:                           ; preds = %while.body74.i66.ivtv_queue_move.exit68_crit_edge, %while.cond.preheader.i61.ivtv_queue_move.exit68_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call7.i54) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_stream_alloc(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %itv1 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itv1, align 8
  %buffers = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 18
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffers, align 4
  %mul = mul i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup106_crit_edge, label %do.body

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.kzalloc.exit.thread261_crit_edge, label %do.end

do.body.kzalloc.exit.thread261_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.thread261

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp5.not = icmp eq i32 %6, 3
  %cond = select i1 %cmp5.not, ptr @.str.4, ptr @.str.3
  %name6 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %7 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name6, align 4
  %buf_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %9 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_size, align 8
  %mul10 = mul i32 %10, %3
  %div166 = lshr i32 %mul10, 10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef %8, i32 noundef %3, i32 noundef %10, i32 noundef %div166) #13
  br label %kzalloc.exit.thread261

kzalloc.exit.thread261:                           ; preds = %do.end, %do.body.kzalloc.exit.thread261_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11712) #14
  %sg_pending263 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %11 = ptrtoint ptr %sg_pending263 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %sg_pending263, align 8
  %cmp16264 = icmp eq ptr %call9.i.i, null
  br i1 %cmp16264, label %do.end20, label %if.end8.i.i196

do.end20:                                         ; preds = %kzalloc.exit.thread261
  call void @__sanitizer_cov_trace_pc() #11
  %name23 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name25 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %12 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name23, ptr noundef %13) #13
  br label %cleanup106

if.end8.i.i196:                                   ; preds = %kzalloc.exit.thread261
  %sg_pending_size267 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %14 = ptrtoint ptr %sg_pending_size267 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sg_pending_size267, align 8
  %call9.i.i195 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11712) #14
  %sg_processing = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 28
  %15 = ptrtoint ptr %sg_processing to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i195, ptr %sg_processing, align 4
  %cmp30 = icmp eq ptr %call9.i.i195, null
  br i1 %cmp30, label %do.end34, label %if.end43

do.end34:                                         ; preds = %if.end8.i.i196
  call void @__sanitizer_cov_trace_pc() #11
  %name37 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name39 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %16 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name39, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name37, ptr noundef %17) #13
  %18 = ptrtoint ptr %sg_pending263 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg_pending263, align 8
  tail call void @kfree(ptr noundef %19) #9
  %20 = ptrtoint ptr %sg_pending263 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sg_pending263, align 8
  br label %cleanup106

if.end43:                                         ; preds = %if.end8.i.i196
  %sg_processing_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 32
  %21 = ptrtoint ptr %sg_processing_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sg_processing_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i204 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 11712, i32 noundef 12) #15
  %sg_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 29
  %23 = ptrtoint ptr %sg_dma to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i204, ptr %sg_dma, align 8
  %cmp46 = icmp eq ptr %call7.i.i204, null
  br i1 %cmp46, label %do.end50, label %if.end61

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %name53 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name55 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %24 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name55, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name53, ptr noundef %25) #13
  %26 = ptrtoint ptr %sg_pending263 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sg_pending263, align 8
  tail call void @kfree(ptr noundef %27) #9
  %28 = ptrtoint ptr %sg_pending263 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %sg_pending263, align 8
  %29 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg_processing, align 4
  tail call void @kfree(ptr noundef %30) #9
  %31 = ptrtoint ptr %sg_processing to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %sg_processing, align 4
  br label %cleanup106

if.end61:                                         ; preds = %if.end43
  %dma.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %32 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i207.not = icmp eq i32 %33, 3
  br i1 %cmp.i207.not, label %if.end61.if.end67_crit_edge, label %if.then64

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i204) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then64
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i209, !prof !45

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i209:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i208 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i208, label %if.end.i.i210, label %if.then.i209.dev_name.exit.i_crit_edge

if.then.i209.dev_name.exit.i_crit_edge:           ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i210:                                    ; preds = %if.then.i209
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i210, %if.then.i209.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i210 ], [ %37, %if.then.i209.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef nonnull %call7.i.i204, i32 noundef 12) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %call7.i.i204 to i32
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %40, i32 %shr.i
  %and.i = and i32 %41, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 12, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %sg_handle = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 30
  %42 = ptrtoint ptr %sg_handle to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i, ptr %sg_handle, align 4
  %43 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i.i.not.i = icmp eq i32 %44, 3
  br i1 %cmp.i.i.not.i, label %dma_map_single_attrs.exit.if.end67_crit_edge, label %if.then.i211

dma_map_single_attrs.exit.if.end67_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then.i211:                                     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %itv1, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i, i32 noundef %retval.0.i, i32 noundef 12, i32 noundef 1) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then.i211, %dma_map_single_attrs.exit.if.end67_crit_edge, %if.end61.if.end67_crit_edge
  %49 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp69288.not = icmp eq i32 %50, 0
  br i1 %cmp69288.not, label %if.end67.for.end_crit_edge, label %for.body.lr.ph

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end67
  %buf_size74 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %q_free = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21
  %qlock.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 0, i32 1
  %buffers.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 1
  %length.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 2
  %bytesused9.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0289 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i218 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 11712, i32 noundef 28) #15
  %cmp71 = icmp eq ptr %call7.i.i218, null
  br i1 %cmp71, label %for.body.for.end_crit_edge, label %if.end8.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end8.i:                                        ; preds = %for.body
  %52 = ptrtoint ptr %buf_size74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buf_size74, align 8
  %add = add i32 %53, 256
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 11456) #14
  %buf76 = getelementptr inbounds %struct.ivtv_buffer, ptr %call7.i.i218, i32 0, i32 4
  %54 = ptrtoint ptr %buf76 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i, ptr %buf76, align 8
  %cmp78 = icmp eq ptr %call9.i, null
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i218) #9
  br label %for.end

if.end80:                                         ; preds = %if.end8.i
  %55 = ptrtoint ptr %call7.i.i218 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call7.i.i218, ptr %call7.i.i218, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i218, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i218, ptr %prev.i, align 4
  %57 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp.i222.not = icmp eq i32 %58, 3
  br i1 %cmp.i222.not, label %if.end80.if.end92_crit_edge, label %if.then83

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then83:                                        ; preds = %if.end80
  %59 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %itv1, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %buf_size74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buf_size74, align 8
  %call.i224 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i) #9
  br i1 %call.i224, label %land.rhs.i226, label %if.end39.i239

land.rhs.i226:                                    ; preds = %if.then83
  %.b1.i225 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i225, label %land.rhs.i226.dma_map_single_attrs.exit241_crit_edge, label %if.then.i230, !prof !45

land.rhs.i226.dma_map_single_attrs.exit241_crit_edge: ; preds = %land.rhs.i226
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit241

if.then.i230:                                     ; preds = %land.rhs.i226
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i227 = tail call ptr @dev_driver_string(ptr noundef %dev86) #9
  %init_name.i.i228 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44, i32 3
  %65 = ptrtoint ptr %init_name.i.i228 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i228, align 8
  %tobool.not.i.i229 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i229, label %if.end.i.i231, label %if.then.i230.dev_name.exit.i233_crit_edge

if.then.i230.dev_name.exit.i233_crit_edge:        ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i233

if.end.i.i231:                                    ; preds = %if.then.i230
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev86, align 4
  br label %dev_name.exit.i233

dev_name.exit.i233:                               ; preds = %if.end.i.i231, %if.then.i230.dev_name.exit.i233_crit_edge
  %retval.0.i.i232 = phi ptr [ %68, %if.end.i.i231 ], [ %66, %if.then.i230.dev_name.exit.i233_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i227, ptr noundef %retval.0.i.i232) #9
  br label %dma_map_single_attrs.exit241

if.end39.i239:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %add89 = add i32 %64, 256
  tail call void @debug_dma_map_single(ptr noundef %dev86, ptr noundef nonnull %call9.i, i32 noundef %add89) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %call9.i to i32
  %sub.i234 = add i32 %70, 1073741824
  %shr.i235 = lshr i32 %sub.i234, 12
  %add.ptr.i236 = getelementptr %struct.page, ptr %69, i32 %shr.i235
  %and.i237 = and i32 %70, 3968
  %call41.i238 = tail call i32 @dma_map_page_attrs(ptr noundef %dev86, ptr noundef %add.ptr.i236, i32 noundef %and.i237, i32 noundef %add89, i32 noundef %58, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit241

dma_map_single_attrs.exit241:                     ; preds = %if.end39.i239, %dev_name.exit.i233, %land.rhs.i226.dma_map_single_attrs.exit241_crit_edge
  %retval.0.i240 = phi i32 [ %call41.i238, %if.end39.i239 ], [ -1, %dev_name.exit.i233 ], [ -1, %land.rhs.i226.dma_map_single_attrs.exit241_crit_edge ]
  %dma_handle = getelementptr inbounds %struct.ivtv_buffer, ptr %call7.i.i218, i32 0, i32 1
  %71 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i240, ptr %dma_handle, align 8
  %72 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp.i.i.not.i243 = icmp eq i32 %73, 3
  br i1 %cmp.i.i.not.i243, label %dma_map_single_attrs.exit241.if.end92_crit_edge, label %if.then.i246

dma_map_single_attrs.exit241.if.end92_crit_edge:  ; preds = %dma_map_single_attrs.exit241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then.i246:                                     ; preds = %dma_map_single_attrs.exit241
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %itv1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %itv1, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %78 = ptrtoint ptr %buf_size74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_size74, align 8
  %add.i = add i32 %79, 256
  %dev.i.i245 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i245, i32 noundef %retval.0.i240, i32 noundef %add.i, i32 noundef %73) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then.i246, %dma_map_single_attrs.exit241.if.end92_crit_edge, %if.end80.if.end92_crit_edge
  %bytesused.i = getelementptr inbounds %struct.ivtv_buffer, ptr %call7.i.i218, i32 0, i32 5
  %80 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %bytesused.i, align 4
  %readpos.i = getelementptr inbounds %struct.ivtv_buffer, ptr %call7.i.i218, i32 0, i32 6
  %81 = ptrtoint ptr %readpos.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %readpos.i, align 8
  %b_flags.i = getelementptr inbounds %struct.ivtv_buffer, ptr %call7.i.i218, i32 0, i32 2
  %82 = ptrtoint ptr %b_flags.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %b_flags.i, align 4
  %dma_xfer_cnt.i = getelementptr inbounds %struct.ivtv_buffer, ptr %call7.i.i218, i32 0, i32 3
  %83 = ptrtoint ptr %dma_xfer_cnt.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %dma_xfer_cnt.i, align 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #9
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i218, ptr noundef %85, ptr noundef %q_free) #9
  br i1 %call.i.i.i, label %if.end.i.i.i249, label %if.end92.for.inc_crit_edge

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i249:                                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i218, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %call7.i.i218 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %q_free, ptr %call7.i.i218, align 8
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i.i218, ptr %85, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i249, %if.end92.for.inc_crit_edge
  %90 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buffers.i, align 4
  %inc.i = add i32 %91, 1
  store i32 %inc.i, ptr %buffers.i, align 4
  %92 = ptrtoint ptr %buf_size74 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %buf_size74, align 8
  %94 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length.i, align 4
  %add.i251 = add i32 %95, %93
  store i32 %add.i251, ptr %length.i, align 4
  %96 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytesused.i, align 4
  %98 = ptrtoint ptr %readpos.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %readpos.i, align 8
  %sub.i252 = sub i32 %97, %99
  %100 = ptrtoint ptr %bytesused9.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bytesused9.i, align 4
  %add10.i = add i32 %sub.i252, %101
  store i32 %add10.i, ptr %bytesused9.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call3.i) #9
  %inc = add nuw i32 %i.0289, 1
  %102 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %buffers, align 4
  %cmp69 = icmp ult i32 %inc, %103
  br i1 %cmp69, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then79, %for.body.for.end_crit_edge, %if.end67.for.end_crit_edge
  %i.0287 = phi i32 [ %i.0289, %if.then79 ], [ 0, %if.end67.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %i.0289, %for.body.for.end_crit_edge ]
  %104 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0287, i32 %105)
  %cmp94 = icmp eq i32 %i.0287, %105
  br i1 %cmp94, label %for.end.cleanup106_crit_edge, label %do.end99

for.end.cleanup106_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup106

do.end99:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %name102 = getelementptr inbounds %struct.ivtv, ptr %1, i32 0, i32 19, i32 4
  %name104 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 2
  %106 = ptrtoint ptr %name104 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name104, align 4
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name102, ptr noundef %107) #13
  tail call void @ivtv_stream_free(ptr noundef %s)
  br label %cleanup106

cleanup106:                                       ; preds = %do.end99, %for.end.cleanup106_crit_edge, %do.end50, %do.end34, %do.end20, %entry.cleanup106_crit_edge
  %retval.0 = phi i32 [ -12, %do.end20 ], [ -12, %do.end34 ], [ -12, %do.end50 ], [ -12, %do.end99 ], [ 0, %entry.cleanup106_crit_edge ], [ 0, %for.end.cleanup106_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_stream_free(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ivtv_flush_queues(ptr noundef %s)
  %q_free = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21
  %qlock.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 6
  %call2.i44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #9
  %0 = ptrtoint ptr %q_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %q_free, align 4
  %cmp.i.not.i45 = icmp eq ptr %1, %q_free
  br i1 %cmp.i.not.i45, label %entry.ivtv_dequeue.exit.thread_crit_edge, label %if.then.i.lr.ph

entry.ivtv_dequeue.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ivtv_dequeue.exit.thread

if.then.i.lr.ph:                                  ; preds = %entry
  %buffers.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 1
  %buf_size.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 19
  %length.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 2
  %bytesused11.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 21, i32 3
  %dma.i = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 8
  %itv = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  br label %if.then.i

ivtv_dequeue.exit.thread:                         ; preds = %if.end.ivtv_dequeue.exit.thread_crit_edge, %entry.ivtv_dequeue.exit.thread_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i44, %entry.ivtv_dequeue.exit.thread_crit_edge ], [ %call2.i, %if.end.ivtv_dequeue.exit.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i.lcssa) #9
  br label %while.end

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.then.i.lr.ph
  %2 = phi ptr [ %1, %if.then.i.lr.ph ], [ %36, %if.end.if.then.i_crit_edge ]
  %call2.i46 = phi i32 [ %call2.i44, %if.then.i.lr.ph ], [ %call2.i, %if.end.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.ivtv_dequeue.exit_crit_edge

if.then.i.ivtv_dequeue.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ivtv_dequeue.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %ivtv_dequeue.exit

ivtv_dequeue.exit:                                ; preds = %if.end.i.i.i, %if.then.i.ivtv_dequeue.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i.i, align 4
  %11 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffers.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %buffers.i, align 4
  %13 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_size.i, align 8
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 4
  %sub.i = sub i32 %16, %14
  store i32 %sub.i, ptr %length.i, align 4
  %bytesused.i = getelementptr inbounds %struct.ivtv_buffer, ptr %2, i32 0, i32 5
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytesused.i, align 4
  %readpos.i = getelementptr inbounds %struct.ivtv_buffer, ptr %2, i32 0, i32 6
  %19 = ptrtoint ptr %readpos.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %readpos.i, align 4
  %sub10.neg.i = sub i32 %20, %18
  %21 = ptrtoint ptr %bytesused11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytesused11.i, align 4
  %sub12.i = add i32 %sub10.neg.i, %22
  store i32 %sub12.i, ptr %bytesused11.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock.i, i32 noundef %call2.i46) #9
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %ivtv_dequeue.exit.while.end_crit_edge, label %while.body

ivtv_dequeue.exit.while.end_crit_edge:            ; preds = %ivtv_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %ivtv_dequeue.exit
  %23 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i.not = icmp eq i32 %24, 3
  br i1 %cmp.i.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %itv, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %dma_handle = getelementptr inbounds %struct.ivtv_buffer, ptr %2, i32 0, i32 1
  %29 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_handle, align 4
  %31 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_size.i, align 8
  %add = add i32 %32, 256
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %30, i32 noundef %add, i32 noundef %24, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %buf3 = getelementptr inbounds %struct.ivtv_buffer, ptr %2, i32 0, i32 4
  %33 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf3, align 4
  tail call void @kfree(ptr noundef %34) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock.i) #9
  %35 = ptrtoint ptr %q_free to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %q_free, align 4
  %cmp.i.not.i = icmp eq ptr %36, %q_free
  br i1 %cmp.i.not.i, label %if.end.ivtv_dequeue.exit.thread_crit_edge, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.ivtv_dequeue.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ivtv_dequeue.exit.thread

while.end:                                        ; preds = %ivtv_dequeue.exit.while.end_crit_edge, %ivtv_dequeue.exit.thread
  %sg_dma = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 29
  %37 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sg_dma, align 8
  %cmp.not = icmp eq ptr %38, null
  br i1 %cmp.not, label %while.end.if.end17_crit_edge, label %if.then4

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then4:                                         ; preds = %while.end
  %sg_handle = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 30
  %39 = ptrtoint ptr %sg_handle to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sg_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp5.not = icmp eq i32 %40, -1
  br i1 %cmp5.not, label %if.then4.if.end12_crit_edge, label %if.then6

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %itv7 = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 1
  %41 = ptrtoint ptr %itv7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %itv7, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev9, i32 noundef %40, i32 noundef 12, i32 noundef 1, i32 noundef 0) #9
  %45 = ptrtoint ptr %sg_handle to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %sg_handle, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.then4.if.end12_crit_edge
  %sg_pending = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 27
  %46 = ptrtoint ptr %sg_pending to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sg_pending, align 8
  tail call void @kfree(ptr noundef %47) #9
  %sg_processing = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 28
  %48 = ptrtoint ptr %sg_processing to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg_processing, align 4
  tail call void @kfree(ptr noundef %49) #9
  %50 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sg_dma, align 8
  tail call void @kfree(ptr noundef %51) #9
  %52 = ptrtoint ptr %sg_pending to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %sg_pending, align 8
  %53 = ptrtoint ptr %sg_processing to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %sg_processing, align 4
  %54 = ptrtoint ptr %sg_dma to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %sg_dma, align 8
  %sg_pending_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 31
  %55 = ptrtoint ptr %sg_pending_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %sg_pending_size, align 8
  %sg_processing_size = getelementptr inbounds %struct.ivtv_stream, ptr %s, i32 0, i32 32
  %56 = ptrtoint ptr %sg_processing_size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %sg_processing_size, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end12, %while.end.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-queue.c", i32 190, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_stream_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_stream_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ivtv/ivtv-queue.c", i32 196, i32 3}
!10 = !{ptr @ivtv_stream_alloc._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ivtv_stream_alloc._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ivtv/ivtv-queue.c", i32 203, i32 3}
!14 = !{ptr @ivtv_stream_alloc._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ivtv_stream_alloc._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ivtv/ivtv-queue.c", i32 213, i32 3}
!18 = !{ptr @ivtv_stream_alloc._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ivtv_stream_alloc._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/ivtv/ivtv-queue.c", i32 249, i32 2}
!22 = !{ptr @ivtv_stream_alloc._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ivtv_stream_alloc._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!33 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2152160615, i64 2152160640}
!47 = !{i64 4652109}
!48 = !{i64 4652306}
!49 = !{i64 2152137539}
