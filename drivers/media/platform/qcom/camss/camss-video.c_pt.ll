; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-video.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.camss_format_info = type { i32, i32, i8, [3 x %struct.fract], [3 x %struct.fract], [3 x i32] }
%struct.fract = type { i8, i8 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.camss_video = type { ptr, %struct.vb2_queue, %struct.video_device, %struct.media_pad, %struct.v4l2_format, i32, %struct.media_pipeline, ptr, %struct.mutex, %struct.mutex, i32, i32, ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.camss_buffer = type { %struct.vb2_v4l2_buffer, [3 x i32], %struct.list_head }
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
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss_video_ops = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.107, [2 x i32] }
%union.anon.107 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@msm_video_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&video->q_lock\00", [17 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@msm_video_vb2_q_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @video_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @video_buf_init, ptr @video_buf_prepare, ptr null, ptr null, ptr @video_start_streaming, ptr @video_stop_streaming, ptr @video_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@msm_video_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 981, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to init vb2 queue: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msm_video_register\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/platform/qcom/camss/camss-video.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_video_register._entry_ptr = internal global ptr @msm_video_register._entry, section ".printk_index", align 4
@msm_video_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 989, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init video entity: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@msm_video_register._entry_ptr.8 = internal global ptr @msm_video_register._entry.6, section ".printk_index", align 4
@msm_video_register.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&video->lock\00", [19 x i8] zeroinitializer }, align 32
@formats_pix_8x16 = internal constant { [16 x %struct.camss_format_info], [128 x i8] } { [16 x %struct.camss_format_info] [%struct.camss_format_info { i32 8196, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8197, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8194, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8195, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8196, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8197, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8194, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8195, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8198, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8198, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }], [128 x i8] zeroinitializer }, align 32
@formats_rdi_8x16 = internal constant { [17 x %struct.camss_format_info], [156 x i8] } { [17 x %struct.camss_format_info] [%struct.camss_format_info { i32 8198, i32 1498831189, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 1498765654, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 1448695129, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 1431918169, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 12289, i32 825770306, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12307, i32 1196573255, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12290, i32 1195528775, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12308, i32 1111967570, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12295, i32 1094795888, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12302, i32 1094797168, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12298, i32 1094805360, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12303, i32 1094799984, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12296, i32 1128481392, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12304, i32 1128482672, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12305, i32 1128490864, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12306, i32 1128485488, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 8202, i32 1345335641, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }], [156 x i8] zeroinitializer }, align 32
@formats_pix_8x96 = internal constant { [20 x %struct.camss_format_info], [176 x i8] } { [20 x %struct.camss_format_info] [%struct.camss_format_info { i32 8196, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8197, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8194, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8195, i32 842094158, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8196, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8197, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8194, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8195, i32 825382478, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 2, i8 3 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8198, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 909203022, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8198, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 825644622, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 2 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 8198, i32 1498831189, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 1498765654, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 1448695129, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 1431918169, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }], [176 x i8] zeroinitializer }, align 32
@formats_rdi_8x96 = internal constant { [23 x %struct.camss_format_info], [196 x i8] } { [23 x %struct.camss_format_info] [%struct.camss_format_info { i32 8198, i32 1498831189, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 1498765654, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 1448695129, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 1431918169, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 12289, i32 825770306, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12307, i32 1196573255, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12290, i32 1195528775, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12308, i32 1111967570, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12295, i32 1094795888, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12302, i32 1094797168, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12298, i32 1094805360, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12303, i32 1094799984, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12292, i32 808535874, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 12296, i32 1128481392, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12304, i32 1128482672, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12305, i32 1128490864, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12306, i32 1128485488, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12313, i32 1162166896, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 12314, i32 1162168176, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 12315, i32 1162176368, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 12316, i32 1162170992, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 8202, i32 1345335641, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 8236, i32 540029273, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }], [196 x i8] zeroinitializer }, align 32
@formats_rdi_845 = internal constant { [23 x %struct.camss_format_info], [196 x i8] } { [23 x %struct.camss_format_info] [%struct.camss_format_info { i32 8198, i32 1498831189, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8199, i32 1498765654, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8200, i32 1448695129, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 8201, i32 1431918169, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 12289, i32 825770306, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12307, i32 1196573255, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12290, i32 1195528775, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12308, i32 1111967570, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 8, i32 0, i32 0] }, %struct.camss_format_info { i32 12295, i32 1094795888, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12302, i32 1094797168, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12298, i32 1094805360, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12303, i32 1094799984, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 12292, i32 808535874, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }, %struct.camss_format_info { i32 12296, i32 1128481392, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12304, i32 1128482672, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12305, i32 1128490864, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12306, i32 1128485488, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 12, i32 0, i32 0] }, %struct.camss_format_info { i32 12313, i32 1162166896, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 12314, i32 1162168176, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 12315, i32 1162176368, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 12316, i32 1162170992, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 14, i32 0, i32 0] }, %struct.camss_format_info { i32 8202, i32 1345335641, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 10, i32 0, i32 0] }, %struct.camss_format_info { i32 8236, i32 540029273, i8 1, [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x %struct.fract] [%struct.fract { i8 1, i8 1 }, %struct.fract zeroinitializer, %struct.fract zeroinitializer], [3 x i32] [i32 16, i32 0, i32 0] }], [196 x i8] zeroinitializer }, align 32
@msm_video_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init format: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@msm_video_register._entry_ptr.13 = internal global ptr @msm_video_register._entry.11, section ".printk_index", align 4
@msm_vid_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @video_open, ptr @video_release }, [60 x i8] zeroinitializer }, align 32
@msm_vid_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @video_querycap, ptr @video_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @video_enum_input, ptr @video_g_input, ptr @video_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @video_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@msm_video_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1040, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register video device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@msm_video_register._entry_ptr.16 = internal global ptr @msm_video_register._entry.14, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@video_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to power up pipeline: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_open\00", [21 x i8] zeroinitializer }, align 32
@video_open._entry_ptr = internal global ptr @video_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom-camss\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Qualcomm Camera Subsystem\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 967, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"msm_video_vb2_q_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 559, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 981, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 988, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 993, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"formats_pix_8x16\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 185, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"formats_rdi_8x16\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 50, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"formats_pix_8x96\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 220, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"formats_rdi_8x96\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"formats_rdi_845\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 136, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1022, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"msm_vid_fops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 889, i32 42 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"msm_vid_ioctl_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 811, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 1039, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1163, i32 7 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 858, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 579, i32 23 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 580, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 581, i32 49 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [51 x i8] c"../drivers/media/platform/qcom/camss/camss-video.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 793, i32 23 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @msm_video_register._entry, ptr @msm_video_register._entry.11, ptr @msm_video_register._entry.14, ptr @msm_video_register._entry.6, ptr @msm_video_register._entry_ptr, ptr @msm_video_register._entry_ptr.13, ptr @msm_video_register._entry_ptr.16, ptr @msm_video_register._entry_ptr.8, ptr @video_open._entry, ptr @video_open._entry_ptr, ptr @msm_video_register.__key, ptr @.str, ptr @msm_video_vb2_q_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @msm_video_register.__key.9, ptr @.str.10, ptr @formats_pix_8x16, ptr @formats_rdi_8x16, ptr @formats_pix_8x96, ptr @formats_rdi_8x96, ptr @formats_rdi_845, ptr @.str.12, ptr @msm_vid_fops, ptr @msm_vid_ioctl_ops, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_video_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_video_vb2_q_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_video_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_video_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_video_register.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_pix_8x16 to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_rdi_8x16 to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_pix_8x96 to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_rdi_8x96 to i32), i32 828, i32 1024, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats_rdi_845 to i32), i32 828, i32 1024, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_video_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vid_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_vid_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_video_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_video_register(ptr noundef %video, ptr noundef %v4l2_dev, ptr noundef %name, i32 noundef %is_pix) local_unnamed_addr #0 align 64 {
entry:
  %format.i = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev2 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2
  %q_lock = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %q_lock, ptr noundef nonnull @.str, ptr noundef nonnull @msm_video_register.__key) #12
  %vb2_q = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1
  %drv_priv = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %video, ptr %drv_priv, align 4
  %mem_ops = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %ops = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @msm_video_vb2_q_ops, ptr %ops, align 4
  %3 = ptrtoint ptr %vb2_q to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9, ptr %vb2_q, align 4
  %io_modes = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 21, ptr %io_modes, align 4
  %timestamp_flags = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 13
  %5 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8192, ptr %timestamp_flags, align 4
  %buf_struct_size = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 760, ptr %buf_struct_size, align 4
  %7 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dev3 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev3, align 4
  %lock = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %q_lock, ptr %lock, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %vb2_q) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end7, label %if.end

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %v4l2_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %call) #15
  br label %error_vb2_init

if.end:                                           ; preds = %entry
  %pad1 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 3
  %flags = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flags, align 4
  %call9 = tail call i32 @media_entity_pads_init(ptr noundef %vdev2, i16 noundef zeroext 1, ptr noundef %pad1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %do.body17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v4l2_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef %call9) #15
  br label %error_vb2_init

do.body17:                                        ; preds = %if.end
  %lock18 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock18, ptr noundef nonnull @.str.10, ptr noundef nonnull @msm_video_register.__key.9) #12
  %18 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %video, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.body17.error_video_register_crit_edge [
    i32 0, label %if.then23
    i32 1, label %do.body17.if.then35_crit_edge
    i32 2, label %do.body17.if.then35_crit_edge147
    i32 3, label %if.then48
  ]

do.body17.if.then35_crit_edge147:                 ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

do.body17.if.then35_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

do.body17.error_video_register_crit_edge:         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_video_register

if.then23:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_pix)
  %tobool.not = icmp eq i32 %is_pix, 0
  %formats25 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 12
  br i1 %tobool.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %formats25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @formats_pix_8x16, ptr %formats25, align 4
  br label %if.end54

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %formats25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @formats_rdi_8x16, ptr %formats25, align 4
  br label %if.end54

if.then35:                                        ; preds = %do.body17.if.then35_crit_edge, %do.body17.if.then35_crit_edge147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_pix)
  %tobool36.not = icmp eq i32 %is_pix, 0
  %formats41 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 12
  br i1 %tobool36.not, label %if.else40, label %if.then37

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %formats41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @formats_pix_8x96, ptr %formats41, align 4
  br label %if.end54

if.else40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %formats41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @formats_rdi_8x96, ptr %formats41, align 4
  br label %if.end54

if.then48:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %formats49 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 12
  %27 = ptrtoint ptr %formats49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @formats_rdi_845, ptr %formats49, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.else40, %if.then37, %if.else, %if.then24
  %.sink = phi i32 [ 23, %if.then48 ], [ 23, %if.else40 ], [ 20, %if.then37 ], [ 16, %if.then24 ], [ 17, %if.else ]
  %nformats50 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 13
  %28 = ptrtoint ptr %nformats50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %nformats50, align 8
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %format.i) #12
  %29 = getelementptr inbounds i8, ptr %format.i, i32 16
  %30 = call ptr @memset(ptr %29, i32 0, i32 188)
  %31 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 9, ptr %format.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1
  %32 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1920, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1080, ptr %height.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 2
  %formats.i = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 12
  %34 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %formats.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.camss_format_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pixelformat1.i, align 4
  %38 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pixelformat.i, align 4
  call fastcc void @__video_try_fmt(ptr noundef %video, ptr noundef nonnull %format.i) #12
  %active_fmt.i = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 4
  %39 = call ptr @memcpy(ptr %active_fmt.i, ptr %format.i, i32 204)
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format.i) #12
  %fops = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @msm_vid_fops, ptr %fops, align 4
  %device_caps = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 620761088, ptr %device_caps, align 8
  %ioctl_ops = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 24
  %42 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @msm_vid_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 23
  %43 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @msm_video_release, ptr %release, align 8
  %v4l2_dev63 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 7
  %44 = ptrtoint ptr %v4l2_dev63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %v4l2_dev, ptr %v4l2_dev63, align 4
  %vfl_dir = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 14
  %45 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %vfl_dir, align 4
  %queue = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 10
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vb2_q, ptr %queue, align 8
  %lock66 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 26
  %47 = ptrtoint ptr %lock66 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %lock18, ptr %lock66, align 8
  %name67 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 12
  %call68 = tail call i32 @strscpy(ptr noundef %name67, ptr noundef %name, i32 noundef 32) #12
  %48 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fops, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev2, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp70 = icmp slt i32 %call.i, 0
  br i1 %cmp70, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %v4l2_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.15, i32 noundef %call.i) #15
  br label %error_video_register

if.end76:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2, i32 5, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %video, ptr %driver_data.i.i, align 4
  %55 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %video, align 8
  %ref_count = getelementptr inbounds %struct.camss, ptr %56, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #12
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #12, !srcloc !67
  br label %cleanup

error_video_register:                             ; preds = %do.end74, %do.body17.error_video_register_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end74 ], [ -22, %do.body17.error_video_register_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %lock18) #12
  br label %error_vb2_init

error_vb2_init:                                   ; preds = %error_video_register, %do.end14, %do.end7
  %ret.1 = phi i32 [ %call, %do.end7 ], [ %call9, %do.end14 ], [ %ret.0, %error_video_register ]
  tail call void @mutex_destroy(ptr noundef %q_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %error_vb2_init, %if.end76
  %retval.0 = phi i32 [ %ret.1, %error_vb2_init ], [ 0, %if.end76 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_video_release(ptr nocapture noundef readonly %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %q_lock = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 9
  tail call void @mutex_destroy(ptr noundef %q_lock) #12
  %lock = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %lock) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ref_count = getelementptr inbounds %struct.camss, ptr %3, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #12, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void @camss_delete(ptr noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_video_unregister(ptr noundef %video) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video, align 8
  %ref_count = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #12, !srcloc !67
  %vdev = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 2
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #12
  %3 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %video, align 8
  %ref_count2 = getelementptr inbounds %struct.camss, ptr %4, i32 0, i32 12
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count2, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count2, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count2, ptr %ref_count2, i32 1, ptr elementtype(i32) %ref_count2) #12, !srcloc !71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %num_planes12 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %num_planes12 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes12, align 1
  %conv13 = zext i8 %5 to i32
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv13)
  %cmp.not = icmp eq i32 %3, %conv13
  br i1 %cmp.not, label %if.then.for.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.044
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.camss_video, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 5, i32 %i.044
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp7 = icmp ult i32 %7, %9
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %entry
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv13, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1546.not = icmp eq i8 %5, 0
  br i1 %cmp1546.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body17_crit_edge

if.end11.for.body17_crit_edge:                    ; preds = %if.end11
  br label %for.body17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.end11.for.body17_crit_edge
  %i.147 = phi i32 [ %inc23, %for.body17.for.body17_crit_edge ], [ 0, %if.end11.for.body17_crit_edge ]
  %arrayidx19 = getelementptr %struct.camss_video, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 5, i32 %i.147
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr i32, ptr %sizes, i32 %i.147
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx21, align 4
  %inc23 = add nuw i32 %i.147, 1
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes, align 4
  %cmp15 = icmp ult i32 %inc23, %15
  br i1 %cmp15, label %for.body17.for.body17_crit_edge, label %for.body17.cleanup_crit_edge

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

cleanup:                                          ; preds = %for.body17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %for.body17.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_buf_init(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %num_planes = getelementptr inbounds %struct.camss_video, ptr %3, i32 0, i32 4, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp46.not = icmp eq i8 %5, 0
  br i1 %cmp46.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef %i.047) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_address, align 4
  %arrayidx = getelementptr %struct.camss_buffer, ptr %vb, i32 0, i32 1, i32 %i.047
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.047, 1
  %11 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %pixelformat = getelementptr inbounds %struct.camss_video, ptr %3, i32 0, i32 4, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %pixelformat, align 1
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %14, label %for.end.cleanup_crit_edge [
    i32 842094158, label %for.end.if.then19_crit_edge
    i32 825382478, label %for.end.if.then19_crit_edge48
    i32 909203022, label %for.end.if.then19_crit_edge49
    i32 825644622, label %for.end.if.then19_crit_edge50
  ]

for.end.if.then19_crit_edge50:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.end.if.then19_crit_edge49:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.end.if.then19_crit_edge48:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then19:                                        ; preds = %for.end.if.then19_crit_edge, %for.end.if.then19_crit_edge48, %for.end.if.then19_crit_edge49, %for.end.if.then19_crit_edge50
  %addr20 = getelementptr inbounds %struct.camss_buffer, ptr %vb, i32 0, i32 1
  %16 = ptrtoint ptr %addr20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr20, align 8
  %bytesperline = getelementptr inbounds %struct.camss_video, ptr %3, i32 0, i32 4, i32 1, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %bytesperline, align 1
  %height = getelementptr inbounds %struct.camss_video, ptr %3, i32 0, i32 4, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %height, align 1
  %mul = mul i32 %21, %19
  %add = add i32 %mul, %17
  %arrayidx24 = getelementptr %struct.camss_buffer, ptr %vb, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %arrayidx24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.then19 ], [ -14, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %num_planes = getelementptr inbounds %struct.camss_video, ptr %3, i32 0, i32 4, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp28.not = icmp eq i8 %5, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.camss_video, ptr %3, i32 0, i32 4, i32 1, i32 0, i32 5, i32 %i.029
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.029)
  %cmp.i = icmp ugt i32 %9, %i.029
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.029, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp3 = icmp ugt i32 %7, %11
  br i1 %cmp3, label %vb2_plane_size.exit.cleanup_crit_edge, label %if.then.i24

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp326.not = icmp eq i32 %7, 0
  br i1 %cmp326.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.cleanup_crit_edge

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

if.then.i24:                                      ; preds = %vb2_plane_size.exit
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp1.i = icmp ult i32 %13, %7
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i24.if.end42.i_crit_edge

if.then.i24.if.end42.i_crit_edge:                 ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i24
  %.b55.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !72

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i24.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %15, %if.then38.i ], [ %7, %if.then.i24.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.029, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.for.end_crit_edge

vb2_set_plane_payload.exit.for.end_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %vb2_set_plane_payload.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %fmt.i.i = alloca %struct.v4l2_subdev_format, align 4
  %format.i = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vdev1 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 2
  %pipe = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @media_pipeline_start(ptr noundef %vdev1, ptr noundef %pipe) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %format.i) #12
  %2 = call ptr @memset(ptr %format.i, i32 255, i32 204)
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %pixelformat.i, align 1
  %pixelformat2.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelformat2.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt.i.i) #12
  %6 = getelementptr inbounds i8, ptr %fmt.i.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 80)
  %pad1.i.i.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 3
  %call.i.i.i = tail call ptr @media_entity_remote_pad(ptr noundef %pad1.i.i.i) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.video_get_subdev_format.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.video_get_subdev_format.exit.thread.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end
  %entity.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entity.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge, label %is_media_entity_v4l2_subdev.exit.i.i.i

lor.lhs.false.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread.i

is_media_entity_v4l2_subdev.exit.i.i.i:           ; preds = %lor.lhs.false.i.i.i
  %obj_type.i.i.i.i = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %obj_type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj_type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i.i.i, label %if.end.i.i, label %is_media_entity_v4l2_subdev.exit.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge

is_media_entity_v4l2_subdev.exit.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread.i

if.end.i.i:                                       ; preds = %is_media_entity_v4l2_subdev.exit.i.i.i
  %index.i.i.i = getelementptr inbounds %struct.media_pad, ptr %call.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index.i.i.i, align 4
  %conv.i.i.i = zext i16 %13 to i32
  %pad1.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %pad1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i.i.i, ptr %pad1.i.i, align 4
  %15 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %fmt.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 4
  %pad3.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %pad3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pad3.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.video_get_subdev_format.exit.thread.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.video_get_subdev_format.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %get_fmt.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %get_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_fmt.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.video_get_subdev_format.exit.thread.i_crit_edge, label %if.else9.i.i

land.lhs.true.i.i.video_get_subdev_format.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread.i

if.else9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool10.not.i.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i.i, label %if.else9.i.i.if.else17.i.i_crit_edge, label %land.lhs.true11.i.i

if.else9.i.i.if.else17.i.i_crit_edge:             ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17.i.i

land.lhs.true11.i.i:                              ; preds = %if.else9.i.i
  %get_fmt12.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %get_fmt12.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_fmt12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %24, null
  br i1 %tobool13.not.i.i, label %land.lhs.true11.i.i.if.else17.i.i_crit_edge, label %land.lhs.true11.i.i.if.end24.i.i_crit_edge

land.lhs.true11.i.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

land.lhs.true11.i.i.if.else17.i.i_crit_edge:      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17.i.i

if.else17.i.i:                                    ; preds = %land.lhs.true11.i.i.if.else17.i.i_crit_edge, %if.else9.i.i.if.else17.i.i_crit_edge
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.else17.i.i, %land.lhs.true11.i.i.if.end24.i.i_crit_edge
  %.sink.i.i = phi ptr [ %21, %if.else17.i.i ], [ %24, %land.lhs.true11.i.i.if.end24.i.i_crit_edge ]
  %call21.i.i = call i32 %.sink.i.i(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %fmt.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool25.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %video_get_subdev_format.exit.i

if.end27.i.i:                                     ; preds = %if.end24.i.i
  %code.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code.i.i, align 4
  %formats.i.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %formats.i.i, align 4
  %nformats.i.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %nformats.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nformats.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp49.not.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp49.not.i.i.i, label %if.end27.i.i.video_find_format.exit.thread.i.i_crit_edge, label %if.end27.i.i.for.body.i.i.i_crit_edge

if.end27.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end27.i.i
  br label %for.body.i.i.i

if.end27.i.i.video_find_format.exit.thread.i.i_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_find_format.exit.thread.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end27.i.i.for.body.i.i.i_crit_edge
  %i.050.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end27.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %i.050.i.i.i
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %26)
  %cmp2.i.i.i = icmp eq i32 %32, %26
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %pixelformat4.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %i.050.i.i.i, i32 1
  %33 = ptrtoint ptr %pixelformat4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixelformat4.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %4)
  %cmp5.i.i.i = icmp eq i32 %34, %4
  br i1 %cmp5.i.i.i, label %land.lhs.true.i.i.i.video_find_format.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

land.lhs.true.i.i.i.video_find_format.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_find_format.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw i32 %i.050.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %30
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.body8.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.for.body8.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  br label %for.body8.i.i.i

for.body8.i.i.i:                                  ; preds = %for.inc14.i.i.i.for.body8.i.i.i_crit_edge, %for.inc.i.i.i.for.body8.i.i.i_crit_edge
  %i.153.i.i.i = phi i32 [ %inc15.i.i.i, %for.inc14.i.i.i.for.body8.i.i.i_crit_edge ], [ 0, %for.inc.i.i.i.for.body8.i.i.i_crit_edge ]
  %arrayidx9.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %i.153.i.i.i
  %35 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx9.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %26)
  %cmp11.i.i.i = icmp eq i32 %36, %26
  br i1 %cmp11.i.i.i, label %for.body8.i.i.i.video_find_format.exit.i.i_crit_edge, label %for.inc14.i.i.i

for.body8.i.i.i.video_find_format.exit.i.i_crit_edge: ; preds = %for.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_find_format.exit.i.i

for.inc14.i.i.i:                                  ; preds = %for.body8.i.i.i
  %inc15.i.i.i = add nuw i32 %i.153.i.i.i, 1
  %exitcond57.not.i.i.i = icmp eq i32 %inc15.i.i.i, %30
  br i1 %exitcond57.not.i.i.i, label %for.inc14.i.i.i.video_find_format.exit.thread.i.i_crit_edge, label %for.inc14.i.i.i.for.body8.i.i.i_crit_edge

for.inc14.i.i.i.for.body8.i.i.i_crit_edge:        ; preds = %for.inc14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8.i.i.i

for.inc14.i.i.i.video_find_format.exit.thread.i.i_crit_edge: ; preds = %for.inc14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_find_format.exit.thread.i.i

video_find_format.exit.thread.i.i:                ; preds = %for.inc14.i.i.i.video_find_format.exit.thread.i.i_crit_edge, %if.end27.i.i.video_find_format.exit.thread.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 283, i32 noundef 9, ptr noundef null) #12
  br label %video_get_subdev_format.exit.thread.i

video_find_format.exit.i.i:                       ; preds = %for.body8.i.i.i.video_find_format.exit.i.i_crit_edge, %land.lhs.true.i.i.i.video_find_format.exit.i.i_crit_edge
  %retval.0.i61.i.i = phi i32 [ %i.153.i.i.i, %for.body8.i.i.i.video_find_format.exit.i.i_crit_edge ], [ %i.050.i.i.i, %land.lhs.true.i.i.i.video_find_format.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i61.i.i)
  %cmp31.i.i = icmp slt i32 %retval.0.i61.i.i, 0
  br i1 %cmp31.i.i, label %video_find_format.exit.i.i.video_get_subdev_format.exit.thread.i_crit_edge, label %if.end33.i.i

video_find_format.exit.i.i.video_get_subdev_format.exit.thread.i_crit_edge: ; preds = %video_find_format.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread.i

if.end33.i.i:                                     ; preds = %video_find_format.exit.i.i
  %type.i.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i.i, align 4
  %39 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %format.i, align 4
  %bpl_alignment.i.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %bpl_alignment.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bpl_alignment.i.i, align 4
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 5
  %43 = call ptr @memset(ptr %42, i32 0, i32 172)
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %6, align 4
  %46 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %fmt1.i, align 4
  %height.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %height.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height.i.i.i.i, align 4
  %height2.i.i.i.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %height2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %height2.i.i.i.i, align 4
  %field.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %field.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %field.i.i.i.i, align 4
  %field3.i.i.i.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 3
  %52 = ptrtoint ptr %field3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %field3.i.i.i.i, align 4
  %colorspace.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %colorspace.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %colorspace.i.i.i.i, align 4
  %colorspace4.i.i.i.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 4
  %55 = ptrtoint ptr %colorspace4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %colorspace4.i.i.i.i, align 4
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 5
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 4
  %conv.i.i.i.i = trunc i16 %58 to i8
  %59 = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv.i.i.i.i, ptr %59, align 2
  %quantization.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 6
  %61 = ptrtoint ptr %quantization.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %quantization.i.i.i.i, align 2
  %conv5.i.i.i.i = trunc i16 %62 to i8
  %quantization6.i.i.i.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 9
  %63 = ptrtoint ptr %quantization6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv5.i.i.i.i, ptr %quantization6.i.i.i.i, align 1
  %xfer_func.i.i.i.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt.i.i, i32 0, i32 2, i32 7
  %64 = ptrtoint ptr %xfer_func.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %xfer_func.i.i.i.i, align 4
  %conv7.i.i.i.i = trunc i16 %65 to i8
  %xfer_func8.i.i.i.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 10
  %66 = ptrtoint ptr %xfer_func8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv7.i.i.i.i, ptr %xfer_func8.i.i.i.i, align 4
  %pixelformat.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %retval.0.i61.i.i, i32 1
  %67 = ptrtoint ptr %pixelformat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pixelformat.i.i.i, align 4
  %69 = ptrtoint ptr %pixelformat2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pixelformat2.i, align 4
  %planes.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %retval.0.i61.i.i, i32 2
  %70 = ptrtoint ptr %planes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %planes.i.i.i, align 4
  %num_planes.i.i.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 6
  %72 = ptrtoint ptr %num_planes.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %num_planes.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp3.not.i.i.i = icmp eq i8 %71, 0
  br i1 %cmp3.not.i.i.i, label %if.end33.i.i.video_get_subdev_format.exit.thread40.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end33.i.i.video_get_subdev_format.exit.thread40.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread40.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end33.i.i
  %sub.i.i.i = add i32 %41, -1
  %neg.i.i.i = sub i32 0, %41
  br label %for.body.i65.i.i

for.body.i65.i.i:                                 ; preds = %for.body.i65.i.i.for.body.i65.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.04.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i63.i.i, %for.body.i65.i.i.for.body.i65.i.i_crit_edge ]
  %73 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fmt1.i, align 4
  %arrayidx.i62.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %retval.0.i61.i.i, i32 3, i32 %i.04.i.i.i
  %75 = ptrtoint ptr %arrayidx.i62.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i62.i.i, align 1
  %conv4.i.i.i = zext i8 %76 to i32
  %div.i.i.i = udiv i32 %74, %conv4.i.i.i
  %denominator.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %retval.0.i61.i.i, i32 3, i32 %i.04.i.i.i, i32 1
  %77 = ptrtoint ptr %denominator.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %denominator.i.i.i, align 1
  %conv7.i.i.i = zext i8 %78 to i32
  %mul.i.i.i = mul i32 %div.i.i.i, %conv7.i.i.i
  %arrayidx8.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %retval.0.i61.i.i, i32 5, i32 %i.04.i.i.i
  %79 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx8.i.i.i, align 4
  %mul9.i.i.i = mul i32 %mul.i.i.i, %80
  %div101.i.i.i = lshr i32 %mul9.i.i.i, 3
  %add.i.i.i = add i32 %sub.i.i.i, %div101.i.i.i
  %and.i.i.i = and i32 %add.i.i.i, %neg.i.i.i
  %arrayidx12.i.i.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %fmt1.i, i32 0, i32 5, i32 %i.04.i.i.i
  %bytesperline13.i.i.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %fmt1.i, i32 0, i32 5, i32 %i.04.i.i.i, i32 1
  %81 = ptrtoint ptr %bytesperline13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and.i.i.i, ptr %bytesperline13.i.i.i, align 4
  %82 = ptrtoint ptr %height2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height2.i.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %retval.0.i61.i.i, i32 4, i32 %i.04.i.i.i
  %84 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx14.i.i.i, align 1
  %conv16.i.i.i = zext i8 %85 to i32
  %div17.i.i.i = udiv i32 %83, %conv16.i.i.i
  %denominator20.i.i.i = getelementptr %struct.camss_format_info, ptr %28, i32 %retval.0.i61.i.i, i32 4, i32 %i.04.i.i.i, i32 1
  %86 = ptrtoint ptr %denominator20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %denominator20.i.i.i, align 1
  %conv21.i.i.i = zext i8 %87 to i32
  %mul22.i.i.i = mul i32 %and.i.i.i, %div17.i.i.i
  %mul23.i.i.i = mul i32 %mul22.i.i.i, %conv21.i.i.i
  %88 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %mul23.i.i.i, ptr %arrayidx12.i.i.i, align 4
  %inc.i63.i.i = add nuw nsw i32 %i.04.i.i.i, 1
  %89 = ptrtoint ptr %num_planes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %num_planes.i.i.i, align 4
  %conv.i64.i.i = zext i8 %90 to i32
  %cmp.i.i.i = icmp ult i32 %inc.i63.i.i, %conv.i64.i.i
  br i1 %cmp.i.i.i, label %for.body.i65.i.i.for.body.i65.i.i_crit_edge, label %for.body.i65.i.i.video_get_subdev_format.exit.thread40.i_crit_edge

for.body.i65.i.i.video_get_subdev_format.exit.thread40.i_crit_edge: ; preds = %for.body.i65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_get_subdev_format.exit.thread40.i

for.body.i65.i.i.for.body.i65.i.i_crit_edge:      ; preds = %for.body.i65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i65.i.i

video_get_subdev_format.exit.thread.i:            ; preds = %video_find_format.exit.i.i.video_get_subdev_format.exit.thread.i_crit_edge, %video_find_format.exit.thread.i.i, %land.lhs.true.i.i.video_get_subdev_format.exit.thread.i_crit_edge, %if.end.i.i.video_get_subdev_format.exit.thread.i_crit_edge, %is_media_entity_v4l2_subdev.exit.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge, %if.end.video_get_subdev_format.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -515, %if.end.i.i.video_get_subdev_format.exit.thread.i_crit_edge ], [ -515, %land.lhs.true.i.i.video_get_subdev_format.exit.thread.i_crit_edge ], [ -32, %lor.lhs.false.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge ], [ -32, %if.end.video_get_subdev_format.exit.thread.i_crit_edge ], [ -32, %is_media_entity_v4l2_subdev.exit.i.i.i.video_get_subdev_format.exit.thread.i_crit_edge ], [ -22, %video_find_format.exit.thread.i.i ], [ %retval.0.i61.i.i, %video_find_format.exit.i.i.video_get_subdev_format.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i.i) #12
  br label %video_check_format.exit.thread

video_get_subdev_format.exit.thread40.i:          ; preds = %for.body.i65.i.i.video_get_subdev_format.exit.thread40.i_crit_edge, %if.end33.i.i.video_get_subdev_format.exit.thread40.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i.i) #12
  br label %if.end.i

video_get_subdev_format.exit.i:                   ; preds = %if.end24.i.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp.i, label %video_get_subdev_format.exit.i.video_check_format.exit.thread_crit_edge, label %video_get_subdev_format.exit.i.if.end.i_crit_edge

video_get_subdev_format.exit.i.if.end.i_crit_edge: ; preds = %video_get_subdev_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

video_get_subdev_format.exit.i.video_check_format.exit.thread_crit_edge: ; preds = %video_get_subdev_format.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_check_format.exit.thread

if.end.i:                                         ; preds = %video_get_subdev_format.exit.i.if.end.i_crit_edge, %video_get_subdev_format.exit.thread40.i
  %91 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %pixelformat.i, align 1
  %93 = ptrtoint ptr %pixelformat2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pixelformat2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp5.not.i = icmp eq i32 %92, %94
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.i.video_check_format.exit.thread_crit_edge

if.end.i.video_check_format.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_check_format.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 1
  %95 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %height.i, align 1
  %height6.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %height6.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %height6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp7.not.i = icmp eq i32 %96, %98
  br i1 %cmp7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.video_check_format.exit.thread_crit_edge

lor.lhs.false.i.video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_check_format.exit.thread

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %99 = ptrtoint ptr %fmt.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %fmt.i, align 1
  %101 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fmt1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp10.not.i = icmp eq i32 %100, %102
  br i1 %cmp10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.video_check_format.exit.thread_crit_edge

lor.lhs.false8.i.video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_check_format.exit.thread

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  %num_planes.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 6
  %103 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %num_planes.i, align 1
  %num_planes12.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 6
  %105 = ptrtoint ptr %num_planes12.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_planes12.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %106)
  %cmp14.not.i = icmp eq i8 %104, %106
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false11.i.video_check_format.exit.thread_crit_edge

lor.lhs.false11.i.video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_check_format.exit.thread

lor.lhs.false16.i:                                ; preds = %lor.lhs.false11.i
  %field.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 3
  %107 = ptrtoint ptr %field.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %field.i, align 1
  %field18.i = getelementptr inbounds %struct.v4l2_format, ptr %format.i, i32 0, i32 1, i32 0, i32 3
  %109 = ptrtoint ptr %field18.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %field18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp19.not.i = icmp eq i32 %108, %110
  br i1 %cmp19.not.i, label %video_check_format.exit, label %lor.lhs.false16.i.video_check_format.exit.thread_crit_edge

lor.lhs.false16.i.video_check_format.exit.thread_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_check_format.exit.thread

video_check_format.exit.thread:                   ; preds = %lor.lhs.false16.i.video_check_format.exit.thread_crit_edge, %lor.lhs.false11.i.video_check_format.exit.thread_crit_edge, %lor.lhs.false8.i.video_check_format.exit.thread_crit_edge, %lor.lhs.false.i.video_check_format.exit.thread_crit_edge, %if.end.i.video_check_format.exit.thread_crit_edge, %video_get_subdev_format.exit.i.video_check_format.exit.thread_crit_edge, %video_get_subdev_format.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %video_get_subdev_format.exit.thread.i ], [ -32, %lor.lhs.false16.i.video_check_format.exit.thread_crit_edge ], [ -32, %if.end.i.video_check_format.exit.thread_crit_edge ], [ -32, %lor.lhs.false.i.video_check_format.exit.thread_crit_edge ], [ -32, %lor.lhs.false8.i.video_check_format.exit.thread_crit_edge ], [ -32, %lor.lhs.false11.i.video_check_format.exit.thread_crit_edge ], [ %call21.i.i, %video_get_subdev_format.exit.i.video_check_format.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format.i) #12
  br label %error

video_check_format.exit:                          ; preds = %lor.lhs.false16.i
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %format.i) #12
  br label %while.cond

while.cond:                                       ; preds = %if.end43.while.cond_crit_edge, %video_check_format.exit
  %entity.0 = phi ptr [ %vdev1, %video_check_format.exit ], [ %116, %if.end43.while.cond_crit_edge ]
  %pads = getelementptr inbounds %struct.media_entity, ptr %entity.0, i32 0, i32 9
  %111 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pads, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags, align 4
  %and = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %if.end10

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %while.cond
  %call11 = call ptr @media_entity_remote_pad(ptr noundef %112) #12
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %entity13 = getelementptr inbounds %struct.media_pad, ptr %call11, i32 0, i32 1
  %115 = ptrtoint ptr %entity13 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %entity13, align 4
  %tobool.not.i = icmp eq ptr %116, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp.i83 = icmp eq i32 %118, 2
  br i1 %cmp.i83, label %if.else, label %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %116, i32 0, i32 6
  %119 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops, align 4
  %video22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %video22 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %video22, align 4
  %tobool23.not = icmp eq ptr %122, null
  br i1 %tobool23.not, label %if.else.if.end43_crit_edge, label %land.lhs.true

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %122, i32 0, i32 10
  %123 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_stream, align 4
  %tobool26.not = icmp eq ptr %124, null
  br i1 %tobool26.not, label %land.lhs.true.if.end43_crit_edge, label %if.else28

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else28:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool29.not = icmp eq ptr %125, null
  br i1 %tobool29.not, label %if.else28.if.else36_crit_edge, label %land.lhs.true30

if.else28.if.else36_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else36

land.lhs.true30:                                  ; preds = %if.else28
  %s_stream31 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %125, i32 0, i32 10
  %126 = ptrtoint ptr %s_stream31 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %s_stream31, align 4
  %tobool32.not = icmp eq ptr %127, null
  br i1 %tobool32.not, label %land.lhs.true30.if.else36_crit_edge, label %land.lhs.true30.if.end43.sink.split_crit_edge

land.lhs.true30.if.end43.sink.split_crit_edge:    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.sink.split

land.lhs.true30.if.else36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else36

if.else36:                                        ; preds = %land.lhs.true30.if.else36_crit_edge, %if.else28.if.else36_crit_edge
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else36, %land.lhs.true30.if.end43.sink.split_crit_edge
  %.sink = phi ptr [ %124, %if.else36 ], [ %127, %land.lhs.true30.if.end43.sink.split_crit_edge ]
  %call40 = call i32 %.sink(ptr noundef nonnull %116, i32 noundef 1) #12
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %land.lhs.true.if.end43_crit_edge, %if.else.if.end43_crit_edge
  %__result.0 = phi i32 [ -515, %land.lhs.true.if.end43_crit_edge ], [ -515, %if.else.if.end43_crit_edge ], [ %call40, %if.end43.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0)
  %cmp45 = icmp sgt i32 %__result.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0)
  %cmp47.not = icmp eq i32 %__result.0, -515
  %or.cond = or i1 %cmp45, %cmp47.not
  br i1 %or.cond, label %if.end43.while.cond_crit_edge, label %if.end43.error_crit_edge

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end43.while.cond_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

error:                                            ; preds = %if.end43.error_crit_edge, %video_check_format.exit.thread
  %ret.0 = phi i32 [ %retval.0.i.ph, %video_check_format.exit.thread ], [ %__result.0, %if.end43.error_crit_edge ]
  call void @media_pipeline_stop(ptr noundef %vdev1) #12
  %ops51 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 7
  %128 = ptrtoint ptr %ops51 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops51, align 8
  %flush_buffers = getelementptr inbounds %struct.camss_video_ops, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %flush_buffers to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %flush_buffers, align 4
  %call52 = call i32 %131(ptr noundef %1, i32 noundef 3) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %is_media_entity_v4l2_subdev.exit.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @video_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %pads57 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 2, i32 0, i32 9
  %2 = ptrtoint ptr %pads57 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pads57, align 4
  %flags58 = getelementptr inbounds %struct.media_pad, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags58, align 4
  %and59 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool.not60 = icmp eq i32 %and59, 0
  br i1 %tobool.not60, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %if.end35.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = phi ptr [ %21, %if.end35.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %call3 = tail call ptr @media_entity_remote_pad(ptr noundef %6) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.while.end_crit_edge, label %lor.lhs.false

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end
  %entity5 = getelementptr inbounds %struct.media_pad, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %entity5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity5, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %lor.lhs.false.while.end_crit_edge, label %is_media_entity_v4l2_subdev.exit

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

is_media_entity_v4l2_subdev.exit:                 ; preds = %lor.lhs.false
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  br i1 %cmp.i, label %if.else, label %is_media_entity_v4l2_subdev.exit.while.end_crit_edge

is_media_entity_v4l2_subdev.exit.while.end_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.else:                                          ; preds = %is_media_entity_v4l2_subdev.exit
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %video14 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %video14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video14, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %if.else.if.end35_crit_edge, label %land.lhs.true

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_stream, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %land.lhs.true.if.end35_crit_edge, label %if.else20

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.else20:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %if.else20.if.else28_crit_edge, label %land.lhs.true22

if.else20.if.else28_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else28

land.lhs.true22:                                  ; preds = %if.else20
  %s_stream23 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream23, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %land.lhs.true22.if.else28_crit_edge, label %land.lhs.true22.if.end35.sink.split_crit_edge

land.lhs.true22.if.end35.sink.split_crit_edge:    ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.sink.split

land.lhs.true22.if.else28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else28

if.else28:                                        ; preds = %land.lhs.true22.if.else28_crit_edge, %if.else20.if.else28_crit_edge
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.else28, %land.lhs.true22.if.end35.sink.split_crit_edge
  %.sink = phi ptr [ %16, %if.else28 ], [ %19, %land.lhs.true22.if.end35.sink.split_crit_edge ]
  %call32 = tail call i32 %.sink(ptr noundef nonnull %8, i32 noundef 0) #12
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %land.lhs.true.if.end35_crit_edge, %if.else.if.end35_crit_edge
  %pads = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 9
  %20 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pads, align 4
  %flags = getelementptr inbounds %struct.media_pad, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end35.while.end_crit_edge, label %if.end35.if.end_crit_edge

if.end35.if.end_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %is_media_entity_v4l2_subdev.exit.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %vdev1 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 2
  tail call void @media_pipeline_stop(ptr noundef %vdev1) #12
  %ops38 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %ops38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops38, align 8
  %flush_buffers = getelementptr inbounds %struct.camss_video_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flush_buffers to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flush_buffers, align 4
  %call39 = tail call i32 %27(ptr noundef %1, i32 noundef 6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @video_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %ops = getelementptr inbounds %struct.camss_video, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4 = tail call i32 %7(ptr noundef %3, ptr noundef %vb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__video_try_fmt(ptr nocapture noundef readonly %video, ptr nocapture noundef %f) unnamed_addr #5 align 64 {
entry:
  %bytesperline = alloca [3 x i32], align 4
  %sizeimage = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bytesperline) #12
  %0 = call ptr @memset(ptr %bytesperline, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sizeimage) #12
  %1 = call ptr @memset(ptr %sizeimage, i32 0, i32 12)
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %line_based = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 11
  %2 = ptrtoint ptr %line_based to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line_based, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6.not = icmp eq i8 %5, 0
  br i1 %cmp6.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.preheader

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %conv = zext i8 %5 to i32
  %6 = add nsw i32 %conv, -1
  %umin = call i32 @llvm.umin.i32(i32 %6, i32 2)
  %arrayidx = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0
  %bytesperline4 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %bytesperline4 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %bytesperline4, align 1
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 1)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 65528)
  %11 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bytesperline, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %arrayidx, align 1
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %10)
  %mul = shl nuw nsw i32 %10, 12
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %mul)
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin)
  %exitcond.not = icmp eq i32 %umin, 0
  br i1 %exitcond.not, label %for.body.preheader.if.end_crit_edge, label %for.body.1

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.1:                                       ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %bytesperline4.1 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %17 = ptrtoint ptr %bytesperline4.1 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %bytesperline4.1, align 1
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 1)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 65528)
  %arrayidx14.1 = getelementptr inbounds [3 x i32], ptr %bytesperline, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx14.1, align 4
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx.1, align 1
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %20)
  %mul.1 = shl nuw nsw i32 %20, 12
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %mul.1)
  %arrayidx32.1 = getelementptr inbounds [3 x i32], ptr %sizeimage, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx32.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin)
  %exitcond.not.1 = icmp eq i32 %umin, 1
  br i1 %exitcond.not.1, label %for.body.1.if.end_crit_edge, label %for.body.2

for.body.1.if.end_crit_edge:                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.2 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2
  %bytesperline4.2 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  %27 = ptrtoint ptr %bytesperline4.2 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %bytesperline4.2, align 1
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 1)
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 65528)
  %arrayidx14.2 = getelementptr inbounds [3 x i32], ptr %bytesperline, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx14.2, align 4
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx.2, align 1
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 %30)
  %mul.2 = shl nuw nsw i32 %30, 12
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %mul.2)
  %arrayidx32.2 = getelementptr inbounds [3 x i32], ptr %sizeimage, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx32.2, align 4
  br label %if.end

if.end:                                           ; preds = %for.body.2, %for.body.1.if.end_crit_edge, %for.body.preheader.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %nformats = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 13
  %37 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nformats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp348.not = icmp eq i32 %38, 0
  br i1 %cmp348.not, label %if.end.for.end45_crit_edge, label %for.body36.lr.ph

if.end.for.end45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end45

for.body36.lr.ph:                                 ; preds = %if.end
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %pixelformat to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %pixelformat, align 1
  %formats = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 12
  %41 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %formats, align 4
  br label %for.body36

for.body36:                                       ; preds = %for.inc43.for.body36_crit_edge, %for.body36.lr.ph
  %j.09 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc44, %for.inc43.for.body36_crit_edge ]
  %pixelformat38 = getelementptr %struct.camss_format_info, ptr %42, i32 %j.09, i32 1
  %43 = ptrtoint ptr %pixelformat38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pixelformat38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %44)
  %cmp39 = icmp eq i32 %40, %44
  br i1 %cmp39, label %for.body36.for.end45_crit_edge, label %for.inc43

for.body36.for.end45_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end45

for.inc43:                                        ; preds = %for.body36
  %inc44 = add nuw i32 %j.09, 1
  %exitcond19.not = icmp eq i32 %inc44, %38
  br i1 %exitcond19.not, label %for.inc43.for.end45_crit_edge, label %for.inc43.for.body36_crit_edge

for.inc43.for.body36_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body36

for.inc43.for.end45_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end45

for.end45:                                        ; preds = %for.inc43.for.end45_crit_edge, %for.body36.for.end45_crit_edge, %if.end.for.end45_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end.for.end45_crit_edge ], [ %j.09, %for.body36.for.end45_crit_edge ], [ %38, %for.inc43.for.end45_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %38)
  %cmp47 = icmp eq i32 %j.0.lcssa, %38
  %spec.store.select = select i1 %cmp47, i32 0, i32 %j.0.lcssa
  %formats51 = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 12
  %45 = ptrtoint ptr %formats51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %formats51, align 4
  %47 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %fmt, align 1
  %height54 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %height54 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %height54, align 1
  %51 = call ptr @memset(ptr %fmt, i32 0, i32 192)
  %pixelformat55 = getelementptr %struct.camss_format_info, ptr %46, i32 %spec.store.select, i32 1
  %52 = ptrtoint ptr %pixelformat55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pixelformat55, align 4
  %pixelformat56 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %pixelformat56 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %pixelformat56, align 1
  %55 = tail call i32 @llvm.umax.i32(i32 %48, i32 1)
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 8191)
  %57 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %fmt, align 1
  %58 = tail call i32 @llvm.umax.i32(i32 %50, i32 1)
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 8191)
  %60 = ptrtoint ptr %height54 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %height54, align 1
  %planes = getelementptr %struct.camss_format_info, ptr %46, i32 %spec.store.select, i32 2
  %61 = ptrtoint ptr %planes to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %planes, align 4
  %num_planes87 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %63 = ptrtoint ptr %num_planes87 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %num_planes87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp9114.not = icmp eq i8 %62, 0
  br i1 %cmp9114.not, label %for.end45.cond.end181_crit_edge, label %for.body93.lr.ph

for.end45.cond.end181_crit_edge:                  ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end181

for.body93.lr.ph:                                 ; preds = %for.end45
  %bpl_alignment = getelementptr inbounds %struct.camss_video, ptr %video, i32 0, i32 10
  br label %for.body93

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %for.body93.lr.ph
  %i.115 = phi i32 [ 0, %for.body93.lr.ph ], [ %inc124, %for.body93.for.body93_crit_edge ]
  %64 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %fmt, align 1
  %arrayidx95 = getelementptr %struct.camss_format_info, ptr %46, i32 %spec.store.select, i32 3, i32 %i.115
  %66 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %67 to i32
  %div = udiv i32 %65, %conv96
  %denominator = getelementptr %struct.camss_format_info, ptr %46, i32 %spec.store.select, i32 3, i32 %i.115, i32 1
  %68 = ptrtoint ptr %denominator to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %denominator, align 1
  %conv99 = zext i8 %69 to i32
  %mul100 = mul i32 %div, %conv99
  %arrayidx101 = getelementptr %struct.camss_format_info, ptr %46, i32 %spec.store.select, i32 5, i32 %i.115
  %70 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx101, align 4
  %mul102 = mul i32 %mul100, %71
  %div1031 = lshr i32 %mul102, 3
  %72 = ptrtoint ptr %bpl_alignment to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bpl_alignment, align 4
  %sub = add i32 %73, -1
  %add = add i32 %sub, %div1031
  %neg = sub i32 0, %73
  %and = and i32 %add, %neg
  %arrayidx107 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.115
  %bytesperline108 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.115, i32 1
  %74 = ptrtoint ptr %bytesperline108 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %and, ptr %bytesperline108, align 1
  %75 = ptrtoint ptr %height54 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %height54, align 1
  %arrayidx110 = getelementptr %struct.camss_format_info, ptr %46, i32 %spec.store.select, i32 4, i32 %i.115
  %77 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx110, align 1
  %conv112 = zext i8 %78 to i32
  %div113 = udiv i32 %76, %conv112
  %denominator116 = getelementptr %struct.camss_format_info, ptr %46, i32 %spec.store.select, i32 4, i32 %i.115, i32 1
  %79 = ptrtoint ptr %denominator116 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %denominator116, align 1
  %conv117 = zext i8 %80 to i32
  %mul118 = mul i32 %and, %div113
  %mul119 = mul i32 %mul118, %conv117
  %81 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %mul119, ptr %arrayidx107, align 1
  %inc124 = add nuw nsw i32 %i.115, 1
  %82 = ptrtoint ptr %num_planes87 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_planes87, align 1
  %conv90 = zext i8 %83 to i32
  %cmp91 = icmp ult i32 %inc124, %conv90
  br i1 %cmp91, label %for.body93.for.body93_crit_edge, label %for.body93.cond.end181_crit_edge

for.body93.cond.end181_crit_edge:                 ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end181

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body93

cond.end181:                                      ; preds = %for.body93.cond.end181_crit_edge, %for.end45.cond.end181_crit_edge
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %84 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 1, ptr %field, align 1
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %85 = ptrtoint ptr %colorspace to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 8, ptr %colorspace, align 1
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 7
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %flags, align 1
  %87 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %87, align 1
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 9
  %89 = ptrtoint ptr %quantization to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %quantization, align 1
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 10
  %90 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 2, ptr %xfer_func, align 1
  %91 = ptrtoint ptr %line_based to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %line_based, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool185.not = icmp eq i32 %92, 0
  br i1 %tobool185.not, label %cond.end181.if.end264_crit_edge, label %for.cond187.preheader

cond.end181.if.end264_crit_edge:                  ; preds = %cond.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

for.cond187.preheader:                            ; preds = %cond.end181
  %93 = ptrtoint ptr %num_planes87 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_planes87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp19017.not = icmp eq i8 %94, 0
  br i1 %cmp19017.not, label %for.cond187.preheader.if.end264_crit_edge, label %for.cond187.preheader.for.body192_crit_edge

for.cond187.preheader.for.body192_crit_edge:      ; preds = %for.cond187.preheader
  br label %for.body192

for.cond187.preheader.if.end264_crit_edge:        ; preds = %for.cond187.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

for.body192:                                      ; preds = %for.inc261.for.body192_crit_edge, %for.cond187.preheader.for.body192_crit_edge
  %i.218 = phi i32 [ %inc262, %for.inc261.for.body192_crit_edge ], [ 0, %for.cond187.preheader.for.body192_crit_edge ]
  %arrayidx194 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.218
  %bytesperline195 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 %i.218, i32 1
  %95 = ptrtoint ptr %bytesperline195 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %bytesperline195, align 1
  %97 = tail call i32 @llvm.umax.i32(i32 %96, i32 1)
  %98 = tail call i32 @llvm.umin.i32(i32 %97, i32 65528)
  %99 = ptrtoint ptr %bytesperline195 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 4)
  store i32 %98, ptr %bytesperline195, align 1
  %100 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %arrayidx194, align 1
  %102 = tail call i32 @llvm.umax.i32(i32 %101, i32 %98)
  %mul221 = shl nuw nsw i32 %98, 12
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 %mul221)
  %104 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %arrayidx194, align 1
  %div232 = udiv i32 %103, %98
  %arrayidx234 = getelementptr [3 x i32], ptr %bytesperline, i32 0, i32 %i.218
  %105 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx234, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %106)
  %cmp235 = icmp ult i32 %98, %106
  br i1 %cmp235, label %if.then237, label %for.body192.if.end242_crit_edge

for.body192.if.end242_crit_edge:                  ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242

if.then237:                                       ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #14
  %add239 = add i32 %106, 7
  %and240 = and i32 %add239, -8
  %107 = ptrtoint ptr %bytesperline195 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %and240, ptr %bytesperline195, align 1
  br label %if.end242

if.end242:                                        ; preds = %if.then237, %for.body192.if.end242_crit_edge
  %108 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %arrayidx194, align 1
  %110 = ptrtoint ptr %bytesperline195 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %bytesperline195, align 1
  %mul245 = mul i32 %111, %div232
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %mul245)
  %cmp246 = icmp ult i32 %109, %mul245
  br i1 %cmp246, label %if.then248, label %if.end242.if.end252_crit_edge

if.end242.if.end252_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.then248:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %mul245, ptr %arrayidx194, align 1
  br label %if.end252

if.end252:                                        ; preds = %if.then248, %if.end242.if.end252_crit_edge
  %113 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %arrayidx194, align 1
  %arrayidx254 = getelementptr [3 x i32], ptr %sizeimage, i32 0, i32 %i.218
  %115 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp255 = icmp ult i32 %114, %116
  br i1 %cmp255, label %if.then257, label %if.end252.for.inc261_crit_edge

if.end252.for.inc261_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc261

if.then257:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %arrayidx194, align 1
  br label %for.inc261

for.inc261:                                       ; preds = %if.then257, %if.end252.for.inc261_crit_edge
  %inc262 = add nuw nsw i32 %i.218, 1
  %118 = ptrtoint ptr %num_planes87 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %num_planes87, align 1
  %conv189 = zext i8 %119 to i32
  %cmp190 = icmp ult i32 %inc262, %conv189
  br i1 %cmp190, label %for.inc261.for.body192_crit_edge, label %for.inc261.if.end264_crit_edge

for.inc261.if.end264_crit_edge:                   ; preds = %for.inc261
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

for.inc261.for.body192_crit_edge:                 ; preds = %for.inc261
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body192

if.end264:                                        ; preds = %for.inc261.if.end264_crit_edge, %for.cond187.preheader.if.end264_crit_edge, %cond.end181.if.end264_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sizeimage) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bytesperline) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 192) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call) #12
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call3 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %call3) #15
  %call8 = tail call i32 @v4l2_fh_release(ptr noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call3, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %call1 = tail call i32 @vb2_fop_release(ptr noundef %file) #12
  tail call void @v4l2_pipeline_pm_put(ptr noundef %call) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_querycap(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.20, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.21, i32 noundef 32) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_enum_fmt(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %mbus_code = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 5
  %2 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbus_code, align 4
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %type1 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %nformats = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nformats, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp2.not = icmp ult i32 %9, %11
  br i1 %cmp2.not, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  %formats = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %for.body.lr.ph
  %k.089 = phi i32 [ -1, %for.body.lr.ph ], [ %k.2, %for.inc38.for.body_crit_edge ]
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc38.for.body_crit_edge ]
  br i1 %cmp7.not, label %for.body.if.end10_crit_edge, label %land.lhs.true

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %formats, align 4
  %arrayidx = getelementptr %struct.camss_format_info, ptr %13, i32 %i.087
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %3)
  %cmp8.not = icmp eq i32 %15, %3
  br i1 %cmp8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.for.inc38_crit_edge

land.lhs.true.for.inc38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.087)
  %cmp1282 = icmp sgt i32 %i.087, 0
  br i1 %cmp1282, label %if.end10.for.body13_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end10.for.body13_crit_edge:                    ; preds = %if.end10
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %if.end10.for.body13_crit_edge
  %j.083 = phi i32 [ %inc, %for.inc.for.body13_crit_edge ], [ 0, %if.end10.for.body13_crit_edge ]
  br i1 %cmp7.not, label %for.body13.if.end21_crit_edge, label %land.lhs.true15

for.body13.if.end21_crit_edge:                    ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true15:                                  ; preds = %for.body13
  %16 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %formats, align 4
  %arrayidx17 = getelementptr %struct.camss_format_info, ptr %17, i32 %j.083
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp19.not = icmp eq i32 %19, %3
  br i1 %cmp19.not, label %land.lhs.true15.if.end21_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true15.if.end21_crit_edge, %for.body13.if.end21_crit_edge
  %20 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %formats, align 4
  %pixelformat = getelementptr %struct.camss_format_info, ptr %21, i32 %i.087, i32 1
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat, align 4
  %pixelformat26 = getelementptr %struct.camss_format_info, ptr %21, i32 %j.083, i32 1
  %24 = ptrtoint ptr %pixelformat26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixelformat26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp27 = icmp eq i32 %23, %25
  br i1 %cmp27, label %if.end21.for.end_crit_edge, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.083, 1
  %exitcond.not = icmp eq i32 %inc, %i.087
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge, %if.end10.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %j.083, %if.end21.for.end_crit_edge ], [ %i.087, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %i.087)
  %cmp30 = icmp eq i32 %j.0.lcssa, %i.087
  %inc32 = zext i1 %cmp30 to i32
  %spec.select = add i32 %k.089, %inc32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %9)
  %cmp35 = icmp eq i32 %spec.select, %9
  br i1 %cmp35, label %for.end.for.end40_crit_edge, label %for.end.for.inc38_crit_edge

for.end.for.inc38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40

for.inc38:                                        ; preds = %for.end.for.inc38_crit_edge, %land.lhs.true.for.inc38_crit_edge
  %k.2 = phi i32 [ %k.089, %land.lhs.true.for.inc38_crit_edge ], [ %spec.select, %for.end.for.inc38_crit_edge ]
  %inc39 = add nuw i32 %i.087, 1
  %exitcond94.not = icmp eq i32 %inc39, %11
  br i1 %exitcond94.not, label %for.inc38.for.end40_crit_edge, label %for.inc38.for.body_crit_edge

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc38.for.end40_crit_edge:                    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end40

for.end40:                                        ; preds = %for.inc38.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %i.0.lcssa.ph = phi i32 [ %11, %for.inc38.for.end40_crit_edge ], [ %i.087, %for.end.for.end40_crit_edge ]
  %k.3.ph = phi i32 [ %k.2, %for.inc38.for.end40_crit_edge ], [ %9, %for.end.for.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %k.3.ph)
  %cmp41 = icmp eq i32 %k.3.ph, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.3.ph, i32 %9)
  %cmp43 = icmp ult i32 %k.3.ph, %9
  %or.cond = select i1 %cmp41, i1 true, i1 %cmp43
  br i1 %or.cond, label %for.end40.cleanup_crit_edge, label %if.end45

for.end40.cleanup_crit_edge:                      ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #14
  %formats46 = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %formats46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %formats46, align 4
  %pixelformat48 = getelementptr %struct.camss_format_info, ptr %27, i32 %i.0.lcssa.ph, i32 1
  %28 = ptrtoint ptr %pixelformat48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixelformat48, align 4
  %pixelformat49 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %30 = ptrtoint ptr %pixelformat49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pixelformat49, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %for.end40.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_g_fmt(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %active_fmt = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4
  %2 = call ptr @memcpy(ptr %f, ptr %active_fmt, i32 204)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_s_fmt(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 1, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__video_try_fmt(ptr noundef %1, ptr noundef %f)
  %active_fmt = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %active_fmt, ptr %f, i32 204)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_try_fmt(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call fastcc void @__video_try_fmt(ptr noundef %1, ptr noundef %f)
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
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.23, i32 noundef 32) #12
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @video_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %input) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %input, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @video_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %input) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp = icmp eq i32 %input, 0
  %cond = select i1 %cmp, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @video_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nformats = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nformats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24.not = icmp eq i32 %5, 0
  br i1 %cmp24.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %formats = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %formats, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pixelformat = getelementptr %struct.camss_format_info, ptr %7, i32 %i.025, i32 1
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1 = icmp eq i32 %11, %9
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.025, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %5)
  %cmp5 = icmp eq i32 %i.0.lcssa, %5
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 4
  %13 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %13, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8191, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %16 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %min_height, align 4
  %line_based = getelementptr inbounds %struct.camss_video, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %line_based to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %line_based, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool8.not, i32 8191, i32 4096
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %19 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %max_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %20 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %21 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @camss_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @msm_video_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 967, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 981, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @msm_video_register._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @msm_video_register._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 988, i32 3}
!13 = !{ptr @msm_video_register._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @msm_video_register._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @msm_video_register.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 993, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 1022, i32 3}
!20 = !{ptr @msm_video_register._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @msm_video_register._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 1039, i32 3}
!24 = !{ptr @msm_video_register._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @msm_video_register._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @msm_video_vb2_q_ops, !27, !"msm_video_vb2_q_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 559, i32 29}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @formats_pix_8x16, !32, !"formats_pix_8x16", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 185, i32 39}
!33 = !{ptr @formats_rdi_8x16, !34, !"formats_rdi_8x16", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 50, i32 39}
!35 = !{ptr @formats_pix_8x96, !36, !"formats_pix_8x96", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 220, i32 39}
!37 = !{ptr @formats_rdi_8x96, !38, !"formats_rdi_8x96", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 87, i32 39}
!39 = !{ptr @formats_rdi_845, !40, !"formats_rdi_845", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 136, i32 39}
!41 = !{ptr @msm_vid_fops, !42, !"msm_vid_fops", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 889, i32 42}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 858, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @video_open._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @video_open._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @msm_vid_ioctl_ops, !49, !"msm_vid_ioctl_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 811, i32 36}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 579, i32 23}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 580, i32 21}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 581, i32 49}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/qcom/camss/camss-video.c", i32 793, i32 23}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148609733, i64 2148609759, i64 2148609788, i64 2148609822, i64 2148609853, i64 2148609876}
!68 = !{i64 2148698209}
!69 = !{i64 2148612918, i64 2148612950, i64 2148612979, i64 2148613013, i64 2148613044, i64 2148613067}
!70 = !{i64 2148698438}
!71 = !{i64 2148612198, i64 2148612224, i64 2148612253, i64 2148612287, i64 2148612318, i64 2148612341}
!72 = !{!"branch_weights", i32 2000, i32 1}
