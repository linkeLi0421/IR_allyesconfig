; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_histo.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_histo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.84 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.81], %struct.media_entity_enum, i32 }
%struct.anon.81 = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.80, i32 }
%union.anon.80 = type { i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.114, i16, i16, i16, [10 x i16] }
%union.anon.114 = type { i16 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
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
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.vsp1_histogram_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@vsp1_histogram_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&histo->lock\00", [19 x i8] zeroinitializer }, align 32
@vsp1_histogram_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&histo->irqlock\00", [16 x i8] zeroinitializer }, align 32
@vsp1_histogram_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&histo->wait_queue\00", [45 x i8] zeroinitializer }, align 32
@histo_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_pad_ops }, [32 x i8] zeroinitializer }, align 32
@histo_v4l2_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s histo\00", [23 x i8] zeroinitializer }, align 32
@histo_v4l2_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @histo_v4l2_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_enum_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_get_format, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@histo_video_queue_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @histo_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @histo_buffer_prepare, ptr null, ptr null, ptr @histo_start_streaming, ptr @histo_stop_streaming, ptr @histo_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vsp1_histogram_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 578, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize vb2 queue\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vsp1_histogram_init\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/vsp1/vsp1_histo.c\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_histogram_init._entry_ptr = internal global ptr @vsp1_histogram_init._entry, section ".printk_index", align 4
@vsp1_histogram_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 586, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@vsp1_histogram_init._entry_ptr.13 = internal global ptr @vsp1_histogram_init._entry.11, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@histo_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @histo_enum_mbus_code, ptr @histo_enum_frame_size, ptr null, ptr @histo_get_format, ptr @histo_set_format, ptr @histo_get_selection, ptr @histo_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsp1\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 535, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 536, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 538, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"histo_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 416, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"histo_v4l2_fops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 495, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 558, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"histo_v4l2_ioctl_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 475, i32 36 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"histo_video_queue_qops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 158, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 578, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 586, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1163, i32 7 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"histo_pad_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 407, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 435, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [44 x i8] c"../drivers/media/platform/vsp1/vsp1_histo.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 437, i32 49 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @vsp1_histogram_init._entry, ptr @vsp1_histogram_init._entry.11, ptr @vsp1_histogram_init._entry_ptr, ptr @vsp1_histogram_init._entry_ptr.13, ptr @vsp1_histogram_init.__key, ptr @.str, ptr @vsp1_histogram_init.__key.1, ptr @.str.2, ptr @vsp1_histogram_init.__key.3, ptr @.str.4, ptr @histo_ops, ptr @histo_v4l2_fops, ptr @.str.5, ptr @histo_v4l2_ioctl_ops, ptr @histo_video_queue_qops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @histo_pad_ops, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_histogram_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_histogram_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_histogram_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histo_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histo_v4l2_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histo_v4l2_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histo_video_queue_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_histogram_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_histogram_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histo_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_histogram_buffer_get(ptr noundef %histo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  %irqqueue = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 10
  %0 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %irqqueue, align 4
  %cmp.i.not = icmp eq ptr %1, %irqqueue
  br i1 %cmp.i.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %readout = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 12
  %10 = ptrtoint ptr %readout to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %readout, align 4
  br label %done

done:                                             ; preds = %list_del.exit, %entry.done_crit_edge
  %buf.0 = phi ptr [ null, %entry.done_crit_edge ], [ %add.ptr, %list_del.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #8
  ret ptr %buf.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_histogram_buffer_complete(ptr noundef %histo, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.vsp1_entity, ptr %histo, i32 0, i32 5
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %sequence = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence, align 4
  %sequence3 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %buf, i32 0, i32 4
  %4 = ptrtoint ptr %sequence3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %sequence3, align 8
  %call.i = tail call i64 @ktime_get() #8
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 5
  %5 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i, ptr %timestamp, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %entry.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_set_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %size)
  %cmp1.i = icmp ult i32 %9, %size
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !49

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %11, %if.then38.i ], [ %size, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %buf, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %entry.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %buf, i32 noundef 5) #8
  %irqlock = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 9
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  %readout = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 12
  %13 = ptrtoint ptr %readout to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %readout, align 4
  %wait_queue = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call11) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_histogram_destroy(ptr noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.vsp1_histogram, ptr %entity, i32 0, i32 1, i32 17
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %entry.vsp1_histogram_cleanup.exit_crit_edge, label %if.then.i

entry.vsp1_histogram_cleanup.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_histogram_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %video.i = getelementptr inbounds %struct.vsp1_histogram, ptr %entity, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %video.i) #8
  br label %vsp1_histogram_cleanup.exit

vsp1_histogram_cleanup.exit:                      ; preds = %if.then.i, %entry.vsp1_histogram_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_histogram_init(ptr noundef %vsp1, ptr noundef %histo, i32 noundef %type, ptr noundef %name, ptr noundef %ops, ptr noundef %formats, i32 noundef %num_formats, i32 noundef %data_size, i32 noundef %meta_format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %formats1 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 3
  %0 = ptrtoint ptr %formats1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %formats, ptr %formats1, align 8
  %num_formats2 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 4
  %1 = ptrtoint ptr %num_formats2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %num_formats, ptr %num_formats2, align 4
  %data_size3 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 5
  %2 = ptrtoint ptr %data_size3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %data_size, ptr %data_size3, align 8
  %meta_format4 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 6
  %3 = ptrtoint ptr %meta_format4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %meta_format, ptr %meta_format4, align 4
  %flags = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %flags, align 4
  %video = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1
  %vfl_dir = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 14
  %5 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %vfl_dir, align 4
  %lock = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_histogram_init.__key) #8
  %irqlock = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.2, ptr noundef nonnull @vsp1_histogram_init.__key.1, i16 noundef signext 3) #8
  %irqqueue = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 10
  %6 = ptrtoint ptr %irqqueue to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %irqqueue, ptr %irqqueue, align 4
  %prev.i = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %irqqueue, ptr %prev.i, align 4
  %wait_queue = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.4, ptr noundef nonnull @vsp1_histogram_init.__key.3) #8
  %ops11 = getelementptr inbounds %struct.vsp1_entity, ptr %histo, i32 0, i32 1
  %8 = ptrtoint ptr %ops11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ops, ptr %ops11, align 4
  %type13 = getelementptr inbounds %struct.vsp1_entity, ptr %histo, i32 0, i32 2
  %9 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %type13, align 8
  %call15 = tail call i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef %histo, ptr noundef %name, i32 noundef 2, ptr noundef nonnull @histo_ops, i32 noundef 16390) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 2
  %call19 = tail call i32 @media_entity_pads_init(ptr noundef %video, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end.cleanup_crit_edge, label %if.end22

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %v4l2_dev = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 22
  %v4l2_dev24 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %v4l2_dev24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %v4l2_dev, ptr %v4l2_dev24, align 4
  %fops = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @histo_v4l2_fops, ptr %fops, align 4
  %name27 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 12
  %name29 = getelementptr inbounds %struct.vsp1_entity, ptr %histo, i32 0, i32 13, i32 9
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name27, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %name29)
  %vfl_type = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 13
  %12 = ptrtoint ptr %vfl_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %vfl_type, align 8
  %release = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 23
  %13 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @video_device_release_empty, ptr %release, align 8
  %ioctl_ops = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 24
  %14 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @histo_v4l2_ioctl_ops, ptr %ioctl_ops, align 4
  %device_caps = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 75497472, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 5, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %histo, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 13, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 19, ptr %io_modes, align 4
  %lock41 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 5
  %19 = ptrtoint ptr %lock41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lock, ptr %lock41, align 4
  %drv_priv = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 10
  %20 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %histo, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 12
  %21 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 752, ptr %buf_struct_size, align 4
  %ops45 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 7
  %22 = ptrtoint ptr %ops45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @histo_video_queue_qops, ptr %ops45, align 4
  %mem_ops = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 8
  %23 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 13
  %24 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16384, ptr %timestamp_flags, align 4
  %25 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vsp1, align 8
  %dev49 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 8, i32 2
  %27 = ptrtoint ptr %dev49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev49, align 4
  %call51 = tail call i32 @vb2_queue_init(ptr noundef %queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end22.error_crit_edge, label %if.end58

if.end22.error_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end58:                                         ; preds = %if.end22
  %queue61 = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 10
  %28 = ptrtoint ptr %queue61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queue, ptr %queue61, align 8
  %29 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %video, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp64 = icmp slt i32 %call.i, 0
  br i1 %cmp64, label %if.end58.error_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58.error_crit_edge:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.end58.error_crit_edge, %if.end22.error_crit_edge
  %.str.12.sink = phi ptr [ @.str.6, %if.end22.error_crit_edge ], [ @.str.12, %if.end58.error_crit_edge ]
  %ret.0 = phi i32 [ %call51, %if.end22.error_crit_edge ], [ %call.i, %if.end58.error_crit_edge ]
  %33 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vsp1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull %.str.12.sink) #11
  %flags.i.i = getelementptr inbounds %struct.vsp1_histogram, ptr %histo, i32 0, i32 1, i32 17
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %error.cleanup_crit_edge, label %if.then.i

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @video_unregister_device(ptr noundef %video) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %error.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %entry.cleanup_crit_edge ], [ %call19, %if.end.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ %ret.0, %error.cleanup_crit_edge ], [ %ret.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histo_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %2 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %code1, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %formats = getelementptr i8, ptr %subdev, i32 1676
  %3 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %formats, align 8
  %num_formats = getelementptr i8, ptr %subdev, i32 1680
  %5 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_formats, align 4
  %call2 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code, ptr noundef %4, i32 noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histo_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fse, i32 noundef 4, i32 noundef 4, i32 noundef 8192, i32 noundef 8192) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histo_get_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %code, align 4
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 11, ptr %colorspace, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @vsp1_subdev_get_pad_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fmt) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histo_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end.i [
    i32 0, label %if.end
    i32 1, label %if.then.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %code.i, align 4
  %4 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %format.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 11, ptr %colorspace.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @vsp1_subdev_get_pad_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fmt) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %formats = getelementptr i8, ptr %subdev, i32 1676
  %8 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %formats, align 8
  %num_formats = getelementptr i8, ptr %subdev, i32 1680
  %10 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_formats, align 4
  %call2 = tail call i32 @vsp1_subdev_set_pad_format(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %fmt, ptr noundef %9, i32 noundef %11, i32 noundef 4, i32 noundef 4, i32 noundef 8192, i32 noundef 8192) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %if.then.i ], [ %call.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histo_get_selection(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %call2 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %3) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end4

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end4:                                          ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %5, label %if.end4.done_crit_edge [
    i32 258, label %if.end4.sw.bb_crit_edge
    i32 257, label %if.end4.sw.bb_crit_edge60
    i32 2, label %if.end4.sw.bb12_crit_edge
    i32 1, label %if.end4.sw.bb12_crit_edge61
    i32 256, label %if.end4.sw.bb25_crit_edge
    i32 0, label %if.end4.sw.bb25_crit_edge62
  ]

if.end4.sw.bb25_crit_edge62:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end4.sw.bb25_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.end4.sw.bb12_crit_edge61:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

if.end4.sw.bb12_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

if.end4.sw.bb_crit_edge60:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge60
  %call6 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0) #8
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %call6, i32 0, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %width9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %width9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %width9, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %call6, i32 0, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %height11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height11, align 4
  br label %done

sw.bb12:                                          ; preds = %if.end4.sw.bb12_crit_edge, %if.end4.sw.bb12_crit_edge61
  %call14 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 0) #8
  %r15 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %15 = ptrtoint ptr %r15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %r15, align 4
  %top18 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %top18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %top18, align 4
  %17 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call14, align 4
  %width21 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %width21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width21, align 4
  %height22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call14, i32 0, i32 1
  %20 = ptrtoint ptr %height22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height22, align 4
  %height24 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %height24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height24, align 4
  br label %done

sw.bb25:                                          ; preds = %if.end4.sw.bb25_crit_edge, %if.end4.sw.bb25_crit_edge62
  %r26 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %23 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pad, align 4
  %call30 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %24, i32 noundef %5) #8
  %25 = call ptr @memcpy(ptr %r26, ptr %call30, i32 16)
  br label %done

done:                                             ; preds = %sw.bb25, %sw.bb12, %sw.bb, %if.end4.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb25 ], [ 0, %sw.bb12 ], [ 0, %sw.bb ], [ -22, %if.end.done_crit_edge ], [ -22, %if.end4.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histo_set_selection(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %call2 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %3) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end4

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end4:                                          ; preds = %if.end
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %5, label %if.end4.done_crit_edge [
    i32 0, label %if.then6
    i32 256, label %if.then10
  ]

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 0) #8
  %r.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %7 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r.i, align 4
  %9 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call1.i, align 4
  %sub.i = add i32 %10, -1
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %sub.i) #8
  %12 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %r.i, align 4
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %top.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call1.i, i32 0, i32 1
  %15 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height.i, align 4
  %sub17.i = add i32 %16, -1
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %sub17.i) #8
  %18 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %top.i, align 4
  %width27.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %width27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width27.i, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 4) #8
  %22 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call1.i, align 4
  %sub37.i = sub i32 %23, %11
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %sub37.i) #8
  %25 = ptrtoint ptr %width27.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %width27.i, align 4
  %height47.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %height47.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height47.i, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 4) #8
  %29 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height.i, align 4
  %sub57.i = sub i32 %30, %17
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %sub57.i) #8
  %32 = ptrtoint ptr %height47.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %height47.i, align 4
  %33 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pad, align 4
  %call67.i = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %34, i32 noundef 0) #8
  %35 = call ptr @memcpy(ptr %call67.i, ptr %r.i, i32 16)
  br label %done.sink.split

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %r.i31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %36 = ptrtoint ptr %r.i31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %r.i31, align 4
  %top.i32 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %top.i32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %top.i32, align 4
  %38 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pad, align 4
  %call2.i = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %39, i32 noundef 0) #8
  %width.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width.i, align 4
  %width4.i = getelementptr inbounds %struct.v4l2_rect, ptr %call2.i, i32 0, i32 2
  %42 = ptrtoint ptr %width4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width4.i, align 4
  %div1.i = lshr i32 %43, 2
  %44 = tail call i32 @llvm.umax.i32(i32 %41, i32 %div1.i) #8
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %43) #8
  %46 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %width.i, align 4
  %47 = ptrtoint ptr %width4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width4.i, align 4
  %mul.i = shl i32 %48, 1
  %div17.i = udiv i32 %mul.i, %45
  %div18.i = udiv i32 %div17.i, 3
  %div202.i = lshr i32 %48, %div18.i
  store i32 %div202.i, ptr %width.i, align 4
  %height.i34 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %height.i34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height.i34, align 4
  %height24.i = getelementptr inbounds %struct.v4l2_rect, ptr %call2.i, i32 0, i32 3
  %51 = ptrtoint ptr %height24.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height24.i, align 4
  %div253.i = lshr i32 %52, 2
  %53 = tail call i32 @llvm.umax.i32(i32 %50, i32 %div253.i) #8
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 %52) #8
  %55 = ptrtoint ptr %height.i34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %height.i34, align 4
  %56 = ptrtoint ptr %height24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height24.i, align 4
  %mul42.i = shl i32 %57, 1
  %div45.i = udiv i32 %mul42.i, %54
  %div46.i = udiv i32 %div45.i, 3
  %div494.i = lshr i32 %57, %div46.i
  store i32 %div494.i, ptr %height.i34, align 4
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.then10, %if.then6
  %r.i.sink = phi ptr [ %r.i, %if.then6 ], [ %r.i31, %if.then10 ]
  %58 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pad, align 4
  %call71.i = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %59, i32 noundef 256) #8
  %60 = call ptr @memcpy(ptr %call71.i, ptr %r.i.sink, i32 16)
  br label %done

done:                                             ; preds = %done.sink.split, %if.end4.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.done_crit_edge ], [ -22, %if.end4.done_crit_edge ], [ 0, %done.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_selection(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

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
define internal i32 @histo_v4l2_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -352
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2071973888, ptr %capabilities, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.15, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr i8, ptr %3, i32 1192
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @histo_v4l2_enum_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vdev = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %queue = getelementptr i8, ptr %3, i32 1492
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.not = icmp eq i32 %7, %9
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %meta_format = getelementptr i8, ptr %3, i32 1396
  %10 = ptrtoint ptr %meta_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %meta_format, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @histo_v4l2_get_format(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %format) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %queue = getelementptr i8, ptr %3, i32 1492
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %fmt, align 1
  %meta_format = getelementptr i8, ptr %3, i32 1396
  %9 = ptrtoint ptr %meta_format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %meta_format, align 4
  store i32 %10, ptr %fmt, align 1
  %data_size = getelementptr i8, ptr %3, i32 1392
  %11 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_size, align 8
  %buffersize = getelementptr inbounds %struct.v4l2_format, ptr %format, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %buffersize to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %buffersize, align 1
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
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @histo_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nplanes, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %if.end5
    i32 1, label %if.end
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sizes, align 4
  %data_size = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp2 = icmp ult i32 %6, %8
  %. = select i1 %cmp2, i32 -22, i32 0
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %nplanes, align 4
  %data_size6 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %data_size6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_size6, align 8
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histo_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %vb2_plane_size.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vb2_plane_size.exit:                              ; preds = %entry
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  %data_size = getelementptr inbounds %struct.vsp1_histogram, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3 = icmp ult i32 %7, %9
  br i1 %cmp3, label %vb2_plane_size.exit.cleanup_crit_edge, label %if.end5

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %addr = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %vb, i32 0, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %vb2_plane_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @histo_start_streaming(ptr nocapture noundef readnone %vq, i32 noundef %count) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @histo_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %irqlock = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  %irqqueue = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irqqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn45 = load ptr, ptr %irqqueue, align 8
  %cmp8.not46 = icmp eq ptr %.pn45, %irqqueue
  br i1 %cmp8.not46, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn45, %entry.for.body_crit_edge ]
  %buffer.0 = getelementptr i8, ptr %.pn47, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %buffer.0, i32 noundef 6) #8
  %3 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn47, align 8
  %cmp8.not = icmp eq ptr %.pn, %irqqueue
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %4 = ptrtoint ptr %irqqueue to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %irqqueue, ptr %irqqueue, align 4
  %prev.i = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %irqqueue, ptr %prev.i, align 4
  %readout = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %readout to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %readout, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.end.do.end29_crit_edge, label %if.end

for.end.do.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.end:                                           ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait_queue = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 11
  %call1848 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %9 = ptrtoint ptr %readout to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %readout, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool20.not49 = icmp eq i8 %10, 0
  br i1 %tobool20.not49, label %if.end.for.end25_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %irqlock) #8
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %irqlock) #8
  %call18 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %11 = ptrtoint ptr %readout to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %readout, align 4, !range !50
  %tobool20.not = icmp eq i8 %12, 0
  br i1 %tobool20.not, label %cleanup.for.end25_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.end25:                                        ; preds = %cleanup.for.end25_crit_edge, %if.end.for.end25_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end29

do.end29:                                         ; preds = %for.end25, %for.end.do.end29_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @histo_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %irqlock = getelementptr inbounds %struct.vsp1_histogram, ptr %3, i32 0, i32 9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #8
  %queue = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %vb, i32 0, i32 1
  %irqqueue = getelementptr inbounds %struct.vsp1_histogram, ptr %3, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.vsp1_histogram, ptr %3, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %irqqueue) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %irqqueue, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @vsp1_histogram_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 535, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vsp1_histogram_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 536, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vsp1_histogram_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 538, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 558, i32 4}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 578, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vsp1_histogram_init._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @vsp1_histogram_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 586, i32 3}
!21 = !{ptr @vsp1_histogram_init._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vsp1_histogram_init._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @histo_ops, !27, !"histo_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 416, i32 37}
!28 = !{ptr @histo_pad_ops, !29, !"histo_pad_ops", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 407, i32 41}
!30 = !{ptr @histo_v4l2_fops, !31, !"histo_v4l2_fops", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 495, i32 42}
!32 = !{ptr @histo_v4l2_ioctl_ops, !33, !"histo_v4l2_ioctl_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 475, i32 36}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 435, i32 23}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 437, i32 49}
!38 = !{ptr @histo_video_queue_qops, !39, !"histo_video_queue_qops", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/vsp1/vsp1_histo.c", i32 158, i32 29}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i8 0, i8 2}
