; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_video.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.115, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.anon.115 = type { %struct.spinlock, %struct.anon.116, i32, i32, i8 }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.vsp1_video = type { %struct.list_head, ptr, ptr, %struct.video_device, i32, %struct.media_pad, %struct.mutex, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
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
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.vsp1_brx = type { %struct.vsp1_entity, i32, %struct.v4l2_ctrl_handler, [5 x %struct.anon.114], i32 }
%struct.anon.114 = type { ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.vsp1_vb2_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.vsp1_rwpf_memory }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_uds = type { %struct.vsp1_entity, i8 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/vsp1/vsp1_video.c\00", [55 x i8] zeroinitializer }, align 32
@vsp1_video_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 1206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pipeline %u stop timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vsp1_video_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_video_suspend._entry_ptr = internal global ptr @vsp1_video_suspend._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@vsp1_video_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&video->lock\00", [19 x i8] zeroinitializer }, align 32
@vsp1_video_create.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&video->irqlock\00", [16 x i8] zeroinitializer }, align 32
@vsp1_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @vsp1_video_open, ptr @vsp1_video_release }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@vsp1_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vsp1_video_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_video_get_format, ptr @vsp1_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_video_set_format, ptr @vsp1_video_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_video_try_format, ptr @vsp1_video_try_format, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vsp1_video_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@vsp1_video_queue_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vsp1_video_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vsp1_video_buffer_prepare, ptr null, ptr null, ptr @vsp1_video_start_streaming, ptr @vsp1_video_stop_streaming, ptr @vsp1_video_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vsp1_video_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 1313, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize vb2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vsp1_video_create\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vsp1_video_create._entry_ptr = internal global ptr @vsp1_video_create._entry, section ".printk_index", align 4
@vsp1_video_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str, i32 1321, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@vsp1_video_create._entry_ptr.16 = internal global ptr @vsp1_video_create._entry.14, section ".printk_index", align 4
@vsp1_video_pipeline_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 415, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to obtain a dl list. Frame will be incomplete\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vsp1_video_pipeline_run\00", [40 x i8] zeroinitializer }, align 32
@vsp1_video_pipeline_run._entry_ptr = internal global ptr @vsp1_video_pipeline_run._entry, section ".printk_index", align 4
@__vsp1_video_try_format.xrgb_formats = internal unnamed_addr constant [4 x [2 x i32]] [[2 x i32] [i32 875836498, i32 842093144], [2 x i32] [i32 1329743698, i32 892424792], [2 x i32] [i32 877807426, i32 875713112], [2 x i32] [i32 876758866, i32 875714626]], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsp1\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vsp1_video_pipeline_frame_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/media/media-entity.h\00", [35 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@vsp1_video_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 924, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pipeline stop timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vsp1_video_stop_streaming\00", [38 x i8] zeroinitializer }, align 32
@vsp1_video_stop_streaming._entry_ptr = internal global ptr @vsp1_video_stop_streaming._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 875836498, i64 876758866, i64 877807426, i64 1329743698]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 861295432, i64 878072648]
@__sancov_gen_cov_switch_values.26 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 4, i64 7, i64 9, i64 13]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1202, i32 9 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1205, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1261, i32 15 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1268, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1276, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1277, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"vsp1_video_fops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1150, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1294, i32 57 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"vsp1_video_ioctl_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1081, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"vsp1_video_queue_qops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 935, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1313, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1321, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 415, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 960, i32 23 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 962, i32 49 }
@___asan_gen_.109 = private unnamed_addr constant [32 x i8] c"../include/media/media-entity.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 519, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [44 x i8] c"../drivers/media/platform/vsp1/vsp1_video.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 924, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @vsp1_video_create._entry, ptr @vsp1_video_create._entry.14, ptr @vsp1_video_create._entry_ptr, ptr @vsp1_video_create._entry_ptr.16, ptr @vsp1_video_pipeline_run._entry, ptr @vsp1_video_pipeline_run._entry_ptr, ptr @vsp1_video_stop_streaming._entry, ptr @vsp1_video_stop_streaming._entry_ptr, ptr @vsp1_video_suspend._entry, ptr @vsp1_video_suspend._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vsp1_video_create.__key, ptr @.str.7, ptr @vsp1_video_create.__key.8, ptr @.str.9, ptr @vsp1_video_fops, ptr @.str.10, ptr @vsp1_video_ioctl_ops, ptr @vsp1_video_queue_qops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_create.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_queue_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_pipeline_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_video_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_video_suspend(ptr nocapture noundef readonly %vsp1) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %wpf_count142 = getelementptr inbounds %struct.vsp1_device_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %wpf_count142 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wpf_count142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp143.not = icmp eq i32 %3, 0
  br i1 %cmp143.not, label %entry.for.cond19.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond19.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %cleanup.for.cond19.preheader_crit_edge, %entry.for.cond19.preheader_crit_edge
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %wpf_count21149 = getelementptr inbounds %struct.vsp1_device_info, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %wpf_count21149 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wpf_count21149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22150.not = icmp eq i32 %7, 0
  br i1 %cmp22150.not, label %for.cond19.preheader.for.end104_crit_edge, label %for.cond19.preheader.for.body24_crit_edge

for.cond19.preheader.for.body24_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body24

for.cond19.preheader.for.end104_crit_edge:        ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end104

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0144 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsp1_device, ptr %vsp1, i32 0, i32 19, i32 %i.0144
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %pipe3 = getelementptr inbounds %struct.vsp1_entity, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pipe3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe3, align 4
  %cmp4 = icmp eq ptr %11, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %do.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body7:                                         ; preds = %if.end
  %irqlock = getelementptr inbounds %struct.vsp1_pipeline, ptr %11, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %state = getelementptr inbounds %struct.vsp1_pipeline, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %if.then14, label %do.body7.if.end16_crit_edge

do.body7.if.end16_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.body7.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0144, 1
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %wpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %wpf_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wpf_count, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.cond19.preheader_crit_edge

cleanup.for.cond19.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond19.preheader

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body24:                                       ; preds = %cleanup98.for.body24_crit_edge, %for.cond19.preheader.for.body24_crit_edge
  %i.1151 = phi i32 [ %inc103, %cleanup98.for.body24_crit_edge ], [ 0, %for.cond19.preheader.for.body24_crit_edge ]
  %arrayidx27 = getelementptr %struct.vsp1_device, ptr %vsp1, i32 0, i32 19, i32 %i.1151
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx27, align 4
  %cmp29 = icmp eq ptr %20, null
  br i1 %cmp29, label %for.body24.cleanup98_crit_edge, label %if.end32

for.body24.cleanup98_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

if.end32:                                         ; preds = %for.body24
  %pipe34 = getelementptr inbounds %struct.vsp1_entity, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %pipe34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe34, align 4
  %cmp35 = icmp eq ptr %22, null
  br i1 %cmp35, label %if.end32.cleanup98_crit_edge, label %if.end38

if.end32.cleanup98_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

if.end38:                                         ; preds = %if.end32
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1203) #10
  %call46 = call zeroext i1 @vsp1_pipeline_stopped(ptr noundef nonnull %22) #10
  br i1 %call46, label %if.end38.cleanup98_crit_edge, label %if.then56

if.end38.cleanup98_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

if.then56:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wq = getelementptr inbounds %struct.vsp1_pipeline, ptr %22, i32 0, i32 3
  %call60145 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call62146 = call zeroext i1 @vsp1_pipeline_stopped(ptr noundef nonnull %22) #10
  br i1 %call62146, label %if.end88.thread, label %if.then56.cleanup82_crit_edge

if.then56.cleanup82_crit_edge:                    ; preds = %if.then56
  br label %cleanup82

if.end88.thread:                                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup98

cleanup82:                                        ; preds = %cleanup82.cleanup82_crit_edge, %if.then56.cleanup82_crit_edge
  %__ret57.1147 = phi i32 [ %__ret57.1, %cleanup82.cleanup82_crit_edge ], [ 50, %if.then56.cleanup82_crit_edge ]
  %call81 = call i32 @schedule_timeout(i32 noundef %__ret57.1147) #10
  %call60 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call62 = call zeroext i1 @vsp1_pipeline_stopped(ptr noundef nonnull %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool67.not = icmp eq i32 %call81, 0
  %24 = select i1 %call62, i1 %tobool67.not, i1 false
  %__ret57.1 = select i1 %24, i32 1, i32 %call81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret57.1)
  %tobool74.not = icmp eq i32 %__ret57.1, 0
  %25 = select i1 %call62, i1 true, i1 %tobool74.not
  br i1 %25, label %if.end88, label %cleanup82.cleanup82_crit_edge

cleanup82.cleanup82_crit_edge:                    ; preds = %cleanup82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

if.end88:                                         ; preds = %cleanup82
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret57.1)
  %cmp90 = icmp eq i32 %__ret57.1, 0
  br i1 %cmp90, label %do.end95, label %if.end88.cleanup98_crit_edge

if.end88.cleanup98_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup98

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vsp1, align 8
  %index = getelementptr inbounds %struct.vsp1_entity, ptr %20, i32 0, i32 3
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.1, i32 noundef %29) #13
  br label %cleanup98

cleanup98:                                        ; preds = %do.end95, %if.end88.cleanup98_crit_edge, %if.end88.thread, %if.end38.cleanup98_crit_edge, %if.end32.cleanup98_crit_edge, %for.body24.cleanup98_crit_edge
  %inc103 = add nuw i32 %i.1151, 1
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 4
  %wpf_count21 = getelementptr inbounds %struct.vsp1_device_info, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %wpf_count21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wpf_count21, align 4
  %cmp22 = icmp ult i32 %inc103, %33
  br i1 %cmp22, label %cleanup98.for.body24_crit_edge, label %cleanup98.for.end104_crit_edge

cleanup98.for.end104_crit_edge:                   ; preds = %cleanup98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end104

cleanup98.for.body24_crit_edge:                   ; preds = %cleanup98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24

for.end104:                                       ; preds = %cleanup98.for.end104_crit_edge, %for.cond19.preheader.for.end104_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vsp1_pipeline_stopped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_video_resume(ptr nocapture noundef readonly %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %wpf_count27 = getelementptr inbounds %struct.vsp1_device_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %wpf_count27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wpf_count27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsp1_device, ptr %vsp1, i32 0, i32 19, i32 %i.029
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %pipe3 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pipe3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe3, align 4
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %configured = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %configured, align 4
  %irqlock = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %call12 = tail call zeroext i1 @vsp1_pipeline_ready(ptr noundef nonnull %7) #10
  br i1 %call12, label %if.then13, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vsp1_video_pipeline_run(ptr noundef nonnull %7)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end6.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.029, 1
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %wpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %wpf_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wpf_count, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vsp1_pipeline_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsp1_video_pipeline_run(ptr noundef %pipe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dlm = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %dlm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlm, align 4
  %call = tail call ptr @vsp1_dl_list_get(ptr noundef %5) #10
  %configured = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 21
  %6 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %configured, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stream_config = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 20
  %8 = ptrtoint ptr %stream_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream_config, align 4
  %call4 = tail call i32 @vsp1_dl_list_add_body(ptr noundef %call, ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call ptr @vsp1_dl_list_get_body0(ptr noundef %call) #10
  %entities = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 19
  %10 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn62 = load ptr, ptr %entities, align 4
  %cmp.not63 = icmp eq ptr %.pn62, %entities
  br i1 %cmp.not63, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn64 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn62, %if.end.for.body_crit_edge ]
  %entity2.0 = getelementptr i8, ptr %.pn64, i32 -32
  tail call void @vsp1_entity_configure_frame(ptr noundef %entity2.0, ptr noundef %pipe, ptr noundef %call, ptr noundef %call5) #10
  %11 = ptrtoint ptr %.pn64 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn64, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i = tail call ptr @vsp1_dl_list_get_body0(ptr noundef %call) #10
  %part_table.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 25
  %12 = ptrtoint ptr %part_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part_table.i, align 4
  %partition1.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 24
  %14 = ptrtoint ptr %partition1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %partition1.i, align 4
  %15 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn15.i = load ptr, ptr %entities, align 4
  %cmp.not16.i = icmp eq ptr %.pn15.i, %entities
  br i1 %cmp.not16.i, label %for.end.vsp1_video_pipeline_run_partition.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.vsp1_video_pipeline_run_partition.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_run_partition.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn15.i, %for.end.for.body.i_crit_edge ]
  %entity.0.i = getelementptr i8, ptr %.pn17.i, i32 -32
  tail call void @vsp1_entity_configure_partition(ptr noundef %entity.0.i, ptr noundef %pipe, ptr noundef %call, ptr noundef %call.i) #10
  %16 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entities
  br i1 %cmp.not.i, label %for.body.i.vsp1_video_pipeline_run_partition.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.vsp1_video_pipeline_run_partition.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_run_partition.exit

vsp1_video_pipeline_run_partition.exit:           ; preds = %for.body.i.vsp1_video_pipeline_run_partition.exit_crit_edge, %for.end.vsp1_video_pipeline_run_partition.exit_crit_edge
  %partitions = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 23
  %17 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp1365 = icmp ugt i32 %18, 1
  br i1 %cmp1365, label %vsp1_video_pipeline_run_partition.exit.for.body14_crit_edge, label %vsp1_video_pipeline_run_partition.exit.for.end23_crit_edge

vsp1_video_pipeline_run_partition.exit.for.end23_crit_edge: ; preds = %vsp1_video_pipeline_run_partition.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

vsp1_video_pipeline_run_partition.exit.for.body14_crit_edge: ; preds = %vsp1_video_pipeline_run_partition.exit
  br label %for.body14

for.body14:                                       ; preds = %for.inc22.for.body14_crit_edge, %vsp1_video_pipeline_run_partition.exit.for.body14_crit_edge
  %partition.066 = phi i32 [ %inc, %for.inc22.for.body14_crit_edge ], [ 1, %vsp1_video_pipeline_run_partition.exit.for.body14_crit_edge ]
  %19 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %output, align 4
  %dlm16 = getelementptr inbounds %struct.vsp1_rwpf, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %dlm16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dlm16, align 4
  %call17 = tail call ptr @vsp1_dl_list_get(ptr noundef %22) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %for.body14
  %call.i48 = tail call ptr @vsp1_dl_list_get_body0(ptr noundef nonnull %call17) #10
  %23 = ptrtoint ptr %part_table.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part_table.i, align 4
  %arrayidx.i = getelementptr %struct.vsp1_partition, ptr %24, i32 %partition.066
  %25 = ptrtoint ptr %partition1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i, ptr %partition1.i, align 4
  %26 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn15.i52 = load ptr, ptr %entities, align 4
  %cmp.not16.i53 = icmp eq ptr %.pn15.i52, %entities
  br i1 %cmp.not16.i53, label %if.end20.for.inc22_crit_edge, label %if.end20.for.body.i58_crit_edge

if.end20.for.body.i58_crit_edge:                  ; preds = %if.end20
  br label %for.body.i58

if.end20.for.inc22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22

for.body.i58:                                     ; preds = %for.body.i58.for.body.i58_crit_edge, %if.end20.for.body.i58_crit_edge
  %.pn17.i54 = phi ptr [ %.pn.i56, %for.body.i58.for.body.i58_crit_edge ], [ %.pn15.i52, %if.end20.for.body.i58_crit_edge ]
  %entity.0.i55 = getelementptr i8, ptr %.pn17.i54, i32 -32
  tail call void @vsp1_entity_configure_partition(ptr noundef %entity.0.i55, ptr noundef %pipe, ptr noundef nonnull %call17, ptr noundef %call.i48) #10
  %27 = ptrtoint ptr %.pn17.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i56 = load ptr, ptr %.pn17.i54, align 4
  %cmp.not.i57 = icmp eq ptr %.pn.i56, %entities
  br i1 %cmp.not.i57, label %for.body.i58.for.inc22_crit_edge, label %for.body.i58.for.body.i58_crit_edge

for.body.i58.for.body.i58_crit_edge:              ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i58

for.body.i58.for.inc22_crit_edge:                 ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc22

cleanup:                                          ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.17) #13
  br label %for.end23

for.inc22:                                        ; preds = %for.body.i58.for.inc22_crit_edge, %if.end20.for.inc22_crit_edge
  %call21 = tail call i32 @vsp1_dl_list_add_chain(ptr noundef %call, ptr noundef nonnull %call17) #10
  %inc = add nuw i32 %partition.066, 1
  %30 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %partitions, align 4
  %cmp13 = icmp ult i32 %inc, %31
  br i1 %cmp13, label %for.inc22.for.body14_crit_edge, label %for.inc22.for.end23_crit_edge

for.inc22.for.end23_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.inc22.for.body14_crit_edge:                   ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.end23:                                        ; preds = %for.inc22.for.end23_crit_edge, %cleanup, %vsp1_video_pipeline_run_partition.exit.for.end23_crit_edge
  tail call void @vsp1_dl_list_commit(ptr noundef %call, i32 noundef 0) #10
  %32 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %configured, align 4
  tail call void @vsp1_pipeline_run(ptr noundef %pipe) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_video_create(ptr noundef %vsp1, ptr noundef %rwpf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 2064, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %video2 = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 2
  %2 = ptrtoint ptr %video2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %video2, align 4
  %vsp13 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %vsp13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vsp1, ptr %vsp13, align 8
  %rwpf4 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %rwpf4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rwpf, ptr %rwpf4, align 4
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %rwpf, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp = icmp eq i32 %6, 9
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.else

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.else, %if.end.do.body_crit_edge
  %.sink149 = phi i32 [ 9, %if.else ], [ 10, %if.end.do.body_crit_edge ]
  %.sink148 = phi i32 [ 1, %if.else ], [ 2, %if.end.do.body_crit_edge ]
  %.sink147 = phi i32 [ 0, %if.else ], [ 1, %if.end.do.body_crit_edge ]
  %.sink = phi i32 [ 67112960, %if.else ], [ 67117056, %if.end.do.body_crit_edge ]
  %direction.0 = phi ptr [ @.str.6, %if.else ], [ @.str.5, %if.end.do.body_crit_edge ]
  %7 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink149, ptr %7, align 8
  %9 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink148, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink147, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %13, align 8
  %lock = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @vsp1_video_create.__key) #10
  %irqlock = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.9, ptr noundef nonnull @vsp1_video_create.__key.8, i16 noundef signext 3) #10
  %irqqueue = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %irqqueue to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %irqqueue, ptr %irqqueue, align 4
  %prev.i = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %irqqueue, ptr %prev.i, align 4
  %video21 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3
  %pad23 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 5
  %call24 = tail call i32 @media_entity_pads_init(ptr noundef %video21, i16 noundef zeroext 1, ptr noundef %pad23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = inttoptr i32 %call24 to ptr
  br label %cleanup

if.end28:                                         ; preds = %do.body
  %format = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 5
  %pixelformat = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1448695129, ptr %pixelformat, align 4
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %format, align 4
  %height = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 768, ptr %height, align 4
  %fmtinfo = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 6
  tail call fastcc void @__vsp1_video_try_format(ptr noundef nonnull %call.i, ptr noundef %format, ptr noundef %fmtinfo)
  %21 = ptrtoint ptr %vsp13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vsp13, align 8
  %v4l2_dev = getelementptr inbounds %struct.vsp1_device, ptr %22, i32 0, i32 22
  %v4l2_dev35 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %v4l2_dev35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %v4l2_dev, ptr %v4l2_dev35, align 4
  %fops = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vsp1_video_fops, ptr %fops, align 4
  %name = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 12
  %name39 = getelementptr inbounds %struct.vsp1_entity, ptr %rwpf, i32 0, i32 13, i32 9
  %call41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %name39, ptr noundef nonnull %direction.0)
  %vfl_type = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 13
  %25 = ptrtoint ptr %vfl_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %vfl_type, align 8
  %release = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 23
  %26 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @video_device_release_empty, ptr %release, align 8
  %ioctl_ops = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 24
  %27 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vsp1_video_ioctl_ops, ptr %ioctl_ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 5, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %7, align 8
  %queue = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %io_modes, align 4
  %lock51 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 5
  %33 = ptrtoint ptr %lock51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %lock, ptr %lock51, align 4
  %drv_priv = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 10
  %34 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 12
  %35 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 760, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 7
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @vsp1_video_queue_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 8
  %37 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 13
  %38 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16384, ptr %timestamp_flags, align 4
  %39 = ptrtoint ptr %vsp13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vsp13, align 8
  %bus_master = getelementptr inbounds %struct.vsp1_device, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus_master, align 4
  %dev59 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 8, i32 2
  %43 = ptrtoint ptr %dev59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %dev59, align 4
  %call61 = tail call i32 @vb2_queue_init(ptr noundef %queue) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end28.error_crit_edge, label %if.end69

if.end28.error_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end69:                                         ; preds = %if.end28
  %queue72 = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 10
  %44 = ptrtoint ptr %queue72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %queue, ptr %queue72, align 8
  %45 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fops, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.i146 = tail call i32 @__video_register_device(ptr noundef %video21, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp75 = icmp slt i32 %call.i146, 0
  br i1 %cmp75, label %if.end69.error_crit_edge, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end69.error_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

error:                                            ; preds = %if.end69.error_crit_edge, %if.end28.error_crit_edge
  %.str.15.sink = phi ptr [ @.str.11, %if.end28.error_crit_edge ], [ @.str.15, %if.end69.error_crit_edge ]
  %ret.0 = phi i32 [ %call61, %if.end28.error_crit_edge ], [ %call.i146, %if.end69.error_crit_edge ]
  %49 = ptrtoint ptr %vsp13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vsp13, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.15.sink) #13
  %flags.i.i = getelementptr inbounds %struct.vsp1_video, ptr %call.i, i32 0, i32 3, i32 17
  %53 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %error.vsp1_video_cleanup.exit_crit_edge, label %if.then.i

error.vsp1_video_cleanup.exit_crit_edge:          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_cleanup.exit

if.then.i:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @video_unregister_device(ptr noundef %video21) #10
  br label %vsp1_video_cleanup.exit

vsp1_video_cleanup.exit:                          ; preds = %if.then.i, %error.vsp1_video_cleanup.exit_crit_edge
  %55 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %vsp1_video_cleanup.exit, %if.end69.cleanup_crit_edge, %if.then26, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.then26 ], [ %55, %vsp1_video_cleanup.exit ], [ %call.i, %if.end69.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vsp1_video_try_format(ptr nocapture noundef readonly %video, ptr nocapture noundef %pix, ptr noundef writeonly %fmtinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pix, align 1
  %height2 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 1
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %height2, align 1
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pixelformat, align 1
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.for.end_crit_edge [
    i32 875836498, label %entry.if.then_crit_edge
    i32 1329743698, label %if.then.fold.split
    i32 877807426, label %if.then.fold.split11
    i32 876758866, label %if.then.fold.split12
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split, %entry.if.then_crit_edge
  %i.05.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split11 ], [ 3, %if.then.fold.split12 ]
  %arrayidx6 = getelementptr [4 x [2 x i32]], ptr @__vsp1_video_try_format.xrgb_formats, i32 0, i32 %i.05.lcssa, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6, align 4
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %pixelformat, align 1
  br label %for.end

for.end:                                          ; preds = %if.then, %entry.for.end_crit_edge
  %vsp1 = getelementptr inbounds %struct.vsp1_video, ptr %video, i32 0, i32 1
  %10 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vsp1, align 8
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %pixelformat, align 1
  %call = tail call ptr @vsp1_get_format_info(ptr noundef %11, i32 noundef %13) #10
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %if.then10, label %for.end.if.end13_crit_edge

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsp1, align 8
  %call12 = tail call ptr @vsp1_get_format_info(ptr noundef %15, i32 noundef 1448695129) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.end.if.end13_crit_edge
  %info.0 = phi ptr [ %call12, %if.then10 ], [ %call, %for.end.if.end13_crit_edge ]
  %16 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info.0, align 4
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %pixelformat, align 1
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 4
  %19 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 8, ptr %colorspace, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 3
  %20 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 1, ptr %field, align 1
  %21 = load i32, ptr %info.0, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %21, label %if.end13.if.end20_crit_edge [
    i32 861295432, label %if.end13.if.then19_crit_edge
    i32 878072648, label %if.end13.if.then19_crit_edge13
  ]

if.end13.if.then19_crit_edge13:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end13.if.then19_crit_edge, %if.end13.if.then19_crit_edge13
  %23 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -127, ptr %23, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end13.if.end20_crit_edge
  %reserved = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 11
  %25 = call ptr @memset(ptr %reserved, i32 0, i32 7)
  %hsub = getelementptr inbounds %struct.vsp1_format_info, ptr %info.0, i32 0, i32 8
  %26 = ptrtoint ptr %hsub to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hsub, align 4
  %neg = sub i32 0, %27
  %and = and i32 %1, %neg
  %vsub = getelementptr inbounds %struct.vsp1_format_info, ptr %info.0, i32 0, i32 9
  %28 = ptrtoint ptr %vsub to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vsub, align 4
  %neg22 = sub i32 0, %29
  %and23 = and i32 %3, %neg22
  %30 = tail call i32 @llvm.umax.i32(i32 %and, i32 %27)
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 8190)
  %32 = ptrtoint ptr %pix to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %pix, align 1
  %33 = ptrtoint ptr %vsub to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vsub, align 4
  %35 = tail call i32 @llvm.umax.i32(i32 %and23, i32 %34)
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 8190)
  %37 = ptrtoint ptr %height2 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %height2, align 1
  %planes = getelementptr inbounds %struct.vsp1_format_info, ptr %info.0, i32 0, i32 4
  %38 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %planes, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp546.not = icmp eq i32 %40, 0
  br i1 %cmp546.not, label %if.end20.for.end104_crit_edge, label %cond.end68.peel

if.end20.for.end104_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end104

cond.end68.peel:                                  ; preds = %if.end20
  %arrayidx70.peel = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0
  %bytesperline.peel = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %41 = ptrtoint ptr %bytesperline.peel to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %bytesperline.peel, align 1
  %43 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %pix, align 1
  %arrayidx72.peel = getelementptr %struct.vsp1_format_info, ptr %info.0, i32 0, i32 5, i32 0
  %45 = ptrtoint ptr %arrayidx72.peel to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx72.peel, align 4
  %mul.peel = mul i32 %46, %44
  %div731.peel = lshr i32 %mul.peel, 3
  %47 = tail call i32 @llvm.umax.i32(i32 %42, i32 %div731.peel)
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 65408)
  %sub89.peel = add nsw i32 %48, -1
  %or.peel = or i32 %sub89.peel, 127
  %add.peel = add nsw i32 %or.peel, 1
  %49 = ptrtoint ptr %bytesperline.peel to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %add.peel, ptr %bytesperline.peel, align 1
  %50 = ptrtoint ptr %height2 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %height2, align 1
  %mul98.peel = mul i32 %add.peel, %51
  %52 = ptrtoint ptr %arrayidx70.peel to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %mul98.peel, ptr %arrayidx70.peel, align 1
  %53 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %planes, align 4
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp54.peel = icmp ugt i32 %55, 1
  br i1 %cmp54.peel, label %for.end104.loopexit.loopexit, label %cond.end68.peel.for.end104_crit_edge

cond.end68.peel.for.end104_crit_edge:             ; preds = %cond.end68.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end104

for.end104.loopexit.loopexit:                     ; preds = %cond.end68.peel
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %hsub to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hsub, align 4
  %58 = ptrtoint ptr %vsub to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vsub, align 4
  %arrayidx70 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1
  %bytesperline = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1, i32 1
  %60 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %bytesperline, align 1
  %62 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %pix, align 1
  %div = udiv i32 %63, %57
  %arrayidx72 = getelementptr %struct.vsp1_format_info, ptr %info.0, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx72, align 4
  %mul = mul i32 %65, %div
  %div731 = lshr i32 %mul, 3
  %66 = tail call i32 @llvm.umax.i32(i32 %61, i32 %div731)
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 65408)
  %sub89 = add nsw i32 %67, -1
  %or = or i32 %sub89, 127
  %add = add nsw i32 %or, 1
  %68 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %add, ptr %bytesperline, align 1
  %69 = ptrtoint ptr %height2 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %height2, align 1
  %mul98 = mul i32 %add, %70
  %div99 = udiv i32 %mul98, %59
  %71 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %div99, ptr %arrayidx70, align 1
  %72 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %planes, align 4
  br label %for.end104

for.end104:                                       ; preds = %for.end104.loopexit.loopexit, %cond.end68.peel.for.end104_crit_edge, %if.end20.for.end104_crit_edge
  %.lcssa = phi i32 [ %39, %if.end20.for.end104_crit_edge ], [ %54, %cond.end68.peel.for.end104_crit_edge ], [ %73, %for.end104.loopexit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.lcssa)
  %cmp106 = icmp eq i32 %.lcssa, 3
  br i1 %cmp106, label %if.then107, label %for.end104.if.end120_crit_edge

for.end104.if.end120_crit_edge:                   ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then107:                                       ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx109 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1
  %bytesperline110 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 1, i32 1
  %74 = ptrtoint ptr %bytesperline110 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %bytesperline110, align 1
  %arrayidx112 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 2
  %bytesperline113 = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 2, i32 1
  %76 = ptrtoint ptr %bytesperline113 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %bytesperline113, align 1
  %77 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx109, align 1
  %79 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %78, ptr %arrayidx112, align 1
  br label %if.end120

if.end120:                                        ; preds = %if.then107, %for.end104.if.end120_crit_edge
  %80 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %planes, align 4
  %conv = trunc i32 %81 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 6
  %82 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv, ptr %num_planes, align 1
  %tobool.not = icmp eq ptr %fmtinfo, null
  br i1 %tobool.not, label %if.end120.if.end123_crit_edge, label %if.then122

if.end120.if.end123_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then122:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %info.0, ptr %fmtinfo, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end120.if.end123_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_video_cleanup(ptr noundef %video) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.vsp1_video, ptr %video, i32 0, i32 3, i32 17
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %video1 = getelementptr inbounds %struct.vsp1_video, ptr %video, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %video1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_body(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get_body0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_list_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_partition(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_get_format_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 192) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %video2 = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 3
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %video2) #10
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 4
  %vsp1 = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsp1, align 8
  %call3 = tail call i32 @vsp1_device_get(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @v4l2_fh_del(ptr noundef nonnull %call7.i.i) #10
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %owner = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  %cmp = icmp eq ptr %5, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 8
  tail call void @vb2_queue_release(ptr noundef %queue) #10
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %owner, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %vsp1 = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vsp1, align 8
  tail call void @vsp1_device_put(ptr noundef %8) #10
  %call5 = tail call i32 @v4l2_fh_release(ptr noundef %file) #10
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2080362496, ptr %capabilities, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.19, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr i8, ptr %3, i32 1192
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #10
  %vsp1 = getelementptr i8, ptr %3, i32 -8
  %5 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vsp1, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_get_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %queue = getelementptr i8, ptr %3, i32 1484
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr i8, ptr %3, i32 1388
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %rwpf = getelementptr i8, ptr %3, i32 -4
  %8 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rwpf, align 4
  %format2 = getelementptr inbounds %struct.vsp1_rwpf, ptr %9, i32 0, i32 5
  %10 = call ptr @memcpy(ptr %fmt, ptr %format2, i32 192)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_set_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #0 align 64 {
entry:
  %info = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #10
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %info, align 4, !annotation !70
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 4
  %queue = getelementptr i8, ptr %3, i32 1484
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  call fastcc void @__vsp1_video_try_format(ptr noundef %add.ptr.i, ptr noundef %fmt, ptr noundef nonnull %info)
  %lock = getelementptr i8, ptr %3, i32 1388
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %num_buffers.i = getelementptr i8, ptr %3, i32 1808
  %9 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %if.end9, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rwpf = getelementptr i8, ptr %3, i32 -4
  %11 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rwpf, align 4
  %format10 = getelementptr inbounds %struct.vsp1_rwpf, ptr %12, i32 0, i32 5
  %13 = call ptr @memcpy(ptr %format10, ptr %fmt, i32 192)
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %16 = load ptr, ptr %rwpf, align 4
  %fmtinfo = getelementptr inbounds %struct.vsp1_rwpf, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %fmtinfo to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %fmtinfo, align 4
  br label %done

done:                                             ; preds = %if.end9, %if.end.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.end9 ], [ -16, %if.end.done_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_try_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %queue = getelementptr i8, ptr %3, i32 1484
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %3, i32 -16
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  tail call fastcc void @__vsp1_video_try_format(ptr noundef %add.ptr.i, ptr noundef %fmt, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_streamon(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, i32 noundef %type) #0 align 64 {
entry:
  %fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %ent_enum.i.i.i.i = alloca %struct.media_entity_enum, align 4
  %graph.i.i.i = alloca %struct.media_graph, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %vsp1 = getelementptr i8, ptr %3, i32 -8
  %queue = getelementptr i8, ptr %3, i32 1484
  %owner = getelementptr i8, ptr %3, i32 1508
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %5, null
  %cmp.not = icmp eq ptr %5, %1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsp1, align 8
  %graph_mutex = getelementptr inbounds %struct.vsp1_device, ptr %7, i32 0, i32 23, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #10
  %rwpf.i = getelementptr i8, ptr %3, i32 -4
  %8 = ptrtoint ptr %rwpf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rwpf.i, align 4
  %pipe1.i = getelementptr inbounds %struct.vsp1_entity, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe1.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 436) #14
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then6_crit_edge, label %if.end.i

if.then.i.if.then6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end.i:                                         ; preds = %if.then.i
  tail call void @vsp1_pipeline_init(ptr noundef nonnull %call7.i.i.i) #10
  %frame_end.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %frame_end.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vsp1_video_pipeline_frame_end, ptr %frame_end.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %graph.i.i.i) #10
  %14 = call ptr @memset(ptr %graph.i.i.i, i32 255, i32 140)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call.i.i.i = call i32 @media_graph_walk_init(ptr noundef nonnull %graph.i.i.i, ptr noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %vsp1_video_pipeline_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @media_graph_walk_start(ptr noundef nonnull %graph.i.i.i, ptr noundef %3) #10
  %call4101.i.i.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i.i.i) #10
  %tobool5.not102.i.i.i = icmp eq ptr %call4101.i.i.i, null
  br i1 %tobool5.not102.i.i.i, label %if.end.i.i.i.while.end.i.i.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.lr.ph.i.i.i

if.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

is_media_entity_v4l2_subdev.exit.lr.ph.i.i.i:     ; preds = %if.end.i.i.i
  %entities.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 19
  %prev.i.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  %hgt.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 15
  %hgo.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 14
  %brx.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 13
  %lif.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 16
  %output.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 12
  %num_inputs.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 10
  br label %is_media_entity_v4l2_subdev.exit.i.i.i

is_media_entity_v4l2_subdev.exit.i.i.i:           ; preds = %cleanup.i.i.i.is_media_entity_v4l2_subdev.exit.i.i.i_crit_edge, %is_media_entity_v4l2_subdev.exit.lr.ph.i.i.i
  %call4103.i.i.i = phi ptr [ %call4101.i.i.i, %is_media_entity_v4l2_subdev.exit.lr.ph.i.i.i ], [ %call4.i.i.i, %cleanup.i.i.i.is_media_entity_v4l2_subdev.exit.i.i.i_crit_edge ]
  %obj_type.i.i.i.i = getelementptr inbounds %struct.media_entity, ptr %call4103.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %obj_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %obj_type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 2
  br i1 %cmp.i.i.i.i, label %cond.end.i.i.i, label %is_media_entity_v4l2_subdev.exit.i.i.i.cleanup.i.i.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.i.cleanup.i.i.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i

cond.end.i.i.i:                                   ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 -60
  %list_pipe.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 -28
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_pipe.i.i.i, ptr noundef %20, ptr noundef %entities.i.i.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %cond.end.i.i.i.list_add_tail.exit.i.i.i_crit_edge

cond.end.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list_pipe.i.i.i, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %list_pipe.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entities.i.i.i, ptr %list_pipe.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 -24
  %23 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list_pipe.i.i.i, ptr %20, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %cond.end.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  %pipe12.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 -40
  %25 = ptrtoint ptr %pipe12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %pipe12.i.i.i, align 4
  %type.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 -52
  %26 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i.i.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %27, label %list_add_tail.exit.i.i.i.cleanup.i.i.i_crit_edge [
    i32 9, label %sw.bb.i.i.i
    i32 13, label %sw.bb16.i.i.i
    i32 7, label %sw.bb20.i.i.i
    i32 1, label %list_add_tail.exit.i.i.i.sw.bb21.i.i.i_crit_edge
    i32 0, label %list_add_tail.exit.i.i.i.sw.bb21.i.i.i_crit_edge91
    i32 3, label %sw.bb22.i.i.i
    i32 4, label %sw.bb23.i.i.i
  ]

list_add_tail.exit.i.i.i.sw.bb21.i.i.i_crit_edge91: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21.i.i.i

list_add_tail.exit.i.i.i.sw.bb21.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21.i.i.i

list_add_tail.exit.i.i.i.cleanup.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i.i

sw.bb.i.i.i:                                      ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 -48
  %29 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 11, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %32 = ptrtoint ptr %num_inputs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_inputs.i.i.i, align 4
  %inc.i.i.i = add i32 %33, 1
  store i32 %inc.i.i.i, ptr %num_inputs.i.i.i, align 4
  %video15.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 476
  %34 = ptrtoint ptr %video15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %video15.i.i.i, align 4
  %pipe_index.i.i.i = getelementptr inbounds %struct.vsp1_video, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %pipe_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i.i.i, ptr %pipe_index.i.i.i, align 8
  br label %cleanup.i.i.i

sw.bb16.i.i.i:                                    ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %output.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i.i.i, ptr %output.i.i.i, align 4
  %video18.i.i.i = getelementptr i8, ptr %call4103.i.i.i, i32 476
  %38 = ptrtoint ptr %video18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %video18.i.i.i, align 4
  %pipe_index19.i.i.i = getelementptr inbounds %struct.vsp1_video, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %pipe_index19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %pipe_index19.i.i.i, align 8
  br label %cleanup.i.i.i

sw.bb20.i.i.i:                                    ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %lif.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i.i.i, ptr %lif.i.i.i, align 4
  br label %cleanup.i.i.i

sw.bb21.i.i.i:                                    ; preds = %list_add_tail.exit.i.i.i.sw.bb21.i.i.i_crit_edge, %list_add_tail.exit.i.i.i.sw.bb21.i.i.i_crit_edge91
  %42 = ptrtoint ptr %brx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i.i.i.i, ptr %brx.i.i.i, align 8
  br label %cleanup.i.i.i

sw.bb22.i.i.i:                                    ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %hgo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i.i.i.i, ptr %hgo.i.i.i, align 4
  br label %cleanup.i.i.i

sw.bb23.i.i.i:                                    ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %hgt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i.i.i.i, ptr %hgt.i.i.i, align 8
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %sw.bb23.i.i.i, %sw.bb22.i.i.i, %sw.bb21.i.i.i, %sw.bb20.i.i.i, %sw.bb16.i.i.i, %sw.bb.i.i.i, %list_add_tail.exit.i.i.i.cleanup.i.i.i_crit_edge, %is_media_entity_v4l2_subdev.exit.i.i.i.cleanup.i.i.i_crit_edge
  %call4.i.i.i = call ptr @media_graph_walk_next(ptr noundef nonnull %graph.i.i.i) #10
  %tobool5.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %cleanup.i.i.i.while.end.i.i.i_crit_edge, label %cleanup.i.i.i.is_media_entity_v4l2_subdev.exit.i.i.i_crit_edge

cleanup.i.i.i.is_media_entity_v4l2_subdev.exit.i.i.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_media_entity_v4l2_subdev.exit.i.i.i

cleanup.i.i.i.while.end.i.i.i_crit_edge:          ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %cleanup.i.i.i.while.end.i.i.i_crit_edge, %if.end.i.i.i.while.end.i.i.i_crit_edge
  call void @media_graph_walk_cleanup(ptr noundef nonnull %graph.i.i.i) #10
  %num_inputs26.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %num_inputs26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_inputs26.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i, label %while.end.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i

while.end.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_init.exit.thread.i

lor.lhs.false.i.i.i:                              ; preds = %while.end.i.i.i
  %output27.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 12
  %47 = ptrtoint ptr %output27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %output27.i.i.i, align 4
  %tobool28.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool28.not.i.i.i, label %lor.lhs.false.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge, label %for.cond.preheader.i.i.i

lor.lhs.false.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_init.exit.thread.i

for.cond.preheader.i.i.i:                         ; preds = %lor.lhs.false.i.i.i
  %49 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vsp1, align 8
  %info105.i.i.i = getelementptr inbounds %struct.vsp1_device, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %info105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %info105.i.i.i, align 4
  %rpf_count106.i.i.i = getelementptr inbounds %struct.vsp1_device_info, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %rpf_count106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rpf_count106.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp31107.not.i.i.i = icmp eq i32 %54, 0
  br i1 %cmp31107.not.i.i.i, label %for.cond.preheader.i.i.i.vsp1_video_pipeline_init.exit.thread27.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.vsp1_video_pipeline_init.exit.thread27.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_init.exit.thread27.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %55 = getelementptr inbounds %struct.media_entity_enum, ptr %ent_enum.i.i.i.i, i32 0, i32 1
  %uds.i.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 17
  %uds_input.i.i.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 18
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0108.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc44.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx33.i.i.i = getelementptr %struct.vsp1_pipeline, ptr %call7.i.i.i, i32 0, i32 11, i32 %i.0108.i.i.i
  %56 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx33.i.i.i, align 4
  %tobool34.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool34.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end36.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.end36.i.i.i:                                   ; preds = %for.body.i.i.i
  %58 = ptrtoint ptr %output27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %output27.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ent_enum.i.i.i.i) #10
  %60 = ptrtoint ptr %ent_enum.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %ent_enum.i.i.i.i, align 4, !annotation !70
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %55, align 4, !annotation !70
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %57, align 4
  %entity_internal_idx_max.i.i.i.i.i = getelementptr inbounds %struct.vsp1_device, ptr %63, i32 0, i32 23, i32 10
  %64 = ptrtoint ptr %entity_internal_idx_max.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %entity_internal_idx_max.i.i.i.i.i, align 8
  %add.i.i.i.i.i = add i32 %65, 1
  %call.i.i89.i.i.i = call i32 @__media_entity_enum_init(ptr noundef nonnull %ent_enum.i.i.i.i, i32 noundef %add.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89.i.i.i)
  %cmp.i90.i.i.i = icmp slt i32 %call.i.i89.i.i.i, 0
  br i1 %cmp.i90.i.i.i, label %vsp1_video_pipeline_build_branch.exit.thread.i.i.i, label %if.end.i.i.i.i

vsp1_video_pipeline_build_branch.exit.thread.i.i.i: ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ent_enum.i.i.i.i) #10
  br label %vsp1_video_pipeline_init.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %if.end36.i.i.i
  %pads.i.i.i.i = getelementptr inbounds %struct.vsp1_entity, ptr %57, i32 0, i32 8
  %66 = ptrtoint ptr %pads.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pads.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.media_pad, ptr %67, i32 1
  %call3.i.i.i.i = call ptr @vsp1_entity_remote_pad(ptr noundef %arrayidx.i.i.i.i) #10
  %cmp494.i.i.i.i = icmp eq ptr %call3.i.i.i.i, null
  br i1 %cmp494.i.i.i.i, label %if.end.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, label %if.end6.lr.ph.i.i.i.i

if.end.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

if.end6.lr.ph.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %brx_input.i.i.i.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %57, i32 0, i32 7
  br label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end50.i.i.i.i.if.end6.i.i.i.i_crit_edge, %if.end6.lr.ph.i.i.i.i
  %pad.096.i.i.i.i = phi ptr [ %call3.i.i.i.i, %if.end6.lr.ph.i.i.i.i ], [ %call53.i.i.i.i, %if.end50.i.i.i.i.if.end6.i.i.i.i_crit_edge ]
  %brx.095.i.i.i.i = phi ptr [ null, %if.end6.lr.ph.i.i.i.i ], [ %brx.1.i.i.i.i, %if.end50.i.i.i.i.if.end6.i.i.i.i_crit_edge ]
  %entity7.i.i.i.i = getelementptr inbounds %struct.media_pad, ptr %pad.096.i.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %entity7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %entity7.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end6.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i.i.i

if.end6.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

is_media_entity_v4l2_subdev.exit.i.i.i.i:         ; preds = %if.end6.i.i.i.i
  %obj_type.i.i.i.i.i = getelementptr inbounds %struct.media_entity, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %obj_type.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %obj_type.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp.i.i.i.i.i = icmp eq i32 %71, 2
  br i1 %cmp.i.i.i.i.i, label %if.end10.i.i.i.i, label %is_media_entity_v4l2_subdev.exit.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

if.end10.i.i.i.i:                                 ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %69, i32 -60
  %type.i.i.i.i = getelementptr i8, ptr %69, i32 -52
  %72 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %switch.i.i.i.i = icmp ult i32 %73, 2
  br i1 %switch.i.i.i.i, label %if.then17.i.i.i.i, label %if.end10.i.i.i.i.if.end24.i.i.i.i_crit_edge

if.end10.i.i.i.i.if.end24.i.i.i.i_crit_edge:      ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i.i.i.i

if.then17.i.i.i.i:                                ; preds = %if.end10.i.i.i.i
  %tobool18.not.i.i.i.i = icmp eq ptr %brx.095.i.i.i.i, null
  br i1 %tobool18.not.i.i.i.i, label %if.end20.i.i.i.i, label %if.then17.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge

if.then17.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %if.then17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

if.end20.i.i.i.i:                                 ; preds = %if.then17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i.i.i.i = getelementptr inbounds %struct.media_pad, ptr %pad.096.i.i.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %index.i.i.i.i, align 4
  %idxprom.i.i.i.i = zext i16 %75 to i32
  %arrayidx22.i.i.i.i = getelementptr %struct.vsp1_brx, ptr %add.ptr.i.i.i.i.i, i32 0, i32 3, i32 %idxprom.i.i.i.i
  %76 = ptrtoint ptr %arrayidx22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %57, ptr %arrayidx22.i.i.i.i, align 4
  %77 = load i16, ptr %index.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %77 to i32
  %78 = ptrtoint ptr %brx_input.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i.i.i.i, ptr %brx_input.i.i.i.i, align 4
  %79 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr.i.i.i.i = load i32, ptr %type.i.i.i.i, align 4
  br label %if.end24.i.i.i.i

if.end24.i.i.i.i:                                 ; preds = %if.end20.i.i.i.i, %if.end10.i.i.i.i.if.end24.i.i.i.i_crit_edge
  %80 = phi i32 [ %73, %if.end10.i.i.i.i.if.end24.i.i.i.i_crit_edge ], [ %.pr.i.i.i.i, %if.end20.i.i.i.i ]
  %brx.1.i.i.i.i = phi ptr [ %brx.095.i.i.i.i, %if.end10.i.i.i.i.if.end24.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i.i, %if.end20.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %80)
  %cmp26.i.i.i.i = icmp eq i32 %80, 13
  br i1 %cmp26.i.i.i.i, label %while.end.i.i.i.i, label %if.end29.i.i.i.i

if.end29.i.i.i.i:                                 ; preds = %if.end24.i.i.i.i
  %internal_idx.i.i.i.i.i = getelementptr inbounds %struct.media_entity, ptr %69, i32 0, i32 8
  %81 = ptrtoint ptr %internal_idx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %internal_idx.i.i.i.i.i, align 4
  %83 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.not.i.i.i.i.i = icmp slt i32 %82, %84
  br i1 %cmp.not.i.i.i.i.i, label %media_entity_enum_test_and_set.exit.i.i.i.i, label %media_entity_enum_test_and_set.exit.thread.i.i.i.i, !prof !71

media_entity_enum_test_and_set.exit.thread.i.i.i.i: ; preds = %if.end29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 519, i32 noundef 9, ptr noundef null) #10
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

media_entity_enum_test_and_set.exit.i.i.i.i:      ; preds = %if.end29.i.i.i.i
  %85 = ptrtoint ptr %ent_enum.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ent_enum.i.i.i.i, align 4
  %rem.i.i.i.i.i.i = and i32 %82, 31
  %shl.i.i.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i.i.i
  %div5.i.i.i.i.i.i = lshr i32 %82, 5
  %add.ptr.i.i.i.i.i.i = getelementptr i32, ptr %86, i32 %div5.i.i.i.i.i.i
  %87 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %or.i.i.i.i.i.i = or i32 %88, %shl.i.i.i.i.i.i
  store i32 %or.i.i.i.i.i.i, ptr %add.ptr.i.i.i.i.i.i, align 4
  %89 = and i32 %88, %shl.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool23.i.not.i.i.i.i = icmp eq i32 %89, 0
  br i1 %tobool23.i.not.i.i.i.i, label %if.end34.i.i.i.i, label %media_entity_enum_test_and_set.exit.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge

media_entity_enum_test_and_set.exit.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %media_entity_enum_test_and_set.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

if.end34.i.i.i.i:                                 ; preds = %media_entity_enum_test_and_set.exit.i.i.i.i
  %90 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %91)
  %cmp36.i.i.i.i = icmp eq i32 %91, 11
  br i1 %cmp36.i.i.i.i, label %if.then38.i.i.i.i, label %if.end34.i.i.i.i.if.end50.i.i.i.i_crit_edge

if.end34.i.i.i.i.if.end50.i.i.i.i_crit_edge:      ; preds = %if.end34.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i.i.i.i

if.then38.i.i.i.i:                                ; preds = %if.end34.i.i.i.i
  %92 = ptrtoint ptr %uds.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %uds.i.i.i.i, align 8
  %tobool39.not.i.i.i.i = icmp eq ptr %93, null
  br i1 %tobool39.not.i.i.i.i, label %if.end41.i.i.i.i, label %if.then38.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge

if.then38.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %if.then38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

if.end41.i.i.i.i:                                 ; preds = %if.then38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %uds.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %add.ptr.i.i.i.i.i, ptr %uds.i.i.i.i, align 8
  %tobool43.not.i.i.i.i = icmp eq ptr %brx.1.i.i.i.i, null
  %input.brx.1.i.i.i.i = select i1 %tobool43.not.i.i.i.i, ptr %57, ptr %brx.1.i.i.i.i
  %95 = ptrtoint ptr %uds_input.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %input.brx.1.i.i.i.i, ptr %uds_input.i.i.i.i, align 4
  br label %if.end50.i.i.i.i

if.end50.i.i.i.i:                                 ; preds = %if.end41.i.i.i.i, %if.end34.i.i.i.i.if.end50.i.i.i.i_crit_edge
  %pads51.i.i.i.i = getelementptr i8, ptr %69, i32 -20
  %96 = ptrtoint ptr %pads51.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pads51.i.i.i.i, align 4
  %source_pad.i.i.i.i = getelementptr i8, ptr %69, i32 -16
  %98 = ptrtoint ptr %source_pad.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %source_pad.i.i.i.i, align 4
  %arrayidx52.i.i.i.i = getelementptr %struct.media_pad, ptr %97, i32 %99
  %call53.i.i.i.i = call ptr @vsp1_entity_remote_pad(ptr noundef %arrayidx52.i.i.i.i) #10
  %cmp4.i.i.i.i = icmp eq ptr %call53.i.i.i.i, null
  br i1 %cmp4.i.i.i.i, label %if.end50.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, label %if.end50.i.i.i.i.if.end6.i.i.i.i_crit_edge

if.end50.i.i.i.i.if.end6.i.i.i.i_crit_edge:       ; preds = %if.end50.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i.i.i

if.end50.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %if.end50.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

while.end.i.i.i.i:                                ; preds = %if.end24.i.i.i.i
  %cmp55.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, %59
  br i1 %cmp55.not.i.i.i.i, label %vsp1_video_pipeline_build_branch.exit.i.i.i, label %while.end.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge

while.end.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge: ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i

vsp1_video_pipeline_build_branch.exit.thread93.i.i.i: ; preds = %while.end.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, %if.end50.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, %if.then38.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, %media_entity_enum_test_and_set.exit.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, %media_entity_enum_test_and_set.exit.thread.i.i.i.i, %if.then17.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, %is_media_entity_v4l2_subdev.exit.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, %if.end6.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge, %if.end.i.i.i.i.vsp1_video_pipeline_build_branch.exit.thread93.i.i.i_crit_edge
  call void @media_entity_enum_cleanup(ptr noundef nonnull %ent_enum.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ent_enum.i.i.i.i) #10
  br label %vsp1_video_pipeline_init.exit.thread.i

vsp1_video_pipeline_build_branch.exit.i.i.i:      ; preds = %while.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @media_entity_enum_cleanup(ptr noundef nonnull %ent_enum.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ent_enum.i.i.i.i) #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %vsp1_video_pipeline_build_branch.exit.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc44.i.i.i = add nuw i32 %i.0108.i.i.i, 1
  %100 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vsp1, align 8
  %info.i.i.i = getelementptr inbounds %struct.vsp1_device, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %info.i.i.i, align 4
  %rpf_count.i.i.i = getelementptr inbounds %struct.vsp1_device_info, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %rpf_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rpf_count.i.i.i, align 4
  %cmp31.i.i.i = icmp ult i32 %inc44.i.i.i, %105
  br i1 %cmp31.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.vsp1_video_pipeline_init.exit.thread27.i_crit_edge

for.inc.i.i.i.vsp1_video_pipeline_init.exit.thread27.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_init.exit.thread27.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

vsp1_video_pipeline_init.exit.thread.i:           ; preds = %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i, %vsp1_video_pipeline_build_branch.exit.thread.i.i.i, %lor.lhs.false.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge, %while.end.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge
  %retval.0.i.i.ph.i = phi i32 [ -32, %vsp1_video_pipeline_build_branch.exit.thread93.i.i.i ], [ %call.i.i89.i.i.i, %vsp1_video_pipeline_build_branch.exit.thread.i.i.i ], [ -32, %while.end.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge ], [ -32, %lor.lhs.false.i.i.i.vsp1_video_pipeline_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i.i.i) #10
  br label %if.then6.i

vsp1_video_pipeline_init.exit.thread27.i:         ; preds = %for.inc.i.i.i.vsp1_video_pipeline_init.exit.thread27.i_crit_edge, %for.cond.preheader.i.i.i.vsp1_video_pipeline_init.exit.thread27.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i.i.i) #10
  br label %vsp1_video_pipeline_get.exit

vsp1_video_pipeline_init.exit.i:                  ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %graph.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %vsp1_video_pipeline_init.exit.i.if.then6.i_crit_edge, label %vsp1_video_pipeline_init.exit.i.vsp1_video_pipeline_get.exit_crit_edge

vsp1_video_pipeline_init.exit.i.vsp1_video_pipeline_get.exit_crit_edge: ; preds = %vsp1_video_pipeline_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_get.exit

vsp1_video_pipeline_init.exit.i.if.then6.i_crit_edge: ; preds = %vsp1_video_pipeline_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

if.then6.i:                                       ; preds = %vsp1_video_pipeline_init.exit.i.if.then6.i_crit_edge, %vsp1_video_pipeline_init.exit.thread.i
  %retval.0.i.i25.i = phi i32 [ %retval.0.i.i.ph.i, %vsp1_video_pipeline_init.exit.thread.i ], [ %call.i.i.i, %vsp1_video_pipeline_init.exit.i.if.then6.i_crit_edge ]
  call void @vsp1_pipeline_reset(ptr noundef nonnull %call7.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %106 = inttoptr i32 %retval.0.i.i25.i to ptr
  br label %vsp1_video_pipeline_get.exit

if.else.i:                                        ; preds = %if.end
  %kref.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %11, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !73

if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else.i
  %add.i.i.i.i22.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %108 = or i32 %add.i.i.i.i22.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %.not.i.i.i.i.i = icmp sgt i32 %108, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.vsp1_video_pipeline_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !71

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.vsp1_video_pipeline_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_pipeline_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %vsp1_video_pipeline_get.exit

vsp1_video_pipeline_get.exit:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.vsp1_video_pipeline_get.exit_crit_edge, %if.then6.i, %vsp1_video_pipeline_init.exit.i.vsp1_video_pipeline_get.exit_crit_edge, %vsp1_video_pipeline_init.exit.thread27.i
  %retval.0.i = phi ptr [ %106, %if.then6.i ], [ %call7.i.i.i, %vsp1_video_pipeline_init.exit.i.vsp1_video_pipeline_get.exit_crit_edge ], [ %call7.i.i.i, %vsp1_video_pipeline_init.exit.thread27.i ], [ %11, %if.else.i.i.i.i.i.vsp1_video_pipeline_get.exit_crit_edge ], [ %11, %if.end15.sink.split.i.i.i.i.i ]
  %cmp.i50 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %vsp1_video_pipeline_get.exit.if.then6_crit_edge, label %if.end9

vsp1_video_pipeline_get.exit.if.then6_crit_edge:  ; preds = %vsp1_video_pipeline_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %vsp1_video_pipeline_get.exit.if.then6_crit_edge, %if.then.i.if.then6_crit_edge
  %retval.0.i59 = phi ptr [ %retval.0.i, %vsp1_video_pipeline_get.exit.if.then6_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.if.then6_crit_edge ]
  call void @mutex_unlock(ptr noundef %graph_mutex) #10
  %109 = ptrtoint ptr %retval.0.i59 to i32
  br label %cleanup

if.end9:                                          ; preds = %vsp1_video_pipeline_get.exit
  %call12 = call i32 @__media_pipeline_start(ptr noundef %3, ptr noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  call void @mutex_unlock(ptr noundef %graph_mutex) #10
  br i1 %cmp13, label %if.end9.err_pipe_crit_edge, label %if.end16

if.end9.err_pipe_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pipe

if.end16:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i) #10
  %110 = getelementptr inbounds i8, ptr %fmt.i, i32 4
  %111 = getelementptr inbounds i8, ptr %fmt.i, i32 8
  %112 = call ptr @memset(ptr %111, i32 255, i32 80)
  %pad.i = getelementptr i8, ptr %3, i32 1356
  %call.i.i = call ptr @media_entity_remote_pad(ptr noundef %pad.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.vsp1_video_verify_format.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.end16.vsp1_video_verify_format.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_verify_format.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end16
  %entity.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %entity.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %entity.i.i, align 4
  %tobool.not.i.i.i51 = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i51, label %lor.lhs.false.i.i.vsp1_video_verify_format.exit.thread_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i

lor.lhs.false.i.i.vsp1_video_verify_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_verify_format.exit.thread

is_media_entity_v4l2_subdev.exit.i.i:             ; preds = %lor.lhs.false.i.i
  %obj_type.i.i.i = getelementptr inbounds %struct.media_entity, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %obj_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %obj_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %116)
  %cmp.i.i.i52 = icmp eq i32 %116, 2
  br i1 %cmp.i.i.i52, label %if.end.i54, label %is_media_entity_v4l2_subdev.exit.i.i.vsp1_video_verify_format.exit.thread_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.vsp1_video_verify_format.exit.thread_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_verify_format.exit.thread

if.end.i54:                                       ; preds = %is_media_entity_v4l2_subdev.exit.i.i
  %index.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i, i32 0, i32 2
  %117 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %index.i.i, align 4
  %conv.i.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv.i.i, ptr %110, align 4
  %120 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %fmt.i, align 4
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %114, i32 0, i32 6
  %121 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i, align 4
  %pad3.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %122, i32 0, i32 7
  %123 = ptrtoint ptr %pad3.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pad3.i, align 4
  %tobool4.not.i = icmp eq ptr %124, null
  br i1 %tobool4.not.i, label %if.end.i54.if.then26.thread.i_crit_edge, label %land.lhs.true.i

if.end.i54.if.then26.thread.i_crit_edge:          ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.thread.i

land.lhs.true.i:                                  ; preds = %if.end.i54
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %get_fmt.i, align 4
  %tobool7.not.i = icmp eq ptr %126, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.then26.thread.i_crit_edge, label %if.else9.i

land.lhs.true.i.if.then26.thread.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.thread.i

if.else9.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not.i = icmp eq ptr %127, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else17.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else17.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %get_fmt12.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %get_fmt12.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get_fmt12.i, align 4
  %tobool13.not.i = icmp eq ptr %129, null
  br i1 %tobool13.not.i, label %land.lhs.true11.i.if.else17.i_crit_edge, label %land.lhs.true11.i.if.end24.i_crit_edge

land.lhs.true11.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true11.i.if.else17.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true11.i.if.else17.i_crit_edge, %if.else9.i.if.else17.i_crit_edge
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else17.i, %land.lhs.true11.i.if.end24.i_crit_edge
  %.sink.i = phi ptr [ %126, %if.else17.i ], [ %129, %land.lhs.true11.i.if.end24.i_crit_edge ]
  %call21.i = call i32 %.sink.i(ptr noundef nonnull %114, ptr noundef null, ptr noundef nonnull %fmt.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp25.i = icmp slt i32 %call21.i, 0
  br i1 %cmp25.i, label %if.then26.i, label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call21.i)
  %cmp27.i = icmp eq i32 %call21.i, -515
  br i1 %cmp27.i, label %if.then26.i.if.then26.thread.i_crit_edge, label %if.then26.i.vsp1_video_verify_format.exit.thread_crit_edge

if.then26.i.vsp1_video_verify_format.exit.thread_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_verify_format.exit.thread

if.then26.i.if.then26.thread.i_crit_edge:         ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26.thread.i

if.then26.thread.i:                               ; preds = %if.then26.i.if.then26.thread.i_crit_edge, %land.lhs.true.i.if.then26.thread.i_crit_edge, %if.end.i54.if.then26.thread.i_crit_edge
  br label %vsp1_video_verify_format.exit.thread

if.end28.i:                                       ; preds = %if.end24.i
  %130 = ptrtoint ptr %rwpf.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rwpf.i, align 4
  %fmtinfo.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %131, i32 0, i32 6
  %132 = ptrtoint ptr %fmtinfo.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %fmtinfo.i, align 4
  %mbus.i = getelementptr inbounds %struct.vsp1_format_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %mbus.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mbus.i, align 4
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 2
  %136 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp29.not.i = icmp eq i32 %135, %137
  br i1 %cmp29.not.i, label %lor.lhs.false.i, label %if.end28.i.vsp1_video_verify_format.exit.thread_crit_edge

if.end28.i.vsp1_video_verify_format.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_verify_format.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end28.i
  %height.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %131, i32 0, i32 5, i32 1
  %138 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %height.i, align 4
  %height33.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i, i32 0, i32 2, i32 1
  %140 = ptrtoint ptr %height33.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %height33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp34.not.i = icmp eq i32 %139, %141
  br i1 %cmp34.not.i, label %lor.lhs.false35.i, label %lor.lhs.false.i.vsp1_video_verify_format.exit.thread_crit_edge

lor.lhs.false.i.vsp1_video_verify_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_verify_format.exit.thread

lor.lhs.false35.i:                                ; preds = %lor.lhs.false.i
  %format31.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %131, i32 0, i32 5
  %142 = ptrtoint ptr %format31.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %format31.i, align 4
  %144 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp40.not.i = icmp eq i32 %143, %145
  br i1 %cmp40.not.i, label %if.end21, label %lor.lhs.false35.i.vsp1_video_verify_format.exit.thread_crit_edge

lor.lhs.false35.i.vsp1_video_verify_format.exit.thread_crit_edge: ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_verify_format.exit.thread

vsp1_video_verify_format.exit.thread:             ; preds = %lor.lhs.false35.i.vsp1_video_verify_format.exit.thread_crit_edge, %lor.lhs.false.i.vsp1_video_verify_format.exit.thread_crit_edge, %if.end28.i.vsp1_video_verify_format.exit.thread_crit_edge, %if.then26.thread.i, %if.then26.i.vsp1_video_verify_format.exit.thread_crit_edge, %is_media_entity_v4l2_subdev.exit.i.i.vsp1_video_verify_format.exit.thread_crit_edge, %lor.lhs.false.i.i.vsp1_video_verify_format.exit.thread_crit_edge, %if.end16.vsp1_video_verify_format.exit.thread_crit_edge
  %retval.0.i56.ph = phi i32 [ -22, %lor.lhs.false.i.i.vsp1_video_verify_format.exit.thread_crit_edge ], [ -22, %if.end16.vsp1_video_verify_format.exit.thread_crit_edge ], [ -22, %is_media_entity_v4l2_subdev.exit.i.i.vsp1_video_verify_format.exit.thread_crit_edge ], [ %call21.i, %if.then26.i.vsp1_video_verify_format.exit.thread_crit_edge ], [ -22, %if.then26.thread.i ], [ -22, %lor.lhs.false35.i.vsp1_video_verify_format.exit.thread_crit_edge ], [ -22, %if.end28.i.vsp1_video_verify_format.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.vsp1_video_verify_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #10
  br label %err_stop

if.end21:                                         ; preds = %lor.lhs.false35.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i) #10
  %call23 = call i32 @vb2_streamon(ptr noundef %queue, i32 noundef %type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.err_stop_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21.err_stop_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_stop

err_stop:                                         ; preds = %if.end21.err_stop_crit_edge, %vsp1_video_verify_format.exit.thread
  %ret.0 = phi i32 [ %call23, %if.end21.err_stop_crit_edge ], [ %retval.0.i56.ph, %vsp1_video_verify_format.exit.thread ]
  call void @media_pipeline_stop(ptr noundef %3) #10
  br label %err_pipe

err_pipe:                                         ; preds = %err_stop, %if.end9.err_pipe_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_stop ], [ %call12, %if.end9.err_pipe_crit_edge ]
  call fastcc void @vsp1_video_pipeline_put(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %err_pipe, %if.end21.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %109, %if.then6 ], [ %ret.1, %err_pipe ], [ 0, %if.end21.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsp1_video_pipeline_put(ptr noundef %pipe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %graph_mutex = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 23, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #10
  %kref = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !71

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @vsp1_pipeline_reset(ptr noundef %pipe) #10
  tail call void @kfree(ptr noundef %pipe) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %graph_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsp1_video_pipeline_frame_end(ptr noundef %pipe, i32 noundef %completion) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %and = and i32 %completion, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b81 = load i1, ptr @vsp1_video_pipeline_frame_end.__already_done, align 1
  br i1 %.b81, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !71

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vsp1_video_pipeline_frame_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %irqlock = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 1
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %info = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %rpf_count82 = getelementptr inbounds %struct.vsp1_device_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %rpf_count82 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rpf_count82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4683.not = icmp eq i32 %7, 0
  br i1 %cmp4683.not, label %if.end30.for.end_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30.for.body_crit_edge
  %i.084 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 11, i32 %i.084
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %9, null
  br i1 %tobool48.not, label %for.body.for.inc_crit_edge, label %if.end50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end50:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vsp1_video_frame_end(ptr noundef %pipe, ptr noundef nonnull %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.084, 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %rpf_count = getelementptr inbounds %struct.vsp1_device_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %rpf_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rpf_count, align 4
  %cmp46 = icmp ult i32 %inc, %13
  br i1 %cmp46, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %14 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output, align 4
  tail call fastcc void @vsp1_video_frame_end(ptr noundef %pipe, ptr noundef %15)
  %state54 = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 2
  %16 = ptrtoint ptr %state54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state54, align 4
  store i32 0, ptr %state54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp56 = icmp eq i32 %17, 2
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %wq = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end62

if.else:                                          ; preds = %for.end
  %call59 = tail call zeroext i1 @vsp1_pipeline_ready(ptr noundef %pipe) #10
  br i1 %call59, label %if.then60, label %if.else.if.end62_crit_edge

if.else.if.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vsp1_video_pipeline_run(ptr noundef %pipe)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.else.if.end62_crit_edge, %if.then58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call41) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsp1_video_frame_end(ptr nocapture noundef %pipe, ptr nocapture noundef readonly %rwpf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %video1 = getelementptr inbounds %struct.vsp1_rwpf, ptr %rwpf, i32 0, i32 2
  %0 = ptrtoint ptr %video1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video1, align 4
  %rwpf.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rwpf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rwpf.i, align 4
  %pipe1.i = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe1.i, align 4
  %irqlock.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #10
  %irqqueue.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %irqqueue.i
  br i1 %cmp.i.not.i, label %vsp1_video_complete_buffer.exit.thread, label %if.end.i

vsp1_video_complete_buffer.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call3.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %7, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %irqqueue.i, align 4
  %cmp.i57.not.i = icmp eq ptr %17, %irqqueue.i
  %add.ptr19.i = getelementptr i8, ptr %17, i32 -736
  %spec.select.i = select i1 %cmp.i57.not.i, ptr null, ptr %add.ptr19.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call3.i) #10
  %sequence.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence.i, align 4
  %sequence22.i = getelementptr i8, ptr %7, i32 -272
  %20 = ptrtoint ptr %sequence22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sequence22.i, align 8
  %call.i.i = tail call i64 @ktime_get() #10
  %timestamp.i = getelementptr i8, ptr %7, i32 -712
  %21 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %num_planes.i = getelementptr i8, ptr %7, i32 -720
  %22 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2766.not.i = icmp eq i32 %23, 0
  br i1 %cmp2766.not.i, label %list_del.exit.i.vsp1_video_complete_buffer.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  br label %for.body.i

list_del.exit.i.vsp1_video_complete_buffer.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_complete_buffer.exit

for.body.i:                                       ; preds = %vb2_set_plane_payload.exit.i.for.body.i_crit_edge, %list_del.exit.i.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %vb2_set_plane_payload.exit.i.for.body.i_crit_edge ], [ 0, %list_del.exit.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %i.067.i)
  %cmp.i59.i = icmp ugt i32 %25, %i.067.i
  br i1 %cmp.i59.i, label %if.end42.i.i, label %for.body.i.vb2_set_plane_payload.exit.i_crit_edge

for.body.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit.i

if.end42.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %size.addr.0.i.in.i = getelementptr %struct.vb2_buffer, ptr %add.ptr.i, i32 0, i32 10, i32 %i.067.i, i32 4
  %26 = ptrtoint ptr %size.addr.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %size.addr.0.i.i = load i32, ptr %size.addr.0.i.in.i, align 8
  %bytesused.i.i = getelementptr %struct.vb2_buffer, ptr %add.ptr.i, i32 0, i32 10, i32 %i.067.i, i32 3
  %27 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %for.body.i.vb2_set_plane_payload.exit.i_crit_edge
  %inc.i = add nuw i32 %i.067.i, 1
  %28 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_planes.i, align 8
  %cmp27.i = icmp ult i32 %inc.i, %29
  br i1 %cmp27.i, label %vb2_set_plane_payload.exit.i.for.body.i_crit_edge, label %vb2_set_plane_payload.exit.i.vsp1_video_complete_buffer.exit_crit_edge

vb2_set_plane_payload.exit.i.vsp1_video_complete_buffer.exit_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_complete_buffer.exit

vb2_set_plane_payload.exit.i.for.body.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

vsp1_video_complete_buffer.exit:                  ; preds = %vb2_set_plane_payload.exit.i.vsp1_video_complete_buffer.exit_crit_edge, %list_del.exit.i.vsp1_video_complete_buffer.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 5) #10
  %cmp = icmp eq ptr %spec.select.i, null
  br i1 %cmp, label %vsp1_video_complete_buffer.exit.cleanup_crit_edge, label %if.end

vsp1_video_complete_buffer.exit.cleanup_crit_edge: ; preds = %vsp1_video_complete_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %vsp1_video_complete_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %rwpf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rwpf.i, align 4
  %mem = getelementptr inbounds %struct.vsp1_rwpf, ptr %31, i32 0, i32 12
  %mem3 = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %spec.select.i, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %mem, ptr %mem3, i32 12)
  %pipe_index = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %pipe_index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pipe_index, align 8
  %shl = shl nuw i32 1, %34
  %buffers_ready = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 8
  %35 = ptrtoint ptr %buffers_ready to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffers_ready, align 4
  %or = or i32 %36, %shl
  store i32 %or, ptr %buffers_ready, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vsp1_video_complete_buffer.exit.cleanup_crit_edge, %vsp1_video_complete_buffer.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_enum_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_enum_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %rwpf = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rwpf, align 4
  %4 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %num_planes12 = getelementptr inbounds %struct.vsp1_rwpf, ptr %3, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %num_planes12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_planes12, align 1
  %conv13 = zext i8 %7 to i32
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv13)
  %cmp.not = icmp eq i32 %5, %conv13
  br i1 %cmp.not, label %if.then.for.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.046
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.vsp1_rwpf, ptr %3, i32 0, i32 5, i32 5, i32 %i.046
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7 = icmp ult i32 %9, %11
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %12 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv13, ptr %nplanes, align 4
  %13 = ptrtoint ptr %num_planes12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_planes12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp1749.not = icmp eq i8 %14, 0
  br i1 %cmp1749.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body19_crit_edge

if.end11.for.body19_crit_edge:                    ; preds = %if.end11
  br label %for.body19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.end11.for.body19_crit_edge
  %i.150 = phi i32 [ %inc25, %for.body19.for.body19_crit_edge ], [ 0, %if.end11.for.body19_crit_edge ]
  %arrayidx21 = getelementptr %struct.vsp1_rwpf, ptr %3, i32 0, i32 5, i32 5, i32 %i.150
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr i32, ptr %sizes, i32 %i.150
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx23, align 4
  %inc25 = add nuw nsw i32 %i.150, 1
  %18 = ptrtoint ptr %num_planes12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_planes12, align 1
  %conv16 = zext i8 %19 to i32
  %cmp17 = icmp ult i32 %inc25, %conv16
  br i1 %cmp17, label %for.body19.for.body19_crit_edge, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %for.body19.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %rwpf = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rwpf, align 4
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes, align 8
  %num_planes3 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 5, i32 6
  %8 = ptrtoint ptr %num_planes3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_planes3, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ult i32 %7, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp646.not = icmp eq i32 %11, 0
  br i1 %cmp646.not, label %for.cond.preheader.for.body18.lr.ph_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.body18.lr.ph_crit_edge:    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mem = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %vb, i32 0, i32 2
  br label %for.body

for.cond15.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.047)
  %cmp1649 = icmp ult i32 %i.047, 2
  br i1 %cmp1649, label %for.cond15.preheader.for.body18.lr.ph_crit_edge, label %for.cond15.preheader.cleanup_crit_edge

for.cond15.preheader.cleanup_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond15.preheader.for.body18.lr.ph_crit_edge:  ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.lr.ph

for.body18.lr.ph:                                 ; preds = %for.cond15.preheader.for.body18.lr.ph_crit_edge, %for.cond.preheader.for.body18.lr.ph_crit_edge
  %i.0.lcssa54 = phi i32 [ %inc, %for.cond15.preheader.for.body18.lr.ph_crit_edge ], [ 0, %for.cond.preheader.for.body18.lr.ph_crit_edge ]
  %12 = shl nuw nsw i32 %i.0.lcssa54, 2
  %13 = add nuw nsw i32 %12, 744
  %uglygep = getelementptr i8, ptr %vb, i32 %13
  %14 = sub nuw nsw i32 12, %12
  %15 = call ptr @memset(ptr %uglygep, i32 0, i32 %14)
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef %i.047) #10
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i, align 4
  %arrayidx = getelementptr [3 x i32], ptr %mem, i32 0, i32 %i.047
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %i.047)
  %cmp.i = icmp ugt i32 %20, %i.047
  br i1 %cmp.i, label %if.then.i, label %for.body.vb2_plane_size.exit_crit_edge

for.body.vb2_plane_size.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.047, i32 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %for.body.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %22, %if.then.i ], [ 0, %for.body.vb2_plane_size.exit_crit_edge ]
  %arrayidx10 = getelementptr %struct.vsp1_rwpf, ptr %5, i32 0, i32 5, i32 5, i32 %i.047
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %24)
  %cmp11 = icmp ult i32 %retval.0.i, %24
  br i1 %cmp11, label %vb2_plane_size.exit.cleanup_crit_edge, label %for.inc

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %vb2_plane_size.exit
  %inc = add nuw i32 %i.047, 1
  %25 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes, align 8
  %cmp6 = icmp ult i32 %inc, %26
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.cond15.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %vb2_plane_size.exit.cleanup_crit_edge, %for.body18.lr.ph, %for.cond15.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond15.preheader.cleanup_crit_edge ], [ 0, %for.body18.lr.ph ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsp1_video_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  %window.i.i.i = alloca %struct.vsp1_partition_window, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %rwpf = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rwpf, align 4
  %pipe1 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe1, align 4
  %lock = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %stream_count = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream_count, align 4
  %num_inputs = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then, label %if.then9.critedge

if.then:                                          ; preds = %entry
  %output.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %output.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %config.i.i = getelementptr inbounds %struct.vsp1_entity, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i.i, align 4
  %call.i.i = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %11, ptr noundef %15, i32 noundef 0) #10
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.vsp1_device, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.i.i, align 4
  %gen.i.i = getelementptr inbounds %struct.vsp1_device_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.if.end23.i.i_crit_edge

if.then.if.end23.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

if.then.i.i:                                      ; preds = %if.then
  %entities.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 19
  %22 = ptrtoint ptr %entities.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn72.i.i = load ptr, ptr %entities.i.i, align 4
  %cmp8.not74.i.i = icmp eq ptr %.pn72.i.i, %entities.i.i
  br i1 %cmp8.not74.i.i, label %if.then.i.i.if.end23.i.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.if.end23.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %.pn76.i.i = phi ptr [ %.pn.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %.pn72.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %div_size.075.i.i = phi i32 [ %div_size.2.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ %17, %if.then.i.i.for.body.i.i_crit_edge ]
  %ops.i.i = getelementptr i8, ptr %.pn76.i.i, i32 -28
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %max_width.i.i = getelementptr inbounds %struct.vsp1_entity_operations, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %max_width.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %max_width.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %entity2.077.i.i = getelementptr i8, ptr %.pn76.i.i, i32 -32
  %call12.i.i = tail call i32 %26(ptr noundef %entity2.077.i.i, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  %27 = tail call i32 @llvm.umin.i32(i32 %div_size.075.i.i, i32 %call12.i.i) #10
  %div_size.1.i.i = select i1 %tobool13.not.i.i, i32 %div_size.075.i.i, i32 %27
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %div_size.2.i.i = phi i32 [ %div_size.1.i.i, %if.end.i.i ], [ %div_size.075.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  %28 = ptrtoint ptr %.pn76.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i.i = load ptr, ptr %.pn76.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %.pn.i.i, %entities.i.i
  br i1 %cmp8.not.i.i, label %cleanup.i.i.if.end23.i.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

cleanup.i.i.if.end23.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %cleanup.i.i.if.end23.i.i_crit_edge, %if.then.i.i.if.end23.i.i_crit_edge, %if.then.if.end23.i.i_crit_edge
  %div_size.3.i.i = phi i32 [ %17, %if.then.if.end23.i.i_crit_edge ], [ %17, %if.then.i.i.if.end23.i.i_crit_edge ], [ %div_size.2.i.i, %cleanup.i.i.if.end23.i.i_crit_edge ]
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i.i, align 4
  %add.i.i = add i32 %div_size.3.i.i, -1
  %sub.i.i = add i32 %add.i.i, %30
  %div.i.i = udiv i32 %sub.i.i, %div_size.3.i.i
  %partitions.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 23
  %31 = ptrtoint ptr %partitions.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div.i.i, ptr %partitions.i.i, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div.i.i, i32 40) #10
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !73

kcalloc.exit.thread.i.i:                          ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %part_table70.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 25
  %34 = ptrtoint ptr %part_table70.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %part_table70.i.i, align 4
  br label %if.then4

if.end7.i.i.i.i:                                  ; preds = %if.end23.i.i
  %35 = extractvalue { i32, i1 } %32, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #15
  %part_table.i.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 25
  %36 = ptrtoint ptr %part_table.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8.i.i.i.i, ptr %part_table.i.i, align 4
  %tobool28.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool28.not.i.i, label %if.end7.i.i.i.i.if.then4_crit_edge, label %for.cond31.preheader.i.i

if.end7.i.i.i.i.if.then4_crit_edge:               ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

for.cond31.preheader.i.i:                         ; preds = %if.end7.i.i.i.i
  %37 = ptrtoint ptr %partitions.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %partitions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp3378.not.i.i = icmp eq i32 %38, 0
  br i1 %cmp3378.not.i.i, label %for.cond31.preheader.i.i.if.end.i_crit_edge, label %for.body34.lr.ph.i.i

for.cond31.preheader.i.i.if.end.i_crit_edge:      ; preds = %for.cond31.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body34.lr.ph.i.i:                             ; preds = %for.cond31.preheader.i.i
  %39 = getelementptr inbounds %struct.vsp1_partition_window, ptr %window.i.i.i, i32 0, i32 1
  %div58.i.i.i = lshr i32 %div_size.3.i.i, 1
  br label %for.body34.i.i

for.body34.i.i:                                   ; preds = %vsp1_video_calculate_partition.exit.i.i.for.body34.i.i_crit_edge, %for.body34.lr.ph.i.i
  %i.079.i.i = phi i32 [ 0, %for.body34.lr.ph.i.i ], [ %inc.i.i, %vsp1_video_calculate_partition.exit.i.i.for.body34.i.i_crit_edge ]
  %40 = ptrtoint ptr %part_table.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %part_table.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.vsp1_partition, ptr %41, i32 %i.079.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %window.i.i.i) #10
  %42 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %output.i.i, align 4
  %config.i.i.i = getelementptr inbounds %struct.vsp1_entity, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i.i.i, align 4
  %call.i.i.i = call ptr @vsp1_entity_get_pad_format(ptr noundef %43, ptr noundef %45, i32 noundef 0) #10
  %46 = ptrtoint ptr %partitions.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %partitions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i.i.i = icmp ult i32 %47, 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %window.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %window.i.i.i, align 4
  %49 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i.i.i, align 4
  %51 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %39, align 4
  br label %vsp1_video_calculate_partition.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body34.i.i
  %mul.i.i.i = mul i32 %i.079.i.i, %div_size.3.i.i
  %52 = ptrtoint ptr %window.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul.i.i.i, ptr %window.i.i.i, align 4
  %53 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div_size.3.i.i, ptr %39, align 4
  %54 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call.i.i.i, align 4
  %rem.i.i.i = urem i32 %55, %div_size.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge, label %if.then7.i.i.i

if.end.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_calculate_partition.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  %sub.i.i.i = add i32 %47, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i.i, i32 %div58.i.i.i)
  %cmp10.i.i.i = icmp ult i32 %rem.i.i.i, %div58.i.i.i
  br i1 %cmp10.i.i.i, label %if.then11.i.i.i, label %if.else26.i.i.i

if.then11.i.i.i:                                  ; preds = %if.then7.i.i.i
  %sub12.i.i.i = add i32 %47, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i.i.i, i32 %i.079.i.i)
  %cmp13.i.i.i = icmp eq i32 %sub12.i.i.i, %i.079.i.i
  br i1 %cmp13.i.i.i, label %if.then14.i.i.i, label %if.else.i.i.i

if.then14.i.i.i:                                  ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div58.i.i.i, ptr %39, align 4
  br label %vsp1_video_calculate_partition.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %i.079.i.i)
  %cmp17.i.i.i = icmp eq i32 %sub.i.i.i, %i.079.i.i
  br i1 %cmp17.i.i.i, label %if.then18.i.i.i, label %if.else.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge

if.else.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_calculate_partition.exit.i.i

if.then18.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i.i = add i32 %rem.i.i.i, %div58.i.i.i
  %57 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i.i.i, ptr %39, align 4
  %sub23.i.i.i = sub i32 %mul.i.i.i, %div58.i.i.i
  %58 = ptrtoint ptr %window.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub23.i.i.i, ptr %window.i.i.i, align 4
  br label %vsp1_video_calculate_partition.exit.i.i

if.else26.i.i.i:                                  ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %i.079.i.i)
  %cmp27.i.i.i = icmp eq i32 %sub.i.i.i, %i.079.i.i
  br i1 %cmp27.i.i.i, label %if.then28.i.i.i, label %if.else26.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge

if.else26.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge: ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_calculate_partition.exit.i.i

if.then28.i.i.i:                                  ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %rem.i.i.i, ptr %39, align 4
  br label %vsp1_video_calculate_partition.exit.i.i

vsp1_video_calculate_partition.exit.i.i:          ; preds = %if.then28.i.i.i, %if.else26.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge, %if.then18.i.i.i, %if.else.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge, %if.then14.i.i.i, %if.end.i.i.i.vsp1_video_calculate_partition.exit.i.i_crit_edge, %if.then.i.i.i
  call void @vsp1_pipeline_propagate_partition(ptr noundef %5, ptr noundef %arrayidx.i.i, i32 noundef %i.079.i.i, ptr noundef nonnull %window.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %window.i.i.i) #10
  %inc.i.i = add nuw i32 %i.079.i.i, 1
  %60 = ptrtoint ptr %partitions.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %partitions.i.i, align 4
  %cmp33.i.i = icmp ult i32 %inc.i.i, %61
  br i1 %cmp33.i.i, label %vsp1_video_calculate_partition.exit.i.i.for.body34.i.i_crit_edge, label %vsp1_video_calculate_partition.exit.i.i.if.end.i_crit_edge

vsp1_video_calculate_partition.exit.i.i.if.end.i_crit_edge: ; preds = %vsp1_video_calculate_partition.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

vsp1_video_calculate_partition.exit.i.i.for.body34.i.i_crit_edge: ; preds = %vsp1_video_calculate_partition.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34.i.i

if.end.i:                                         ; preds = %vsp1_video_calculate_partition.exit.i.i.if.end.i_crit_edge, %for.cond31.preheader.i.i.if.end.i_crit_edge
  %uds.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 17
  %62 = ptrtoint ptr %uds.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %uds.i, align 4
  %tobool.not.i = icmp eq ptr %63, null
  br i1 %tobool.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then1.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then1.i:                                       ; preds = %if.end.i
  %uds_input.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 18
  %64 = ptrtoint ptr %uds_input.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %uds_input.i, align 4
  %type.i = getelementptr inbounds %struct.vsp1_entity, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %switch.i = icmp ult i32 %67, 2
  br i1 %switch.i, label %if.then1.i.if.end16.sink.split.i_crit_edge, label %if.else.i

if.then1.i.if.end16.sink.split.i_crit_edge:       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  %fmtinfo.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %fmtinfo.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fmtinfo.i, align 4
  %alpha.i = getelementptr inbounds %struct.vsp1_format_info, ptr %69, i32 0, i32 10
  %70 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %alpha.i, align 4, !range !69
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %if.else.i, %if.then1.i.if.end16.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %71, %if.else.i ], [ 0, %if.then1.i.if.end16.sink.split.i_crit_edge ]
  %scale_alpha.i = getelementptr inbounds %struct.vsp1_uds, ptr %63, i32 0, i32 1
  %72 = ptrtoint ptr %scale_alpha.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink.i, ptr %scale_alpha.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %if.end.i.if.end16.i_crit_edge
  %73 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %output.i.i, align 4
  %dlm.i = getelementptr inbounds %struct.vsp1_rwpf, ptr %74, i32 0, i32 14
  %75 = ptrtoint ptr %dlm.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dlm.i, align 4
  %call17.i = call ptr @vsp1_dlm_dl_body_get(ptr noundef %76) #10
  %stream_config.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 20
  %77 = ptrtoint ptr %stream_config.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call17.i, ptr %stream_config.i, align 4
  %tobool19.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool19.not.i, label %if.end16.i.if.then4_crit_edge, label %if.end21.i

if.end16.i.if.then4_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.end21.i:                                       ; preds = %if.end16.i
  %entities.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 19
  %78 = ptrtoint ptr %entities.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn55.i = load ptr, ptr %entities.i, align 4
  %cmp23.not56.i = icmp eq ptr %.pn55.i, %entities.i
  br i1 %cmp23.not56.i, label %if.end21.i.do.body11.critedge_crit_edge, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  br label %for.body.i

if.end21.i.do.body11.critedge_crit_edge:          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.critedge

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end21.i.for.body.i_crit_edge
  %.pn57.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn55.i, %if.end21.i.for.body.i_crit_edge ]
  %entity.0.i = getelementptr i8, ptr %.pn57.i, i32 -32
  %79 = ptrtoint ptr %stream_config.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %stream_config.i, align 4
  call void @vsp1_entity_route_setup(ptr noundef %entity.0.i, ptr noundef %5, ptr noundef %80) #10
  %81 = ptrtoint ptr %stream_config.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stream_config.i, align 4
  call void @vsp1_entity_configure_stream(ptr noundef %entity.0.i, ptr noundef %5, ptr noundef null, ptr noundef %82) #10
  %83 = ptrtoint ptr %.pn57.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn.i = load ptr, ptr %.pn57.i, align 4
  %cmp23.not.i = icmp eq ptr %.pn.i, %entities.i
  br i1 %cmp23.not.i, label %for.body.i.do.body11.critedge_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.do.body11.critedge_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body11.critedge

if.then4:                                         ; preds = %if.end16.i.if.then4_crit_edge, %if.end7.i.i.i.i.if.then4_crit_edge, %kcalloc.exit.thread.i.i
  %irqlock.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 9
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #10
  %irqqueue.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 10
  %84 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn22.i = load ptr, ptr %irqqueue.i, align 8
  %cmp7.not23.i = icmp eq ptr %.pn22.i, %irqqueue.i
  br i1 %cmp7.not23.i, label %if.then4.vsp1_video_release_buffers.exit_crit_edge, label %if.then4.for.body.i40_crit_edge

if.then4.for.body.i40_crit_edge:                  ; preds = %if.then4
  br label %for.body.i40

if.then4.vsp1_video_release_buffers.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_release_buffers.exit

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %if.then4.for.body.i40_crit_edge
  %.pn24.i = phi ptr [ %.pn.i39, %for.body.i40.for.body.i40_crit_edge ], [ %.pn22.i, %if.then4.for.body.i40_crit_edge ]
  %buffer.0.i = getelementptr i8, ptr %.pn24.i, i32 -736
  call void @vb2_buffer_done(ptr noundef %buffer.0.i, i32 noundef 6) #10
  %85 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn.i39 = load ptr, ptr %.pn24.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i39, %irqqueue.i
  br i1 %cmp7.not.i, label %for.body.i40.vsp1_video_release_buffers.exit_crit_edge, label %for.body.i40.for.body.i40_crit_edge

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i40

for.body.i40.vsp1_video_release_buffers.exit_crit_edge: ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_release_buffers.exit

vsp1_video_release_buffers.exit:                  ; preds = %for.body.i40.vsp1_video_release_buffers.exit_crit_edge, %if.then4.vsp1_video_release_buffers.exit_crit_edge
  %86 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %irqqueue.i, ptr %irqqueue.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 10, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %irqqueue.i, ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call2.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %88 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i41 = icmp eq i32 %88, 0
  br i1 %tobool.not.i41, label %vsp1_video_release_buffers.exit.vsp1_video_cleanup_pipeline.exit_crit_edge, label %land.rhs.i

vsp1_video_release_buffers.exit.vsp1_video_cleanup_pipeline.exit_crit_edge: ; preds = %vsp1_video_release_buffers.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_cleanup_pipeline.exit

land.rhs.i:                                       ; preds = %vsp1_video_release_buffers.exit
  %dep_map.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 5, i32 5
  %call.i.i42 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp.not.i = icmp eq i32 %call.i.i42, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.vsp1_video_cleanup_pipeline.exit_crit_edge, !prof !73

land.rhs.i.vsp1_video_cleanup_pipeline.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_cleanup_pipeline.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 850, i32 noundef 9, ptr noundef null) #10
  br label %vsp1_video_cleanup_pipeline.exit

vsp1_video_cleanup_pipeline.exit:                 ; preds = %do.end.i, %land.rhs.i.vsp1_video_cleanup_pipeline.exit_crit_edge, %vsp1_video_release_buffers.exit.vsp1_video_cleanup_pipeline.exit_crit_edge
  %stream_config.i43 = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 20
  %89 = ptrtoint ptr %stream_config.i43 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %stream_config.i43, align 4
  call void @vsp1_dl_body_put(ptr noundef %90) #10
  %91 = ptrtoint ptr %stream_config.i43 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %stream_config.i43, align 4
  %configured.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 21
  %92 = ptrtoint ptr %configured.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %configured.i, align 4
  %part_table.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 25
  %93 = ptrtoint ptr %part_table.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %part_table.i, align 4
  call void @kfree(ptr noundef %94) #10
  %95 = ptrtoint ptr %part_table.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %part_table.i, align 4
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.then9.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %inc.c38 = add i32 %7, 1
  %96 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %inc.c38, ptr %stream_count, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

do.body11.critedge:                               ; preds = %for.body.i.do.body11.critedge_crit_edge, %if.end21.i.do.body11.critedge_crit_edge
  %97 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %stream_count, align 4
  %inc.c = add i32 %98, 1
  store i32 %inc.c, ptr %stream_count, align 4
  call void @mutex_unlock(ptr noundef %lock) #10
  %irqlock = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 1
  %call14 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %call17 = call zeroext i1 @vsp1_pipeline_ready(ptr noundef %5) #10
  br i1 %call17, label %if.then18, label %do.body11.critedge.if.end19_crit_edge

do.body11.critedge.if.end19_crit_edge:            ; preds = %do.body11.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %do.body11.critedge
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @vsp1_video_pipeline_run(ptr noundef %5)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.body11.critedge.if.end19_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then9.critedge, %vsp1_video_cleanup_pipeline.exit
  %retval.0 = phi i32 [ -12, %vsp1_video_cleanup_pipeline.exit ], [ 0, %if.end19 ], [ 0, %if.then9.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsp1_video_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %rwpf = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rwpf, align 4
  %pipe1 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe1, align 4
  %irqlock = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %pipe_index = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %pipe_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_index, align 8
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %buffers_ready = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %buffers_ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffers_ready, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %buffers_ready, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call4) #10
  %lock = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %stream_count = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %stream_count, align 4
  %num_inputs = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %num_inputs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %13)
  %cmp8 = icmp eq i32 %dec, %13
  br i1 %cmp8, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %entry
  %call10 = tail call i32 @vsp1_pipeline_stop(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call10)
  %cmp11 = icmp eq i32 %call10, -110
  br i1 %cmp11, label %do.end16, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %vsp1 = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsp1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.23) #13
  br label %if.end

if.end:                                           ; preds = %do.end16, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end.vsp1_video_cleanup_pipeline.exit_crit_edge, label %land.rhs.i

if.end.vsp1_video_cleanup_pipeline.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_cleanup_pipeline.exit

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 5, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.vsp1_video_cleanup_pipeline.exit_crit_edge, !prof !73

land.rhs.i.vsp1_video_cleanup_pipeline.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_cleanup_pipeline.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 850, i32 noundef 9, ptr noundef null) #10
  br label %vsp1_video_cleanup_pipeline.exit

vsp1_video_cleanup_pipeline.exit:                 ; preds = %do.end.i, %land.rhs.i.vsp1_video_cleanup_pipeline.exit_crit_edge, %if.end.vsp1_video_cleanup_pipeline.exit_crit_edge
  %stream_config.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 20
  %19 = ptrtoint ptr %stream_config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stream_config.i, align 4
  tail call void @vsp1_dl_body_put(ptr noundef %20) #10
  %21 = ptrtoint ptr %stream_config.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %stream_config.i, align 4
  %configured.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 21
  %22 = ptrtoint ptr %configured.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %configured.i, align 4
  %part_table.i = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 25
  %23 = ptrtoint ptr %part_table.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part_table.i, align 4
  tail call void @kfree(ptr noundef %24) #10
  %25 = ptrtoint ptr %part_table.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %part_table.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %vsp1_video_cleanup_pipeline.exit, %entry.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %video19 = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 3
  tail call void @media_pipeline_stop(ptr noundef %video19) #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %irqqueue.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn22.i = load ptr, ptr %irqqueue.i, align 8
  %cmp7.not23.i = icmp eq ptr %.pn22.i, %irqqueue.i
  br i1 %cmp7.not23.i, label %if.end17.vsp1_video_release_buffers.exit_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.vsp1_video_release_buffers.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_release_buffers.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn22.i, %if.end17.for.body.i_crit_edge ]
  %buffer.0.i = getelementptr i8, ptr %.pn24.i, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %buffer.0.i, i32 noundef 6) #10
  %27 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn24.i, align 8
  %cmp7.not.i = icmp eq ptr %.pn.i, %irqqueue.i
  br i1 %cmp7.not.i, label %for.body.i.vsp1_video_release_buffers.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.vsp1_video_release_buffers.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vsp1_video_release_buffers.exit

vsp1_video_release_buffers.exit:                  ; preds = %for.body.i.vsp1_video_release_buffers.exit_crit_edge, %if.end17.vsp1_video_release_buffers.exit_crit_edge
  %28 = ptrtoint ptr %irqqueue.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %irqqueue.i, ptr %irqqueue.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vsp1_video, ptr %1, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %irqqueue.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2.i) #10
  tail call fastcc void @vsp1_video_pipeline_put(ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsp1_video_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %rwpf = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rwpf, align 4
  %pipe1 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe1, align 4
  %irqlock = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 9
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %irqqueue = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %irqqueue, align 4
  %cmp.i.not = icmp eq ptr %9, %irqqueue
  %queue = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %11, ptr noundef %irqqueue) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %queue, ptr %prev.i, align 4
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %irqqueue, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %vb, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %queue, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call6) #10
  br i1 %cmp.i.not, label %do.body14, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body14:                                        ; preds = %list_add_tail.exit
  %irqlock20 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 1
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock20) #10
  %16 = ptrtoint ptr %rwpf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rwpf, align 4
  %mem = getelementptr inbounds %struct.vsp1_rwpf, ptr %17, i32 0, i32 12
  %mem28 = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %vb, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %mem, ptr %mem28, i32 12)
  %pipe_index = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %pipe_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe_index, align 8
  %shl = shl nuw i32 1, %20
  %buffers_ready = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 8
  %21 = ptrtoint ptr %buffers_ready to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffers_ready, align 4
  %or = or i32 %22, %shl
  store i32 %or, ptr %buffers_ready, align 4
  %streaming.i = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 8, i32 28
  %23 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true, label %do.body14.if.end35_crit_edge

do.body14.if.end35_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %do.body14
  %call32 = tail call zeroext i1 @vsp1_pipeline_ready(ptr noundef %7) #10
  br i1 %call32, label %if.then34, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @vsp1_video_pipeline_run(ptr noundef %7)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true.if.end35_crit_edge, %do.body14.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock20, i32 noundef %call22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %list_add_tail.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dlm_dl_body_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_route_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_stream(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_propagate_partition(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1202, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1205, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vsp1_video_suspend._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @vsp1_video_suspend._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1261, i32 15}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1268, i32 15}
!13 = !{ptr @vsp1_video_create.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1276, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vsp1_video_create.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1277, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1294, i32 57}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1313, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vsp1_video_create._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @vsp1_video_create._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1321, i32 3}
!29 = !{ptr @vsp1_video_create._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @vsp1_video_create._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 415, i32 4}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vsp1_video_pipeline_run._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @vsp1_video_pipeline_run._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__vsp1_video_try_format.xrgb_formats, !37, !"xrgb_formats", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 90, i32 19}
!38 = !{ptr @vsp1_video_fops, !39, !"vsp1_video_fops", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1150, i32 42}
!40 = !{ptr @vsp1_video_ioctl_ops, !41, !"vsp1_video_ioctl_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 1081, i32 36}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 960, i32 23}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 962, i32 49}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 439, i32 2}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!50 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/media/media-entity.h", i32 519, i32 6}
!53 = !{ptr @vsp1_video_queue_qops, !54, !"vsp1_video_queue_qops", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 935, i32 29}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/vsp1/vsp1_video.c", i32 924, i32 4}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vsp1_video_stop_streaming._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @vsp1_video_stop_streaming._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{!"auto-init"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2148374673, i64 2148374705, i64 2148374734, i64 2148374768, i64 2148374799, i64 2148374822}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2148462698}
!75 = !{i64 2148377138, i64 2148377170, i64 2148377199, i64 2148377233, i64 2148377264, i64 2148377287}
!76 = !{i64 2149338812}
