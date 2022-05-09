; ModuleID = '/llk/IR_all_yes/drivers/media/platform/xilinx/xilinx-dma.c_pt.bc'
source_filename = "../drivers/media/platform/xilinx/xilinx-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xvip_dma = type { %struct.list_head, %struct.video_device, %struct.media_pad, ptr, %struct.xvip_pipeline, i32, %struct.mutex, %struct.v4l2_pix_format, ptr, %struct.vb2_queue, i32, %struct.list_head, %struct.spinlock, ptr, i32, %struct.dma_interleaved_template, [1 x %struct.data_chunk] }
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
%struct.xvip_pipeline = type { %struct.media_pipeline, %struct.mutex, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.91, i32, i32 }
%union.anon.91 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.xvip_video_format = type { i32, i32, ptr, i32, i32, i32 }
%struct.xvip_composite_device = type { %struct.v4l2_device, %struct.media_device, ptr, %struct.v4l2_async_notifier, %struct.list_head, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.xvip_dma_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@xvip_dma_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dma->lock\00", [21 x i8] zeroinitializer }, align 32
@xvip_dma_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dma->pipe.lock\00", [16 x i8] zeroinitializer }, align 32
@xvip_dma_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dma->queued_lock\00", [46 x i8] zeroinitializer }, align 32
@xvip_dma_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%pOFn %s %u\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@xvip_dma_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @xvip_dma_querycap, ptr @xvip_dma_enum_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xvip_dma_get_format, ptr null, ptr @xvip_dma_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xvip_dma_set_format, ptr null, ptr @xvip_dma_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xvip_dma_try_format, ptr null, ptr @xvip_dma_try_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@xvip_dma_queue_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @xvip_dma_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @xvip_dma_buffer_prepare, ptr null, ptr null, ptr @xvip_dma_start_streaming, ptr @xvip_dma_stop_streaming, ptr @xvip_dma_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@xvip_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 719, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize VB2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xvip_dma_init\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/xilinx/xilinx-dma.c\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xvip_dma_init._entry_ptr = internal global ptr @xvip_dma_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%u\00", [25 x i8] zeroinitializer }, align 32
@xvip_dma_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 729, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no VDMA channel found\0A\00", [41 x i8] zeroinitializer }, align 32
@xvip_dma_init._entry_ptr.16 = internal global ptr @xvip_dma_init._entry.14, section ".printk_index", align 4
@xvip_dma_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.10, i32 737, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@xvip_dma_init._entry_ptr.19 = internal global ptr @xvip_dma_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xilinx-vipp\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"platform:%pOFn:%u\00", [46 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@xvip_dma_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.10, i32 372, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to prepare DMA transfer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xvip_dma_buffer_queue\00", [42 x i8] zeroinitializer }, align 32
@xvip_dma_buffer_queue._entry_ptr = internal global ptr @xvip_dma_buffer_queue._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 655, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 656, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 658, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"xvip_dma_fops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 634, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 681, i32 53 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 683, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 683, i32 53 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"xvip_dma_ioctl_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 611, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"xvip_dma_queue_qops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 473, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 719, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 724, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 729, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 737, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 496, i32 23 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 498, i32 49 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private constant [46 x i8] c"../drivers/media/platform/xilinx/xilinx-dma.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 372, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1163, i32 7 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @xvip_dma_buffer_queue._entry, ptr @xvip_dma_buffer_queue._entry_ptr, ptr @xvip_dma_init._entry, ptr @xvip_dma_init._entry.14, ptr @xvip_dma_init._entry.17, ptr @xvip_dma_init._entry_ptr, ptr @xvip_dma_init._entry_ptr.16, ptr @xvip_dma_init._entry_ptr.19, ptr @xvip_dma_init.__key, ptr @.str, ptr @xvip_dma_init.__key.1, ptr @.str.2, ptr @xvip_dma_init.__key.3, ptr @.str.4, ptr @xvip_dma_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xvip_dma_ioctl_ops, ptr @xvip_dma_queue_qops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_queue_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xvip_dma_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xvip_dma_init(ptr noundef %xdev, ptr noundef %dma, i32 noundef %type, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %xdev1 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 3
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = ptrtoint ptr %xdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %xdev, ptr %xdev1, align 8
  %port2 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 5
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %port, ptr %port2, align 8
  %lock = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @xvip_dma_init.__key) #9
  %lock4 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 4, i32 1
  tail call void @__mutex_init(ptr noundef %lock4, ptr noundef nonnull @.str.2, ptr noundef nonnull @xvip_dma_init.__key.1) #9
  %queued_bufs = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 11
  %3 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queued_bufs, ptr %queued_bufs, align 4
  %prev.i = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queued_bufs, ptr %prev.i, align 4
  %queued_lock = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %queued_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @xvip_dma_init.__key.3, i16 noundef signext 3) #9
  %call10 = tail call ptr @xvip_get_format_by_fourcc(i32 noundef 1448695129) #9
  %fmtinfo = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 8
  %5 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %fmtinfo, align 8
  %fourcc = getelementptr inbounds %struct.xvip_video_format, ptr %call10, i32 0, i32 5
  %6 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc, align 4
  %format = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 7
  %pixelformat = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat, align 8
  %colorspace = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 7, i32 6
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %colorspace, align 8
  %field = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field, align 4
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1920, ptr %format, align 8
  %height = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1080, ptr %height, align 4
  %bpp = getelementptr inbounds %struct.xvip_video_format, ptr %call10, i32 0, i32 4
  %13 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bpp, align 4
  %mul = mul i32 %14, 1920
  %bytesperline = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %bytesperline, align 8
  %mul24 = mul i32 %14, 2073600
  %sizeimage = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul24, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %pad = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 2
  %flags = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %flags, align 4
  %video = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1
  %call27 = tail call i32 @media_entity_pads_init(ptr noundef %video, i16 noundef zeroext 1, ptr noundef %pad) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %fops = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xvip_dma_fops, ptr %fops, align 4
  %v4l2_dev31 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %v4l2_dev31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %xdev, ptr %v4l2_dev31, align 4
  %queue = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9
  %queue33 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %queue33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %queue, ptr %queue33, align 8
  %name35 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 12
  %dev = getelementptr inbounds %struct.xvip_composite_device, ptr %xdev, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %cond37 = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %call38 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name35, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %24, ptr noundef nonnull %cond37, i32 noundef %port)
  %vfl_type = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 13
  %25 = ptrtoint ptr %vfl_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %vfl_type, align 8
  %not.cmp = xor i1 %cmp, true
  %cond41 = zext i1 %not.cmp to i32
  %vfl_dir = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 14
  %26 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond41, ptr %vfl_dir, align 4
  %release = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 23
  %27 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @video_device_release_empty, ptr %release, align 8
  %ioctl_ops = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 24
  %28 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @xvip_dma_ioctl_ops, ptr %ioctl_ops, align 4
  %lock47 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 26
  %29 = ptrtoint ptr %lock47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %lock, ptr %lock47, align 8
  %device_caps = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 4
  %. = select i1 %cmp, i32 67108865, i32 67108866
  %30 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %., ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 5, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dma, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %type, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 19, ptr %io_modes, align 4
  %lock63 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 5
  %34 = ptrtoint ptr %lock63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lock, ptr %lock63, align 4
  %drv_priv = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 10
  %35 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dma, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 12
  %36 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 752, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 7
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xvip_dma_queue_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 8
  %38 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 13
  %39 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8192, ptr %timestamp_flags, align 4
  %40 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xdev1, align 8
  %dev70 = getelementptr inbounds %struct.xvip_composite_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev70, align 8
  %dev72 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %dev72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %dev72, align 4
  %call74 = tail call i32 @vb2_queue_init(ptr noundef %queue) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end79, label %if.end82

do.end79:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xdev1, align 8
  %dev81 = getelementptr inbounds %struct.xvip_composite_device, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev81, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.8) #12
  br label %error

if.end82:                                         ; preds = %if.end
  %call84 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %port)
  %49 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xdev1, align 8
  %dev86 = getelementptr inbounds %struct.xvip_composite_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev86, align 8
  %call88 = call ptr @dma_request_chan(ptr noundef %52, ptr noundef nonnull %name) #9
  %dma89 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 13
  %53 = ptrtoint ptr %dma89 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call88, ptr %dma89, align 4
  %cmp.i = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then92, label %if.end103

if.then92:                                        ; preds = %if.end82
  %cmp95.not = icmp eq ptr %call88, inttoptr (i32 -517 to ptr)
  br i1 %cmp95.not, label %if.then92.error_crit_edge, label %do.end99

if.then92.error_crit_edge:                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

do.end99:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %call88 to i32
  %55 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xdev1, align 8
  %dev101 = getelementptr inbounds %struct.xvip_composite_device, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev101, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.15) #12
  br label %error

if.end103:                                        ; preds = %if.end82
  %59 = ptrtoint ptr %call88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call88, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %copy_align to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %copy_align, align 4
  %shl = shl nuw i32 1, %62
  %align = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 14
  %63 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shl, ptr %align, align 8
  %64 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fops, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %call.i = call i32 @__video_register_device(ptr noundef %video, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp107 = icmp slt i32 %call.i, 0
  br i1 %cmp107, label %do.end111, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end111:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %xdev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xdev1, align 8
  %dev113 = getelementptr inbounds %struct.xvip_composite_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev113, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.18) #12
  br label %error

error:                                            ; preds = %do.end111, %do.end99, %if.then92.error_crit_edge, %do.end79, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call27, %entry.error_crit_edge ], [ %call74, %do.end79 ], [ %54, %do.end99 ], [ -517, %if.then92.error_crit_edge ], [ %call.i, %do.end111 ]
  %flags.i.i = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 17
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %error.if.end.i_crit_edge, label %if.then.i

error.if.end.i_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  call void @video_unregister_device(ptr noundef %video) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %error.if.end.i_crit_edge
  %dma2.i = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 13
  %74 = ptrtoint ptr %dma2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma2.i, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  %cmp.i.i = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.i.xvip_dma_cleanup.exit_crit_edge, label %if.then4.i

if.end.i.xvip_dma_cleanup.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_cleanup.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %75) #9
  br label %xvip_dma_cleanup.exit

xvip_dma_cleanup.exit:                            ; preds = %if.then4.i, %if.end.i.xvip_dma_cleanup.exit_crit_edge
  call void @mutex_destroy(ptr noundef %lock) #9
  call void @mutex_destroy(ptr noundef %lock4) #9
  br label %cleanup

cleanup:                                          ; preds = %xvip_dma_cleanup.exit, %if.end103.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %xvip_dma_cleanup.exit ], [ 0, %if.end103.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xvip_get_format_by_fourcc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xvip_dma_cleanup(ptr noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %video = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %video) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma2 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 13
  %2 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma2, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %3) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %lock = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock) #9
  %lock8 = getelementptr inbounds %struct.xvip_dma, ptr %dma, i32 0, i32 4, i32 1
  tail call void @mutex_destroy(ptr noundef %lock8) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_dma_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %xdev = getelementptr i8, ptr %3, i32 1384
  %4 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdev, align 8
  %v4l2_caps = getelementptr inbounds %struct.xvip_composite_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %v4l2_caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v4l2_caps, align 4
  %or1 = or i32 %7, -2080374784
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or1, ptr %capabilities, align 4
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.20, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 12
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %9 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdev, align 8
  %dev = getelementptr inbounds %struct.xvip_composite_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %port = getelementptr i8, ptr %3, i32 1640
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 8
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %14, i32 noundef %16)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xvip_dma_enum_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %pixelformat = getelementptr i8, ptr %5, i32 1744
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 8
  %pixelformat1 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xvip_dma_get_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %format) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %format1 = getelementptr i8, ptr %3, i32 1736
  %4 = call ptr @memcpy(ptr %fmt, ptr %format1, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_dma_set_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  %call.i = tail call ptr @xvip_get_format_by_fourcc(i32 noundef %5) #9
  %fourcc.i = getelementptr inbounds %struct.xvip_video_format, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc.i, align 4
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  %align2.i = getelementptr i8, ptr %3, i32 2360
  %10 = ptrtoint ptr %align2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align2.i, align 8
  %bpp.i = getelementptr inbounds %struct.xvip_video_format, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpp.i, align 4
  %call3.i = tail call i32 @lcm(i32 noundef %11, i32 noundef %13) #13
  %rem.i = urem i32 65535, %call3.i
  %sub5.i = xor i32 %rem.i, 65535
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt, align 4
  %mul9.i = mul i32 %15, %13
  %rem11.i = urem i32 %mul9.i, %call3.i
  %sub12.i = sub i32 %mul9.i, %rem11.i
  %16 = tail call i32 @llvm.umax.i32(i32 %sub12.i, i32 %call3.i) #9
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub5.i) #9
  %div21.i = udiv i32 %17, %13
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div21.i, ptr %fmt, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 1) #9
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 8191) #9
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height.i, align 4
  %24 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bpp.i, align 4
  %mul38.i = mul i32 %25, %div21.i
  %26 = ptrtoint ptr %align2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %align2.i, align 8
  %rem42.i = urem i32 65535, %27
  %sub43.i = xor i32 %rem42.i, 65535
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytesperline.i, align 4
  %rem47.i = urem i32 %29, %27
  %sub48.i = sub i32 %29, %rem47.i
  %30 = tail call i32 @llvm.umax.i32(i32 %sub48.i, i32 %mul38.i) #9
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %sub43.i) #9
  %32 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bytesperline.i, align 4
  %mul64.i = mul nuw nsw i32 %31, %22
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul64.i, ptr %sizeimage.i, align 4
  %num_buffers.i = getelementptr i8, ptr %3, i32 2112
  %34 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.not = icmp eq i32 %35, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %format1 = getelementptr i8, ptr %3, i32 1736
  %36 = call ptr @memcpy(ptr %format1, ptr %fmt, i32 48)
  %fmtinfo = getelementptr i8, ptr %3, i32 1784
  %37 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %fmtinfo, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_dma_try_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  %call.i = tail call ptr @xvip_get_format_by_fourcc(i32 noundef %5) #9
  %fourcc.i = getelementptr inbounds %struct.xvip_video_format, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc.i, align 4
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field.i, align 4
  %align2.i = getelementptr i8, ptr %3, i32 2360
  %10 = ptrtoint ptr %align2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align2.i, align 8
  %bpp.i = getelementptr inbounds %struct.xvip_video_format, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpp.i, align 4
  %call3.i = tail call i32 @lcm(i32 noundef %11, i32 noundef %13) #13
  %rem.i = urem i32 65535, %call3.i
  %sub5.i = xor i32 %rem.i, 65535
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt, align 4
  %mul9.i = mul i32 %15, %13
  %rem11.i = urem i32 %mul9.i, %call3.i
  %sub12.i = sub i32 %mul9.i, %rem11.i
  %16 = tail call i32 @llvm.umax.i32(i32 %sub12.i, i32 %call3.i) #9
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub5.i) #9
  %div21.i = udiv i32 %17, %13
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div21.i, ptr %fmt, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height.i, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 1) #9
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 8191) #9
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height.i, align 4
  %24 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bpp.i, align 4
  %mul38.i = mul i32 %25, %div21.i
  %26 = ptrtoint ptr %align2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %align2.i, align 8
  %rem42.i = urem i32 65535, %27
  %sub43.i = xor i32 %rem42.i, 65535
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytesperline.i, align 4
  %rem47.i = urem i32 %29, %27
  %sub48.i = sub i32 %29, %rem47.i
  %30 = tail call i32 @llvm.umax.i32(i32 %sub48.i, i32 %mul38.i) #9
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %sub43.i) #9
  %32 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bytesperline.i, align 4
  %mul64.i = mul nuw nsw i32 %31, %22
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul64.i, ptr %sizeimage.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xvip_dma_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %sizeimage2 = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %sizeimage2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage2, align 4
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xvip_dma_buffer_prepare(ptr nocapture noundef %vb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %dma4 = getelementptr inbounds %struct.xvip_dma_buffer, ptr %vb, i32 0, i32 2
  %4 = ptrtoint ptr %dma4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dma4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xvip_dma_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  %graph.i.i = alloca %struct.media_graph, align 4
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  %video = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 1
  %pipe1 = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 1, i32 0, i32 14
  %3 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pipe1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pipe5 = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %pipe5, %cond.false ]
  %call9 = tail call i32 @media_pipeline_start(ptr noundef %video, ptr noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %cond.end.error_crit_edge, label %if.end

cond.end.error_crit_edge:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #9
  %7 = getelementptr inbounds i8, ptr %fmt.i, i32 4
  %8 = getelementptr inbounds i8, ptr %fmt.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 80)
  %pad.i = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 2
  %call.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad.i) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.xvip_dma_verify_format.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.end.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.xvip_dma_verify_format.exit.thread_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i

lor.lhs.false.i.i.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

is_media_entity_v4l2_subdev.exit.i.i:             ; preds = %lor.lhs.false.i.i
  %obj_type.i.i.i = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %obj_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %obj_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.i.i = icmp eq i32 %13, 2
  br i1 %cmp.i.i.i, label %if.end.i, label %is_media_entity_v4l2_subdev.exit.i.i.xvip_dma_verify_format.exit.thread_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

if.end.i:                                         ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  %index.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i.i, ptr %7, align 4
  %17 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %fmt.i, align 4
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %pad3.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %pad3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pad3.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %if.end.i.if.then26.thread.i_crit_edge, label %land.lhs.true.i

if.end.i.if.then26.thread.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.thread.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_fmt.i, align 4
  %tobool7.not.i = icmp eq ptr %23, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.then26.thread.i_crit_edge, label %if.else9.i

land.lhs.true.i.if.then26.thread.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.thread.i

if.else9.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not.i = icmp eq ptr %24, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else17.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else17.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %get_fmt12.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %get_fmt12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_fmt12.i, align 4
  %tobool13.not.i = icmp eq ptr %26, null
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.else17.i_crit_edge, label %land.lhs.true11.i.if.end24.i_crit_edge

land.lhs.true11.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

land.lhs.true11.i.if.else17.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true11.i.if.else17.i_crit_edge, %if.else9.i.if.else17.i_crit_edge
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else17.i, %land.lhs.true11.i.if.end24.i_crit_edge
  %.sink.i = phi ptr [ %23, %if.else17.i ], [ %26, %land.lhs.true11.i.if.end24.i_crit_edge ]
  %call21.i = call i32 %.sink.i(ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %fmt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp25.i = icmp slt i32 %call21.i, 0
  br i1 %cmp25.i, label %if.then26.i, label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call21.i)
  %cmp27.i = icmp eq i32 %call21.i, -515
  br i1 %cmp27.i, label %if.then26.i.if.then26.thread.i_crit_edge, label %if.then26.i.xvip_dma_verify_format.exit.thread_crit_edge

if.then26.i.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

if.then26.i.if.then26.thread.i_crit_edge:         ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.thread.i

if.then26.thread.i:                               ; preds = %if.then26.i.if.then26.thread.i_crit_edge, %land.lhs.true.i.if.then26.thread.i_crit_edge, %if.end.i.if.then26.thread.i_crit_edge
  br label %xvip_dma_verify_format.exit.thread

if.end28.i:                                       ; preds = %if.end24.i
  %fmtinfo.i = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %fmtinfo.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fmtinfo.i, align 8
  %code.i = getelementptr inbounds %struct.xvip_video_format, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %code.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2
  %code29.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %code29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp30.not.i = icmp eq i32 %30, %32
  br i1 %cmp30.not.i, label %lor.lhs.false.i, label %if.end28.i.xvip_dma_verify_format.exit.thread_crit_edge

if.end28.i.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end28.i
  %height.i = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height.i, align 4
  %height33.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %height33.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp34.not.i = icmp eq i32 %34, %36
  br i1 %cmp34.not.i, label %lor.lhs.false35.i, label %lor.lhs.false.i.xvip_dma_verify_format.exit.thread_crit_edge

lor.lhs.false.i.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

lor.lhs.false35.i:                                ; preds = %lor.lhs.false.i
  %format31.i = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %format31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format31.i, align 8
  %39 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp39.not.i = icmp eq i32 %38, %40
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %lor.lhs.false35.i.xvip_dma_verify_format.exit.thread_crit_edge

lor.lhs.false35.i.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

lor.lhs.false40.i:                                ; preds = %lor.lhs.false35.i
  %colorspace.i = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 7, i32 6
  %41 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colorspace.i, align 8
  %colorspace43.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %colorspace43.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %colorspace43.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp44.not.i = icmp eq i32 %42, %44
  br i1 %cmp44.not.i, label %if.end13, label %lor.lhs.false40.i.xvip_dma_verify_format.exit.thread_crit_edge

lor.lhs.false40.i.xvip_dma_verify_format.exit.thread_crit_edge: ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_dma_verify_format.exit.thread

xvip_dma_verify_format.exit.thread:               ; preds = %lor.lhs.false40.i.xvip_dma_verify_format.exit.thread_crit_edge, %lor.lhs.false35.i.xvip_dma_verify_format.exit.thread_crit_edge, %lor.lhs.false.i.xvip_dma_verify_format.exit.thread_crit_edge, %if.end28.i.xvip_dma_verify_format.exit.thread_crit_edge, %if.then26.thread.i, %if.then26.i.xvip_dma_verify_format.exit.thread_crit_edge, %is_media_entity_v4l2_subdev.exit.i.i.xvip_dma_verify_format.exit.thread_crit_edge, %lor.lhs.false.i.i.xvip_dma_verify_format.exit.thread_crit_edge, %if.end.xvip_dma_verify_format.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -32, %lor.lhs.false.i.i.xvip_dma_verify_format.exit.thread_crit_edge ], [ -32, %if.end.xvip_dma_verify_format.exit.thread_crit_edge ], [ -32, %is_media_entity_v4l2_subdev.exit.i.i.xvip_dma_verify_format.exit.thread_crit_edge ], [ %call21.i, %if.then26.i.xvip_dma_verify_format.exit.thread_crit_edge ], [ -22, %if.then26.thread.i ], [ -22, %lor.lhs.false40.i.xvip_dma_verify_format.exit.thread_crit_edge ], [ -22, %if.end28.i.xvip_dma_verify_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.xvip_dma_verify_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false35.i.xvip_dma_verify_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #9
  br label %error_stop

if.end13:                                         ; preds = %lor.lhs.false40.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #9
  %lock.i = getelementptr inbounds %struct.xvip_pipeline, ptr %cond, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %use_count.i = getelementptr inbounds %struct.xvip_pipeline, ptr %cond, i32 0, i32 2
  %45 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i63 = icmp eq i32 %46, 0
  br i1 %cmp.i63, label %if.then.i, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then.i:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %graph.i.i) #9
  %47 = call ptr @memset(ptr %graph.i.i, i32 255, i32 140)
  %48 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %video, align 4
  %graph_mutex.i.i = getelementptr inbounds %struct.media_device, ptr %49, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %graph_mutex.i.i, i32 noundef 0) #9
  %call.i.i64 = call i32 @media_graph_walk_init(ptr noundef nonnull %graph.i.i, ptr noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %call.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i66, label %xvip_pipeline_validate.exit.i

if.end.i.i66:                                     ; preds = %if.then.i
  call void @media_graph_walk_start(ptr noundef nonnull %graph.i.i, ptr noundef %video) #9
  %call439.i.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i.i) #9
  %tobool5.not40.i.i = icmp eq ptr %call439.i.i, null
  br i1 %tobool5.not40.i.i, label %if.end.i.i66.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i66.while.end.i.i_crit_edge:             ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i66
  %output.i.i = getelementptr inbounds %struct.xvip_pipeline, ptr %cond, i32 0, i32 5
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %call443.i.i = phi ptr [ %call439.i.i, %while.body.lr.ph.i.i ], [ %call4.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %num_inputs.042.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %num_inputs.2.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %num_outputs.041.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %num_outputs.2.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %function.i.i = getelementptr inbounds %struct.media_entity, ptr %call443.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %function.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %function.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %51)
  %cmp.not.i.i = icmp eq i32 %51, 65537
  br i1 %cmp.not.i.i, label %if.end7.i.i, label %while.body.i.i.cleanup.i.i_crit_edge

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end7.i.i:                                      ; preds = %while.body.i.i
  %flags.i.i = getelementptr i8, ptr %call443.i.i, i32 1380
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr10.i.i = getelementptr i8, ptr %call443.i.i, i32 -8
  %54 = ptrtoint ptr %output.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr10.i.i, ptr %output.i.i, align 4
  %inc.i.i = add i32 %num_outputs.041.i.i, 1
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc13.i.i = add i32 %num_inputs.042.i.i, 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else.i.i, %if.then12.i.i, %while.body.i.i.cleanup.i.i_crit_edge
  %num_outputs.2.i.i = phi i32 [ %num_outputs.041.i.i, %while.body.i.i.cleanup.i.i_crit_edge ], [ %inc.i.i, %if.then12.i.i ], [ %num_outputs.041.i.i, %if.else.i.i ]
  %num_inputs.2.i.i = phi i32 [ %num_inputs.042.i.i, %while.body.i.i.cleanup.i.i_crit_edge ], [ %num_inputs.042.i.i, %if.then12.i.i ], [ %inc13.i.i, %if.else.i.i ]
  %call4.i.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i.i) #9
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %cleanup.i.i.while.end.i.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %if.end.i.i66.while.end.i.i_crit_edge
  %num_outputs.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i66.while.end.i.i_crit_edge ], [ %num_outputs.2.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %num_inputs.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i66.while.end.i.i_crit_edge ], [ %num_inputs.2.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %graph_mutex.i.i) #9
  call void @media_graph_walk_cleanup(ptr noundef nonnull %graph.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_outputs.0.lcssa.i.i)
  %cmp16.not.i.i = icmp ne i32 %num_outputs.0.lcssa.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_inputs.0.lcssa.i.i)
  %cmp17.i.i = icmp ugt i32 %num_inputs.0.lcssa.i.i, 1
  %or.cond.i.i = select i1 %cmp16.not.i.i, i1 true, i1 %cmp17.i.i
  br i1 %or.cond.i.i, label %xvip_pipeline_validate.exit.thread.i, label %xvip_pipeline_validate.exit.thread17.i

xvip_pipeline_validate.exit.thread.i:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i.i) #9
  br label %xvip_pipeline_prepare.exit.thread

xvip_pipeline_validate.exit.thread17.i:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i = add nuw nsw i32 %num_inputs.0.lcssa.i.i, 1
  %num_dmas.i.i = getelementptr inbounds %struct.xvip_pipeline, ptr %cond, i32 0, i32 4
  %55 = ptrtoint ptr %num_dmas.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i.i, ptr %num_dmas.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i.i) #9
  br label %if.end17

xvip_pipeline_validate.exit.i:                    ; preds = %if.then.i
  call void @mutex_unlock(ptr noundef %graph_mutex.i.i) #9
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %cmp1.i = icmp slt i32 %call.i.i64, 0
  br i1 %cmp1.i, label %xvip_pipeline_validate.exit.i.xvip_pipeline_prepare.exit.thread_crit_edge, label %xvip_pipeline_validate.exit.i.if.end17_crit_edge

xvip_pipeline_validate.exit.i.if.end17_crit_edge: ; preds = %xvip_pipeline_validate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

xvip_pipeline_validate.exit.i.xvip_pipeline_prepare.exit.thread_crit_edge: ; preds = %xvip_pipeline_validate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_pipeline_prepare.exit.thread

xvip_pipeline_prepare.exit.thread:                ; preds = %xvip_pipeline_validate.exit.i.xvip_pipeline_prepare.exit.thread_crit_edge, %xvip_pipeline_validate.exit.thread.i
  %retval.0.i16.i = phi i32 [ -32, %xvip_pipeline_validate.exit.thread.i ], [ %call.i.i64, %xvip_pipeline_validate.exit.i.xvip_pipeline_prepare.exit.thread_crit_edge ]
  %num_dmas.i12.i = getelementptr inbounds %struct.xvip_pipeline, ptr %cond, i32 0, i32 4
  %56 = ptrtoint ptr %num_dmas.i12.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %num_dmas.i12.i, align 4
  %output.i13.i = getelementptr inbounds %struct.xvip_pipeline, ptr %cond, i32 0, i32 5
  %57 = ptrtoint ptr %output.i13.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %output.i13.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %error_stop

if.end17:                                         ; preds = %xvip_pipeline_validate.exit.i.if.end17_crit_edge, %xvip_pipeline_validate.exit.thread17.i, %if.end13.if.end17_crit_edge
  %58 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %use_count.i, align 4
  %inc.i = add i32 %59, 1
  store i32 %inc.i, ptr %use_count.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %dma18 = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 13
  %60 = ptrtoint ptr %dma18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma18, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %63, i32 0, i32 50
  %64 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device_issue_pending.i, align 4
  call void %65(ptr noundef %61) #9
  call fastcc void @xvip_pipeline_set_stream(ptr noundef %cond, i1 noundef zeroext true)
  br label %cleanup

error_stop:                                       ; preds = %xvip_pipeline_prepare.exit.thread, %xvip_dma_verify_format.exit.thread
  %ret.0 = phi i32 [ %retval.0.i.ph, %xvip_dma_verify_format.exit.thread ], [ %retval.0.i16.i, %xvip_pipeline_prepare.exit.thread ]
  call void @media_pipeline_stop(ptr noundef %video) #9
  br label %error

error:                                            ; preds = %error_stop, %cond.end.error_crit_edge
  %ret.1 = phi i32 [ %call9, %cond.end.error_crit_edge ], [ %ret.0, %error_stop ]
  %queued_lock = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %queued_lock) #9
  %queued_bufs = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 11
  %66 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queued_bufs, align 8
  %cmp28.not73 = icmp eq ptr %67, %queued_bufs
  br i1 %cmp28.not73, label %error.for.end_crit_edge, label %error.for.body_crit_edge

error.for.body_crit_edge:                         ; preds = %error
  br label %for.body

error.for.end_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %error.for.body_crit_edge
  %.pn.in74 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %67, %error.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in74, i32 -736
  %68 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn = load ptr, ptr %.pn.in74, align 8
  call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #9
  %call.i.i67 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in74) #9
  br i1 %call.i.i67, label %if.end.i.i68, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i68:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in74, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i, align 4
  %71 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %.pn.in74, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev1.i.i.i, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %72, ptr %70, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i68, %for.body.list_del.exit_crit_edge
  %75 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in74, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in74, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp28.not = icmp eq ptr %.pn, %queued_bufs
  br i1 %cmp28.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %error.for.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %queued_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end17
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xvip_dma_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %video = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 1
  %pipe.i = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 1, i32 0, i32 14
  %2 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe.i, align 4
  tail call fastcc void @xvip_pipeline_set_stream(ptr noundef %3, i1 noundef zeroext false)
  %dma3 = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

entry.dmaengine_terminate_all.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %9(ptr noundef %5) #9
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %entry.dmaengine_terminate_all.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.xvip_pipeline, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %use_count.i = getelementptr inbounds %struct.xvip_pipeline, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use_count.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i33, label %dmaengine_terminate_all.exit.xvip_pipeline_cleanup.exit_crit_edge

dmaengine_terminate_all.exit.xvip_pipeline_cleanup.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xvip_pipeline_cleanup.exit

if.then.i33:                                      ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  %num_dmas.i.i = getelementptr inbounds %struct.xvip_pipeline, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %num_dmas.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_dmas.i.i, align 4
  %output.i.i = getelementptr inbounds %struct.xvip_pipeline, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %output.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %output.i.i, align 4
  br label %xvip_pipeline_cleanup.exit

xvip_pipeline_cleanup.exit:                       ; preds = %if.then.i33, %dmaengine_terminate_all.exit.xvip_pipeline_cleanup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  tail call void @media_pipeline_stop(ptr noundef %video) #9
  %queued_lock = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %queued_lock) #9
  %queued_bufs = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queued_bufs, align 8
  %cmp.not34 = icmp eq ptr %15, %queued_bufs
  br i1 %cmp.not34, label %xvip_pipeline_cleanup.exit.for.end_crit_edge, label %xvip_pipeline_cleanup.exit.for.body_crit_edge

xvip_pipeline_cleanup.exit.for.body_crit_edge:    ; preds = %xvip_pipeline_cleanup.exit
  br label %for.body

xvip_pipeline_cleanup.exit.for.end_crit_edge:     ; preds = %xvip_pipeline_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %xvip_pipeline_cleanup.exit.for.body_crit_edge
  %.pn.in35 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %15, %xvip_pipeline_cleanup.exit.for.body_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn.in35, i32 -736
  %16 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in35, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn, %queued_bufs
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %xvip_pipeline_cleanup.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %queued_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xvip_dma_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  %queue = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dst_start = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %xt8 = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %xt8.sink = phi ptr [ %xt8, %if.else ], [ %dst_start, %if.then ]
  %.sink80 = phi i32 [ 1, %if.else ], [ 2, %if.then ]
  %.sink79 = phi i8 [ 1, %if.else ], [ 0, %if.then ]
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then ]
  %8 = ptrtoint ptr %xt8.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %xt8.sink, align 4
  %9 = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink80, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink79, ptr %11, align 2
  %13 = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %13, align 1
  %xt15 = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15
  %frame_size = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15, i32 8
  %15 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %frame_size, align 4
  %format = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 8
  %fmtinfo = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmtinfo, align 8
  %bpp = getelementptr inbounds %struct.xvip_video_format, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpp, align 4
  %mul = mul i32 %21, %17
  %sgl = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 16
  %22 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %sgl, align 4
  %bytesperline = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytesperline, align 8
  %sub = sub i32 %24, %mul
  %icg = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 16, i32 0, i32 1
  %25 = ptrtoint ptr %icg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %icg, align 4
  %height = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %numf = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 15, i32 7
  %28 = ptrtoint ptr %numf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %numf, align 4
  %dma24 = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 13
  %29 = ptrtoint ptr %dma24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma24, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %lor.lhs.false.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool1.not.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_interleaved_dma.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 41
  %33 = ptrtoint ptr %device_prep_interleaved_dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_prep_interleaved_dma.i, align 4
  %tobool4.not.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_interleaved_dma.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dmaengine_prep_interleaved_dma.exit:              ; preds = %lor.lhs.false2.i
  %call12.i = tail call ptr %34(ptr noundef nonnull %30, ptr noundef %xt15, i32 noundef 3) #9
  %tobool.not = icmp eq ptr %call12.i, null
  br i1 %tobool.not, label %dmaengine_prep_interleaved_dma.exit.do.end_crit_edge, label %if.end29

dmaengine_prep_interleaved_dma.exit.do.end_crit_edge: ; preds = %dmaengine_prep_interleaved_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_interleaved_dma.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %xdev = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %xdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xdev, align 8
  %dev = getelementptr inbounds %struct.xvip_composite_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.22) #12
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #9
  br label %cleanup

if.end29:                                         ; preds = %dmaengine_prep_interleaved_dma.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call12.i, i32 0, i32 6
  %39 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xvip_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call12.i, i32 0, i32 8
  %40 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %vb, ptr %callback_param, align 4
  %queued_lock = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %queued_lock) #9
  %queue30 = getelementptr inbounds %struct.xvip_dma_buffer, ptr %vb, i32 0, i32 1
  %queued_bufs = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 11, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue30, ptr noundef %42, ptr noundef %queued_bufs) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_add_tail.exit_crit_edge

if.end29.list_add_tail.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %queue30, ptr %prev.i, align 4
  %44 = ptrtoint ptr %queue30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %queued_bufs, ptr %queue30, align 4
  %prev3.i.i = getelementptr inbounds %struct.xvip_dma_buffer, ptr %vb, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %queue30, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end29.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %queued_lock) #9
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call12.i, i32 0, i32 4
  %47 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_submit.i, align 4
  %call.i76 = tail call i32 %48(ptr noundef nonnull %call12.i) #9
  %streaming.i = getelementptr inbounds %struct.xvip_dma, ptr %3, i32 0, i32 9, i32 28
  %49 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then35, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dma24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma24, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 50
  %54 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %55(ptr noundef %51) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %list_add_tail.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xvip_pipeline_set_stream(ptr noundef %pipe, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.xvip_pipeline, ptr %pipe, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %stream_count = getelementptr inbounds %struct.xvip_pipeline, ptr %pipe, i32 0, i32 3
  %0 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream_count, align 4
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_dmas = getelementptr inbounds %struct.xvip_pipeline, ptr %pipe, i32 0, i32 4
  %2 = ptrtoint ptr %num_dmas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_dmas, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp = icmp eq i32 %1, %sub
  br i1 %cmp, label %if.then1, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then1:                                         ; preds = %if.then
  %output.i = getelementptr inbounds %struct.xvip_pipeline, ptr %pipe, i32 0, i32 5
  %4 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %output.i, align 4
  %video.i = getelementptr inbounds %struct.xvip_dma, ptr %5, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end36.i.while.cond.i_crit_edge, %if.then1
  %entity.0.i = phi ptr [ %video.i, %if.then1 ], [ %11, %if.end36.i.while.cond.i_crit_edge ]
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %entity.0.i, i32 0, i32 9
  %6 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end4_crit_edge, label %if.end.i

while.cond.i.if.end4_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.i:                                         ; preds = %while.cond.i
  %call.i = tail call ptr @media_entity_remote_pad(ptr noundef %7) #9
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end4_crit_edge, label %lor.lhs.false.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

lor.lhs.false.i:                                  ; preds = %if.end.i
  %entity3.i = getelementptr inbounds %struct.media_pad, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %entity3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entity3.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.end4_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.end4_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 2
  br i1 %cmp.i.i, label %if.else.i, label %is_media_entity_v4l2_subdev.exit.i.if.end4_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.end4_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.else.i:                                        ; preds = %is_media_entity_v4l2_subdev.exit.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %video12.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video12.i, align 4
  %tobool13.not.i = icmp eq ptr %17, null
  br i1 %tobool13.not.i, label %if.else.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end36.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_stream.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream.i, align 4
  %tobool16.not.i = icmp eq ptr %19, null
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.else18.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.else18.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool19.not.i = icmp eq ptr %20, null
  br i1 %tobool19.not.i, label %if.else18.i.if.else27.i_crit_edge, label %land.lhs.true20.i

if.else18.i.if.else27.i_crit_edge:                ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else27.i

land.lhs.true20.i:                                ; preds = %if.else18.i
  %s_stream21.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_stream21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_stream21.i, align 4
  %tobool22.not.i = icmp eq ptr %22, null
  br i1 %tobool22.not.i, label %land.lhs.true20.i.if.else27.i_crit_edge, label %land.lhs.true20.i.if.end36.sink.split.i_crit_edge

land.lhs.true20.i.if.end36.sink.split.i_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.sink.split.i

land.lhs.true20.i.if.else27.i_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else27.i

if.else27.i:                                      ; preds = %land.lhs.true20.i.if.else27.i_crit_edge, %if.else18.i.if.else27.i_crit_edge
  br label %if.end36.sink.split.i

if.end36.sink.split.i:                            ; preds = %if.else27.i, %land.lhs.true20.i.if.end36.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %19, %if.else27.i ], [ %22, %land.lhs.true20.i.if.end36.sink.split.i_crit_edge ]
  %call33.i = tail call i32 %.sink.i(ptr noundef nonnull %11, i32 noundef 1) #9
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.else.i.if.end36.i_crit_edge
  %__result.0.i = phi i32 [ -515, %land.lhs.true.i.if.end36.i_crit_edge ], [ -515, %if.else.i.if.end36.i_crit_edge ], [ %call33.i, %if.end36.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.i)
  %cmp.i = icmp sgt i32 %__result.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0.i)
  %cmp43.not.i = icmp eq i32 %__result.0.i, -515
  %or.cond69.i = or i1 %cmp.i, %cmp43.not.i
  br i1 %or.cond69.i, label %if.end36.i.while.cond.i_crit_edge, label %if.end36.i.done_crit_edge

if.end36.i.done_crit_edge:                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end36.i.while.cond.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end4:                                          ; preds = %is_media_entity_v4l2_subdev.exit.i.if.end4_crit_edge, %lor.lhs.false.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %while.cond.i.if.end4_crit_edge, %if.then.if.end4_crit_edge
  %23 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stream_count, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %stream_count, align 4
  br label %done

if.else:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %25 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then8, label %if.else.done_crit_edge

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then8:                                         ; preds = %if.else
  %output.i1 = getelementptr inbounds %struct.xvip_pipeline, ptr %pipe, i32 0, i32 5
  %26 = ptrtoint ptr %output.i1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %output.i1, align 4
  %pads.i443 = getelementptr inbounds %struct.xvip_dma, ptr %27, i32 0, i32 1, i32 0, i32 9
  %28 = ptrtoint ptr %pads.i443 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pads.i443, align 4
  %flags.i544 = getelementptr inbounds %struct.media_pad, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %flags.i544 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i544, align 4
  %and.i645 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i645)
  %tobool.not.i746 = icmp eq i32 %and.i645, 0
  br i1 %tobool.not.i746, label %if.then8.done_crit_edge, label %if.then8.if.end.i11_crit_edge

if.then8.if.end.i11_crit_edge:                    ; preds = %if.then8
  br label %if.end.i11

if.then8.done_crit_edge:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i11:                                       ; preds = %if.end36.i37.if.end.i11_crit_edge, %if.then8.if.end.i11_crit_edge
  %32 = phi ptr [ %47, %if.end36.i37.if.end.i11_crit_edge ], [ %29, %if.then8.if.end.i11_crit_edge ]
  %call.i9 = tail call ptr @media_entity_remote_pad(ptr noundef %32) #9
  %tobool2.not.i10 = icmp eq ptr %call.i9, null
  br i1 %tobool2.not.i10, label %if.end.i11.done_crit_edge, label %lor.lhs.false.i14

if.end.i11.done_crit_edge:                        ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

lor.lhs.false.i14:                                ; preds = %if.end.i11
  %entity3.i12 = getelementptr inbounds %struct.media_pad, ptr %call.i9, i32 0, i32 1
  %33 = ptrtoint ptr %entity3.i12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entity3.i12, align 4
  %tobool.not.i.i13 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i13, label %lor.lhs.false.i14.done_crit_edge, label %is_media_entity_v4l2_subdev.exit.i17

lor.lhs.false.i14.done_crit_edge:                 ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

is_media_entity_v4l2_subdev.exit.i17:             ; preds = %lor.lhs.false.i14
  %obj_type.i.i15 = getelementptr inbounds %struct.media_entity, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %obj_type.i.i15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %obj_type.i.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i.i16 = icmp eq i32 %36, 2
  br i1 %cmp.i.i16, label %if.else.i21, label %is_media_entity_v4l2_subdev.exit.i17.done_crit_edge

is_media_entity_v4l2_subdev.exit.i17.done_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.else.i21:                                      ; preds = %is_media_entity_v4l2_subdev.exit.i17
  %ops.i18 = getelementptr inbounds %struct.v4l2_subdev, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %ops.i18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i18, align 4
  %video12.i19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %video12.i19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video12.i19, align 4
  %tobool13.not.i20 = icmp eq ptr %40, null
  br i1 %tobool13.not.i20, label %if.else.i21.if.end36.i37_crit_edge, label %land.lhs.true.i24

if.else.i21.if.end36.i37_crit_edge:               ; preds = %if.else.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i37

land.lhs.true.i24:                                ; preds = %if.else.i21
  %s_stream.i22 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %s_stream.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_stream.i22, align 4
  %tobool16.not.i23 = icmp eq ptr %42, null
  br i1 %tobool16.not.i23, label %land.lhs.true.i24.if.end36.i37_crit_edge, label %if.else18.i26

land.lhs.true.i24.if.end36.i37_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i37

if.else18.i26:                                    ; preds = %land.lhs.true.i24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool19.not.i25 = icmp eq ptr %43, null
  br i1 %tobool19.not.i25, label %if.else18.i26.if.else27.i30_crit_edge, label %land.lhs.true20.i29

if.else18.i26.if.else27.i30_crit_edge:            ; preds = %if.else18.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else27.i30

land.lhs.true20.i29:                              ; preds = %if.else18.i26
  %s_stream21.i27 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %s_stream21.i27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_stream21.i27, align 4
  %tobool22.not.i28 = icmp eq ptr %45, null
  br i1 %tobool22.not.i28, label %land.lhs.true20.i29.if.else27.i30_crit_edge, label %land.lhs.true20.i29.if.end36.sink.split.i33_crit_edge

land.lhs.true20.i29.if.end36.sink.split.i33_crit_edge: ; preds = %land.lhs.true20.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.sink.split.i33

land.lhs.true20.i29.if.else27.i30_crit_edge:      ; preds = %land.lhs.true20.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else27.i30

if.else27.i30:                                    ; preds = %land.lhs.true20.i29.if.else27.i30_crit_edge, %if.else18.i26.if.else27.i30_crit_edge
  br label %if.end36.sink.split.i33

if.end36.sink.split.i33:                          ; preds = %if.else27.i30, %land.lhs.true20.i29.if.end36.sink.split.i33_crit_edge
  %.sink.i31 = phi ptr [ %42, %if.else27.i30 ], [ %45, %land.lhs.true20.i29.if.end36.sink.split.i33_crit_edge ]
  %call33.i32 = tail call i32 %.sink.i31(ptr noundef nonnull %34, i32 noundef 0) #9
  br label %if.end36.i37

if.end36.i37:                                     ; preds = %if.end36.sink.split.i33, %land.lhs.true.i24.if.end36.i37_crit_edge, %if.else.i21.if.end36.i37_crit_edge
  %pads.i4 = getelementptr inbounds %struct.media_entity, ptr %34, i32 0, i32 9
  %46 = ptrtoint ptr %pads.i4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pads.i4, align 4
  %flags.i5 = getelementptr inbounds %struct.media_pad, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i5, align 4
  %and.i6 = and i32 %49, 1
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %if.end36.i37.done_crit_edge, label %if.end36.i37.if.end.i11_crit_edge

if.end36.i37.if.end.i11_crit_edge:                ; preds = %if.end36.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

if.end36.i37.done_crit_edge:                      ; preds = %if.end36.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

done:                                             ; preds = %if.end36.i37.done_crit_edge, %is_media_entity_v4l2_subdev.exit.i17.done_crit_edge, %lor.lhs.false.i14.done_crit_edge, %if.end.i11.done_crit_edge, %if.then8.done_crit_edge, %if.else.done_crit_edge, %if.end4, %if.end36.i.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xvip_dma_complete(ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.xvip_dma_buffer, ptr %param, i32 0, i32 2
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 8
  %queued_lock = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %queued_lock) #9
  %queue = getelementptr inbounds %struct.xvip_dma_buffer, ptr %param, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.xvip_dma_buffer, ptr %param, i32 0, i32 1, i32 1
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
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.xvip_dma_buffer, ptr %param, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %queued_lock) #9
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %param, i32 0, i32 2
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field, align 4
  %sequence = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sequence, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence5 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %param, i32 0, i32 4
  %13 = ptrtoint ptr %sequence5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sequence5, align 8
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %param, i32 0, i32 5
  %14 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i, ptr %timestamp, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %param, i32 0, i32 4
  %15 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %list_del.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

list_del.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %list_del.exit
  %sizeimage = getelementptr inbounds %struct.xvip_dma, ptr %1, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %param, i32 0, i32 10, i32 0, i32 4
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp1.i = icmp ult i32 %20, %18
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !60

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %22, %if.then38.i ], [ %18, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %param, i32 0, i32 10, i32 0, i32 3
  %23 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %list_del.exit.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %param, i32 noundef 5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @xvip_dma_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 655, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @xvip_dma_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 656, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xvip_dma_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 658, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 681, i32 53}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 683, i32 42}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 683, i32 53}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 719, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @xvip_dma_init._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @xvip_dma_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 724, i32 31}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 729, i32 4}
!27 = !{ptr @xvip_dma_init._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @xvip_dma_init._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 737, i32 3}
!31 = !{ptr @xvip_dma_init._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @xvip_dma_init._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @xvip_dma_fops, !34, !"xvip_dma_fops", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 634, i32 42}
!35 = !{ptr @xvip_dma_ioctl_ops, !36, !"xvip_dma_ioctl_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 611, i32 36}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 496, i32 23}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 498, i32 49}
!41 = !{ptr @xvip_dma_queue_qops, !42, !"xvip_dma_queue_qops", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 473, i32 29}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/xilinx/xilinx-dma.c", i32 372, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xvip_dma_buffer_queue._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @xvip_dma_buffer_queue._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 2000, i32 1}
