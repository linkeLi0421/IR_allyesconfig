; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-csc-scaler.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-csc-scaler.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipu_csc_scaler_q_data = type { %struct.v4l2_pix_format, %struct.v4l2_rect }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.ipu_csc_scaler_priv = type { %struct.imx_media_video_dev, ptr, ptr, ptr, %struct.mutex }
%struct.imx_media_video_dev = type { ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, ptr, %struct.list_head }
%struct.imx_media_dev = type { %struct.media_device, %struct.v4l2_device, %struct.media_pipeline, %struct.mutex, %struct.list_head, [2 x ptr], %struct.v4l2_async_notifier, ptr, [2 x [6 x ptr]] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ipu_csc_scaler_ctx = type { ptr, %struct.v4l2_fh, [2 x %struct.ipu_csc_scaler_q_data], ptr, %struct.v4l2_ctrl_handler, i32, i8, i8, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.ipu_image = type { %struct.v4l2_pix_format, %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.ipu_image_convert_run = type { ptr, i32, i32, i32, %struct.list_head }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@imx_media_csc_scaler_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"imx_media_csc_scaler_device_register\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/staging/media/imx/imx-media-csc-scaler.c\00", [47 x i8] zeroinitializer }, align 32
@imx_media_csc_scaler_device_register._entry_ptr = internal global ptr @imx_media_csc_scaler_device_register._entry, section ".printk_index", align 4
@imx_media_csc_scaler_device_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@imx_media_csc_scaler_device_register._entry_ptr.5 = internal global ptr @imx_media_csc_scaler_device_register._entry.3, section ".printk_index", align 4
@imx_media_csc_scaler_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_videodev_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @ipu_csc_scaler_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"ipu_ic_pp csc/scaler\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @ipu_csc_scaler_video_device_release, ptr @ipu_csc_scaler_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr null, ptr @job_abort }, [20 x i8] zeroinitializer }, align 32
@imx_media_csc_scaler_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Failed to init mem2mem device: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"imx_media_csc_scaler_device_init\00", [63 x i8] zeroinitializer }, align 32
@imx_media_csc_scaler_device_init._entry_ptr = internal global ptr @imx_media_csc_scaler_device_init._entry, section ".printk_index", align 4
@__UNIQUE_ID_description337 = internal constant [60 x i8] c"imx6_media.description=i.MX IPUv3 mem2mem scaler/CSC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author338 = internal constant [56 x i8] c"imx6_media.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [53 x i8] c"imx6_media.file=drivers/staging/media/imx/imx6-media\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [23 x i8] c"imx6_media.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipu_csc_scaler_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @ipu_csc_scaler_open, ptr @ipu_csc_scaler_release }, [60 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @ipu_csc_scaler_querycap, ptr @ipu_csc_scaler_enum_fmt, ptr null, ptr @ipu_csc_scaler_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @ipu_csc_scaler_g_fmt, ptr null, ptr @ipu_csc_scaler_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipu_csc_scaler_s_fmt, ptr null, ptr @ipu_csc_scaler_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipu_csc_scaler_try_fmt, ptr null, ptr @ipu_csc_scaler_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipu_csc_scaler_g_selection, ptr @ipu_csc_scaler_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_q_data_default = internal constant { %struct.ipu_csc_scaler_q_data, [32 x i8] } { %struct.ipu_csc_scaler_q_data { %struct.v4l2_pix_format { i32 720, i32 576, i32 842093913, i32 1, i32 720, i32 622080, i32 8, i32 0, i32 0, %union.anon.96 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_rect { i32 0, i32 0, i32 720, i32 576 } }, [32 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_open.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx6_media\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipu_csc_scaler_open\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Created instance %p, m2m_ctx: %p\0A\00", [62 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @ipu_csc_scaler_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @ipu_csc_scaler_buf_prepare, ptr null, ptr null, ptr @ipu_csc_scaler_start_streaming, ptr @ipu_csc_scaler_stop_streaming, ptr @ipu_csc_scaler_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@ipu_csc_scaler_queue_setup.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ipu_csc_scaler_queue_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"get %d buffer(s) of size %d each.\0A\00", [61 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ipu_csc_scaler_buf_prepare\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"type: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: field isn't supported\0A\00", [37 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: data will not fit into plane (%lu < %lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: removing old ICC\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ipu_csc_scaler_start_streaming\00", [33 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_start_streaming._entry_ptr = internal global ptr @ipu_csc_scaler_start_streaming._entry, section ".printk_index", align 4
@ipu_csc_scaler_start_streaming._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: %s: error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_start_streaming._entry_ptr.23 = internal global ptr @ipu_csc_scaler_start_streaming._entry.21, section ".printk_index", align 4
@ipu_csc_scaler_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"imx_media_csc_scaler:713:(hdlr)->_lock\00", [57 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ipu_csc_scaler_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_release.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipu_csc_scaler_release\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Releasing instance %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx-csc-scaler\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: %s: queue busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipu_csc_scaler_s_fmt\00", [43 x i8] zeroinitializer }, align 32
@ipu_csc_scaler_s_fmt._entry_ptr = internal global ptr @ipu_csc_scaler_s_fmt._entry, section ".printk_index", align 4
@device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: %s: failed to queue: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_run\00", [21 x i8] zeroinitializer }, align 32
@device_run._entry_ptr = internal global ptr @device_run._entry, section ".printk_index", align 4
@switch.table.ipu_csc_scaler_g_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 256, i32 192], [44 x i8] zeroinitializer }, align 32
@switch.table.ipu_csc_scaler_s_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 256, i32 192], [44 x i8] zeroinitializer }, align 32
@switch.table.ipu_csc_scaler_s_fmt.33 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 256, i32 192], [44 x i8] zeroinitializer }, align 32
@switch.table.ipu_csc_scaler_try_fmt = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 192, i32 256, i32 192, i32 256, i32 192, i32 256, i32 192], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 9963796, i64 9963797, i64 9963810]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 857, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 861, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 889, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [33 x i8] c"ipu_csc_scaler_videodev_template\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 837, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 823, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 908, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"ipu_csc_scaler_fops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 814, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"ipu_csc_scaler_ioctl_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 382, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"ipu_csc_scaler_q_data_default\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 733, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 785, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"ipu_csc_scaler_qops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 571, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 440, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 454, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 460, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 470, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1163, i32 7 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 520, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 538, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 713, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [24 x i8] c"ipu_csc_scaler_ctrl_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 705, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 804, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 155, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 158, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 250, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [52 x i8] c"../drivers/staging/media/imx/imx-media-csc-scaler.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 134, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [34 x i8] c"switch.table.ipu_csc_scaler_g_fmt\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [34 x i8] c"switch.table.ipu_csc_scaler_s_fmt\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [37 x i8] c"switch.table.ipu_csc_scaler_s_fmt.33\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [36 x i8] c"switch.table.ipu_csc_scaler_try_fmt\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @device_run._entry, ptr @device_run._entry_ptr, ptr @imx_media_csc_scaler_device_init._entry, ptr @imx_media_csc_scaler_device_init._entry_ptr, ptr @imx_media_csc_scaler_device_register._entry, ptr @imx_media_csc_scaler_device_register._entry.3, ptr @imx_media_csc_scaler_device_register._entry_ptr, ptr @imx_media_csc_scaler_device_register._entry_ptr.5, ptr @ipu_csc_scaler_s_fmt._entry, ptr @ipu_csc_scaler_s_fmt._entry_ptr, ptr @ipu_csc_scaler_start_streaming._entry, ptr @ipu_csc_scaler_start_streaming._entry.21, ptr @ipu_csc_scaler_start_streaming._entry_ptr, ptr @ipu_csc_scaler_start_streaming._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @imx_media_csc_scaler_device_init.__key, ptr @.str.6, ptr @ipu_csc_scaler_videodev_template, ptr @m2m_ops, ptr @.str.7, ptr @.str.8, ptr @ipu_csc_scaler_fops, ptr @ipu_csc_scaler_ioctl_ops, ptr @ipu_csc_scaler_q_data_default, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ipu_csc_scaler_qops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @ipu_csc_scaler_init_controls._key, ptr @.str.24, ptr @ipu_csc_scaler_ctrl_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.ipu_csc_scaler_g_fmt, ptr @switch.table.ipu_csc_scaler_s_fmt, ptr @switch.table.ipu_csc_scaler_s_fmt.33, ptr @switch.table.ipu_csc_scaler_try_fmt], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_csc_scaler_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_csc_scaler_device_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_csc_scaler_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_videodev_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_csc_scaler_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_q_data_default to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_start_streaming._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_csc_scaler_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_csc_scaler_g_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_csc_scaler_s_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_csc_scaler_s_fmt.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_csc_scaler_try_fmt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_csc_scaler_device_register(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %md = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %vdev, i32 0, i32 3
  %2 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md, align 4
  %v4l2_dev = getelementptr inbounds %struct.imx_media_dev, ptr %3, i32 0, i32 1
  %v4l2_dev2 = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %v4l2_dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %v4l2_dev, ptr %v4l2_dev2, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %1, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %9 = ptrtoint ptr %v4l2_dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v4l2_dev2, align 4
  %name11 = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  br i1 %tobool.not, label %do.end8, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name11) #11
  br label %cleanup

do.end8:                                          ; preds = %entry
  %name13 = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 12
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end8.video_device_node_name.exit_crit_edge

do.end8.video_device_node_name.exit_crit_edge:    ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end8.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %do.end8.video_device_node_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name11, ptr noundef %name13, ptr noundef %retval.0.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.end
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_media_csc_scaler_device_unregister(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  tail call void @video_unregister_device(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_media_csc_scaler_device_init(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 184) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %md2 = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %md2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %md, ptr %md2, align 8
  %2 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md, align 8
  %dev4 = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev4, align 4
  %mutex = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @imx_media_csc_scaler_device_init.__key) #8
  %call5 = tail call ptr @video_device_alloc() #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.err_vfd_crit_edge, label %if.end8

if.end.err_vfd_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_vfd

if.end8:                                          ; preds = %if.end
  %5 = call ptr @memcpy(ptr %call5, ptr @ipu_csc_scaler_videodev_template, i32 1352)
  %lock = getelementptr inbounds %struct.video_device, ptr %call5, i32 0, i32 26
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mutex, ptr %lock, align 8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %call7.i.i, align 8
  %list = getelementptr inbounds %struct.imx_media_video_dev, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.imx_media_video_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call5, i32 0, i32 5, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call12 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #8
  %m2m_dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call12, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call12 to i32
  %name = getelementptr inbounds %struct.imx_media_dev, ptr %md, i32 0, i32 1, i32 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %12) #11
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %err_vfd

err_vfd:                                          ; preds = %if.then15, %if.end.err_vfd_crit_edge
  %ret.0 = phi ptr [ %call12, %if.then15 ], [ inttoptr (i32 -12 to ptr), %if.end.err_vfd_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_vfd, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %err_vfd ], [ %call7.i.i, %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_csc_scaler_video_device_release(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %vdev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %m2m_dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %3) #8
  tail call void @video_device_release(ptr noundef %vdev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 528) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rot_mode = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %rot_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rot_mode, align 8
  %fh = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call ptr @video_devdata(ptr noundef %file) #8
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call2) #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %m2m_dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 4
  %call6 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %7, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ipu_csc_scaler_queue_init) #8
  %m2m_ctx = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call6 to i32
  br label %err_ctx

if.end15:                                         ; preds = %if.end
  %ctrl_hdlr.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 4
  %call.i62 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdlr.i, i32 noundef 3, ptr noundef nonnull @ipu_csc_scaler_init_controls._key, ptr noundef nonnull @.str.24) #8
  %call1.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdlr.i, ptr noundef nonnull @ipu_csc_scaler_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdlr.i, ptr noundef nonnull @ipu_csc_scaler_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call3.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdlr.i, ptr noundef nonnull @ipu_csc_scaler_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #8
  %error.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 4, i32 9
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %ipu_csc_scaler_init_controls.exit.thread, label %ipu_csc_scaler_init_controls.exit

ipu_csc_scaler_init_controls.exit.thread:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdlr.i) #8
  br label %if.end19

ipu_csc_scaler_init_controls.exit:                ; preds = %if.end15
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdlr.i) #8
  %12 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %ipu_csc_scaler_init_controls.exit.if.end19_crit_edge, label %err_ctrls

ipu_csc_scaler_init_controls.exit.if.end19_crit_edge: ; preds = %ipu_csc_scaler_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %ipu_csc_scaler_init_controls.exit.if.end19_crit_edge, %ipu_csc_scaler_init_controls.exit.thread
  %ctrl_handler = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ctrl_hdlr.i, ptr %ctrl_handler, align 8
  %q_data = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %q_data, ptr @ipu_csc_scaler_q_data_default, i32 64)
  %arrayidx22 = getelementptr %struct.ipu_csc_scaler_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %16 = call ptr @memcpy(ptr %arrayidx22, ptr @ipu_csc_scaler_q_data_default, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_csc_scaler_open.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_csc_scaler_open, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !100

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_ctx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_csc_scaler_open.__UNIQUE_ID_ddebug335, ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef nonnull %call7.i.i, ptr noundef %20) #8
  br label %cleanup

err_ctrls:                                        ; preds = %ipu_csc_scaler_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 8
  tail call void @v4l2_m2m_ctx_release(ptr noundef %22) #8
  br label %err_ctx

err_ctx:                                          ; preds = %err_ctrls, %if.then11
  %ret.0 = phi i32 [ %9, %if.then11 ], [ %13, %err_ctrls ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #8
  tail call void @v4l2_fh_exit(ptr noundef %fh) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_ctx, %if.then27, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_ctx ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_release(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_csc_scaler_release.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_csc_scaler_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_csc_scaler_release.__UNIQUE_ID_ddebug336, ptr noundef %5, ptr noundef nonnull @.str.26, ptr noundef %add.ptr) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %7) #8
  tail call void @v4l2_fh_del(ptr noundef %3) #8
  tail call void @v4l2_fh_exit(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %src_vq, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 504)
  %2 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ipu_csc_scaler_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %7 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %8 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16384, ptr %timestamp_flags, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %mutex = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %10, i32 0, i32 4
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mutex, ptr %lock, align 4
  %12 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = getelementptr inbounds i8, ptr %dst_vq, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 504)
  %18 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %19 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %20 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %21 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 744, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %22 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ipu_csc_scaler_qops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %23 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %24 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16384, ptr %timestamp_flags10, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %mutex12 = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %26, i32 0, i32 4
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mutex12, ptr %lock13, align 4
  %28 = load ptr, ptr %priv, align 4
  %dev15 = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev15, align 4
  %dev16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %31 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dev16, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbuffers, align 4
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else.i [
    i32 2, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge22
    i32 3, label %entry.if.then.i_crit_edge23
    i32 8, label %entry.if.then.i_crit_edge24
    i32 5, label %entry.if.then.i_crit_edge25
    i32 7, label %entry.if.then.i_crit_edge26
    i32 12, label %entry.if.then.i_crit_edge27
    i32 14, label %entry.if.then.i_crit_edge28
  ]

entry.if.then.i_crit_edge28:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge26:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge25:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge23:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge22, %entry.if.then.i_crit_edge23, %entry.if.then.i_crit_edge24, %entry.if.then.i_crit_edge25, %entry.if.then.i_crit_edge26, %entry.if.then.i_crit_edge27, %entry.if.then.i_crit_edge28
  %q_data.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2
  br label %get_q_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.i = getelementptr %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i20 = phi ptr [ %q_data.i, %if.then.i ], [ %arrayidx15.i, %if.else.i ]
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %retval.0.i20, i32 0, i32 5
  %7 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizeimage, align 4
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp = icmp ult i32 %12, %8
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nplanes, align 4
  %14 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %sizes, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_csc_scaler_queue_setup.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_csc_scaler_queue_setup, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !100

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_csc_scaler_queue_setup.__UNIQUE_ID_ddebug331, ptr noundef %18, ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_csc_scaler_buf_prepare, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug332, ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %11, label %do.end.if.end53_crit_edge [
    i32 2, label %do.end.if.then26_crit_edge
    i32 10, label %do.end.if.then26_crit_edge130
    i32 3, label %do.end.if.then26_crit_edge131
    i32 8, label %do.end.if.then26_crit_edge132
    i32 5, label %do.end.if.then26_crit_edge133
    i32 7, label %do.end.if.then26_crit_edge134
    i32 12, label %do.end.if.then26_crit_edge135
    i32 14, label %do.end.if.then26_crit_edge136
  ]

do.end.if.then26_crit_edge136:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.then26_crit_edge135:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.then26_crit_edge134:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.then26_crit_edge133:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.then26_crit_edge132:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.then26_crit_edge131:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.then26_crit_edge130:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.then26_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

do.end.if.end53_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then26:                                        ; preds = %do.end.if.then26_crit_edge, %do.end.if.then26_crit_edge130, %do.end.if.then26_crit_edge131, %do.end.if.then26_crit_edge132, %do.end.if.then26_crit_edge133, %do.end.if.then26_crit_edge134, %do.end.if.then26_crit_edge135, %do.end.if.then26_crit_edge136
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %13 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %14, label %do.body34 [
    i32 0, label %if.end30.thread
    i32 1, label %if.then26.if.end53thread-pre-split_crit_edge
  ]

if.then26.if.end53thread-pre-split_crit_edge:     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53thread-pre-split

if.end30.thread:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %field, align 4
  br label %if.end53thread-pre-split

do.body34:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_csc_scaler_buf_prepare, %if.then46)) #8
          to label %cleanup [label %if.then46], !srcloc !100

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %dev48 = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug333, ptr noundef %20, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end53thread-pre-split:                         ; preds = %if.end30.thread, %if.then26.if.end53thread-pre-split_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %1, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53thread-pre-split, %do.end.if.end53_crit_edge
  %22 = phi i32 [ %.pr, %if.end53thread-pre-split ], [ %11, %do.end.if.end53_crit_edge ]
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %22, label %if.else.i [
    i32 2, label %if.end53.if.then.i_crit_edge
    i32 10, label %if.end53.if.then.i_crit_edge137
    i32 3, label %if.end53.if.then.i_crit_edge138
    i32 8, label %if.end53.if.then.i_crit_edge139
    i32 5, label %if.end53.if.then.i_crit_edge140
    i32 7, label %if.end53.if.then.i_crit_edge141
    i32 12, label %if.end53.if.then.i_crit_edge142
    i32 14, label %if.end53.if.then.i_crit_edge143
  ]

if.end53.if.then.i_crit_edge143:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end53.if.then.i_crit_edge142:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end53.if.then.i_crit_edge141:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end53.if.then.i_crit_edge140:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end53.if.then.i_crit_edge139:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end53.if.then.i_crit_edge138:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end53.if.then.i_crit_edge137:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end53.if.then.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.end53.if.then.i_crit_edge, %if.end53.if.then.i_crit_edge137, %if.end53.if.then.i_crit_edge138, %if.end53.if.then.i_crit_edge139, %if.end53.if.then.i_crit_edge140, %if.end53.if.then.i_crit_edge141, %if.end53.if.then.i_crit_edge142, %if.end53.if.then.i_crit_edge143
  %q_data.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %3, i32 0, i32 2
  br label %get_q_data.exit

if.else.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15.i = getelementptr %struct.ipu_csc_scaler_ctx, ptr %3, i32 0, i32 2, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i111 = phi ptr [ %q_data.i, %if.then.i ], [ %arrayidx15.i, %if.else.i ]
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %retval.0.i111, i32 0, i32 5
  %24 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %26 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp57.not = icmp eq i32 %25, 0
  br i1 %cmp57.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.do.body59_crit_edge

vb2_plane_size.exit.do.body59_crit_edge:          ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %get_q_data.exit
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %25)
  %cmp57129 = icmp ult i32 %29, %25
  br i1 %cmp57129, label %vb2_plane_size.exit.thread.do.body59_crit_edge, label %if.then.i123

vb2_plane_size.exit.thread.do.body59_crit_edge:   ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

do.body59:                                        ; preds = %vb2_plane_size.exit.thread.do.body59_crit_edge, %vb2_plane_size.exit.do.body59_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_csc_scaler_buf_prepare, %if.then71)) #8
          to label %cleanup [label %if.then71], !srcloc !100

if.then71:                                        ; preds = %do.body59
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %dev73 = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev73, align 4
  %34 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i115 = icmp eq i32 %35, 0
  br i1 %cmp.not.i115, label %if.then71.vb2_plane_size.exit119_crit_edge, label %if.then.i117

if.then71.vb2_plane_size.exit119_crit_edge:       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit119

if.then.i117:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %length.i116 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %36 = ptrtoint ptr %length.i116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i116, align 8
  br label %vb2_plane_size.exit119

vb2_plane_size.exit119:                           ; preds = %if.then.i117, %if.then71.vb2_plane_size.exit119_crit_edge
  %retval.0.i118 = phi i32 [ %37, %if.then.i117 ], [ 0, %if.then71.vb2_plane_size.exit119_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug334, ptr noundef %33, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i118, i32 noundef %25) #8
  br label %cleanup

if.then.i123:                                     ; preds = %vb2_plane_size.exit.thread
  %38 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %25)
  %cmp1.i = icmp ult i32 %39, %25
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i123.if.end42.i_crit_edge

if.then.i123.if.end42.i_crit_edge:                ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i123
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !101

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i123.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %41, %if.then38.i ], [ %25, %if.then.i123.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %42 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit119, %do.body59, %vb2_plane_size.exit.cleanup_crit_edge, %if.then46, %do.body34
  %retval.0 = phi i32 [ -22, %if.then46 ], [ -22, %vb2_plane_size.exit119 ], [ -22, %do.body34 ], [ -22, %do.body59 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %in = alloca %struct.ipu_image, align 4
  %out = alloca %struct.ipu_image, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %md = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %md, align 4
  %ipu2 = getelementptr inbounds %struct.imx_media_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ipu2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipu2, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #8
  %8 = getelementptr inbounds i8, ptr %in, i32 64
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %out) #8
  %10 = getelementptr inbounds i8, ptr %out, i32 48
  %11 = call ptr @memset(ptr %10, i32 255, i32 32)
  %m2m_ctx = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 4
  %14 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %call3 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %13, i32 noundef %cond) #8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call3, i32 0, i32 28
  %16 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %icc = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %icc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %icc, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %v4l2_dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %24, i32 0, i32 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name) #11
  %25 = ptrtoint ptr %icc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %icc, align 4
  tail call void @ipu_image_convert_unprepare(ptr noundef %26) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %q_data.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2
  %27 = call ptr @memcpy(ptr %in, ptr %q_data.i, i32 48)
  %28 = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 9
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.then.i, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  %colorspace.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 6
  %31 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %colorspace.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %32, label %cond.false7.i [
    i32 3, label %if.then.i.cond.end11.i_crit_edge
    i32 12, label %if.then.i.cond.end11.i_crit_edge102
    i32 10, label %cond.end11.fold.split.i
  ]

if.then.i.cond.end11.i_crit_edge102:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11.i

if.then.i.cond.end11.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11.i

cond.false7.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp9.i = icmp eq i32 %32, 2
  %cond.i = select i1 %cmp9.i, i32 8, i32 1
  br label %cond.end11.i

cond.end11.fold.split.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.end11.fold.split.i, %cond.false7.i, %if.then.i.cond.end11.i_crit_edge, %if.then.i.cond.end11.i_crit_edge102
  %cond12.i = phi i32 [ 2, %if.then.i.cond.end11.i_crit_edge ], [ %cond.i, %cond.false7.i ], [ 2, %if.then.i.cond.end11.i_crit_edge102 ], [ 6, %cond.end11.fold.split.i ]
  %34 = getelementptr inbounds %struct.v4l2_pix_format, ptr %in, i32 0, i32 9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond12.i, ptr %34, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %cond.end11.i, %if.end9.if.end.i_crit_edge
  %quantization.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 10
  %36 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quantization.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp14.i = icmp eq i32 %37, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end.i.ipu_image_from_q_data.exit_crit_edge

if.end.i.ipu_image_from_q_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipu_image_from_q_data.exit

if.then15.i:                                      ; preds = %if.end.i
  %colorspace16.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 6
  %38 = ptrtoint ptr %colorspace16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %colorspace16.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %39, label %cond.false26.i [
    i32 3, label %if.then15.i.cond.end32.i_crit_edge
    i32 12, label %if.then15.i.cond.end32.i_crit_edge103
    i32 10, label %cond.end32.fold.split.i
  ]

if.then15.i.cond.end32.i_crit_edge103:            ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32.i

if.then15.i.cond.end32.i_crit_edge:               ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32.i

cond.false26.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp28.i = icmp eq i32 %39, 2
  %cond29.i = select i1 %cmp28.i, i32 8, i32 1
  br label %cond.end32.i

cond.end32.fold.split.i:                          ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32.i

cond.end32.i:                                     ; preds = %cond.end32.fold.split.i, %cond.false26.i, %if.then15.i.cond.end32.i_crit_edge, %if.then15.i.cond.end32.i_crit_edge103
  %cond33.i = phi i32 [ 2, %if.then15.i.cond.end32.i_crit_edge ], [ %cond29.i, %cond.false26.i ], [ 2, %if.then15.i.cond.end32.i_crit_edge103 ], [ 6, %cond.end32.fold.split.i ]
  %41 = getelementptr inbounds %struct.v4l2_pix_format, ptr %in, i32 0, i32 9
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond33.i, ptr %41, align 4
  br label %ipu_image_from_q_data.exit

ipu_image_from_q_data.exit:                       ; preds = %cond.end32.i, %if.end.i.ipu_image_from_q_data.exit_crit_edge
  %rect.i = getelementptr inbounds %struct.ipu_image, ptr %in, i32 0, i32 1
  %rect36.i = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 0, i32 1
  %43 = call ptr @memcpy(ptr %rect.i, ptr %rect36.i, i32 16)
  %arrayidx15.i = getelementptr %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 1
  %44 = call ptr @memcpy(ptr %out, ptr %arrayidx15.i, i32 48)
  %45 = getelementptr %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 9
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i69 = icmp eq i32 %47, 0
  br i1 %cmp.i69, label %if.then.i71, label %ipu_image_from_q_data.exit.if.end.i80_crit_edge

ipu_image_from_q_data.exit.if.end.i80_crit_edge:  ; preds = %ipu_image_from_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i80

if.then.i71:                                      ; preds = %ipu_image_from_q_data.exit
  %colorspace.i70 = getelementptr %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 6
  %48 = ptrtoint ptr %colorspace.i70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %colorspace.i70, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %49, label %cond.false7.i74 [
    i32 3, label %if.then.i71.cond.end11.i77_crit_edge
    i32 12, label %if.then.i71.cond.end11.i77_crit_edge104
    i32 10, label %cond.end11.fold.split.i75
  ]

if.then.i71.cond.end11.i77_crit_edge104:          ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11.i77

if.then.i71.cond.end11.i77_crit_edge:             ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11.i77

cond.false7.i74:                                  ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp9.i72 = icmp eq i32 %49, 2
  %cond.i73 = select i1 %cmp9.i72, i32 8, i32 1
  br label %cond.end11.i77

cond.end11.fold.split.i75:                        ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11.i77

cond.end11.i77:                                   ; preds = %cond.end11.fold.split.i75, %cond.false7.i74, %if.then.i71.cond.end11.i77_crit_edge, %if.then.i71.cond.end11.i77_crit_edge104
  %cond12.i76 = phi i32 [ 2, %if.then.i71.cond.end11.i77_crit_edge ], [ %cond.i73, %cond.false7.i74 ], [ 2, %if.then.i71.cond.end11.i77_crit_edge104 ], [ 6, %cond.end11.fold.split.i75 ]
  %51 = getelementptr inbounds %struct.v4l2_pix_format, ptr %out, i32 0, i32 9
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond12.i76, ptr %51, align 4
  br label %if.end.i80

if.end.i80:                                       ; preds = %cond.end11.i77, %ipu_image_from_q_data.exit.if.end.i80_crit_edge
  %quantization.i78 = getelementptr %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 10
  %53 = ptrtoint ptr %quantization.i78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %quantization.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp14.i79 = icmp eq i32 %54, 0
  br i1 %cmp14.i79, label %if.then15.i82, label %if.end.i80.ipu_image_from_q_data.exit91_crit_edge

if.end.i80.ipu_image_from_q_data.exit91_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipu_image_from_q_data.exit91

if.then15.i82:                                    ; preds = %if.end.i80
  %colorspace16.i81 = getelementptr %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 6
  %55 = ptrtoint ptr %colorspace16.i81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %colorspace16.i81, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %56, label %cond.false26.i85 [
    i32 3, label %if.then15.i82.cond.end32.i88_crit_edge
    i32 12, label %if.then15.i82.cond.end32.i88_crit_edge105
    i32 10, label %cond.end32.fold.split.i86
  ]

if.then15.i82.cond.end32.i88_crit_edge105:        ; preds = %if.then15.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32.i88

if.then15.i82.cond.end32.i88_crit_edge:           ; preds = %if.then15.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32.i88

cond.false26.i85:                                 ; preds = %if.then15.i82
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp28.i83 = icmp eq i32 %56, 2
  %cond29.i84 = select i1 %cmp28.i83, i32 8, i32 1
  br label %cond.end32.i88

cond.end32.fold.split.i86:                        ; preds = %if.then15.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end32.i88

cond.end32.i88:                                   ; preds = %cond.end32.fold.split.i86, %cond.false26.i85, %if.then15.i82.cond.end32.i88_crit_edge, %if.then15.i82.cond.end32.i88_crit_edge105
  %cond33.i87 = phi i32 [ 2, %if.then15.i82.cond.end32.i88_crit_edge ], [ %cond29.i84, %cond.false26.i85 ], [ 2, %if.then15.i82.cond.end32.i88_crit_edge105 ], [ 6, %cond.end32.fold.split.i86 ]
  %58 = getelementptr inbounds %struct.v4l2_pix_format, ptr %out, i32 0, i32 9
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond33.i87, ptr %58, align 4
  br label %ipu_image_from_q_data.exit91

ipu_image_from_q_data.exit91:                     ; preds = %cond.end32.i88, %if.end.i80.ipu_image_from_q_data.exit91_crit_edge
  %rect.i89 = getelementptr inbounds %struct.ipu_image, ptr %out, i32 0, i32 1
  %rect36.i90 = getelementptr %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 2, i32 1, i32 1
  %60 = call ptr @memcpy(ptr %rect.i89, ptr %rect36.i90, i32 16)
  %rot_mode = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 8
  %61 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rot_mode, align 4
  %call12 = call ptr @ipu_image_convert_prepare(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %in, ptr noundef nonnull %out, i32 noundef %62, ptr noundef nonnull @ipu_ic_pp_complete, ptr noundef %1) #8
  %63 = ptrtoint ptr %icc to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call12, ptr %icc, align 4
  %cmp.i92 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then16, label %ipu_image_from_q_data.exit91.cleanup_crit_edge

ipu_image_from_q_data.exit91.cleanup_crit_edge:   ; preds = %ipu_image_from_q_data.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %ipu_image_from_q_data.exit91
  %64 = ptrtoint ptr %call12 to i32
  %65 = ptrtoint ptr %icc to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %icc, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %v4l2_dev27 = getelementptr inbounds %struct.video_device, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %v4l2_dev27 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %v4l2_dev27, align 4
  %name28 = getelementptr inbounds %struct.v4l2_device, ptr %71, i32 0, i32 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name28, ptr noundef nonnull @.str.20, i32 noundef %64) #11
  %72 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i94 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %73, i32 0, i32 8
  %call.i95 = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i94) #8
  %tobool34.not96 = icmp eq ptr %call.i95, null
  br i1 %tobool34.not96, label %if.then16.while.cond35.preheader_crit_edge, label %if.then16.while.body_crit_edge

if.then16.while.body_crit_edge:                   ; preds = %if.then16
  br label %while.body

if.then16.while.cond35.preheader_crit_edge:       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond35.preheader

while.cond35.preheader:                           ; preds = %while.body.while.cond35.preheader_crit_edge, %if.then16.while.cond35.preheader_crit_edge
  %74 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i98 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %75, i32 0, i32 7
  %call.i9399 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i98) #8
  %tobool39.not100 = icmp eq ptr %call.i9399, null
  br i1 %tobool39.not100, label %while.cond35.preheader.cleanup_crit_edge, label %while.cond35.preheader.while.body40_crit_edge

while.cond35.preheader.while.body40_crit_edge:    ; preds = %while.cond35.preheader
  br label %while.body40

while.cond35.preheader.cleanup_crit_edge:         ; preds = %while.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then16.while.body_crit_edge
  %call.i97 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i95, %if.then16.while.body_crit_edge ]
  call void @vb2_buffer_done(ptr noundef nonnull %call.i97, i32 noundef 3) #8
  %76 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %77, i32 0, i32 8
  %call.i = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %tobool34.not = icmp eq ptr %call.i, null
  br i1 %tobool34.not, label %while.body.while.cond35.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.cond35.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond35.preheader

while.body40:                                     ; preds = %while.body40.while.body40_crit_edge, %while.cond35.preheader.while.body40_crit_edge
  %call.i93101 = phi ptr [ %call.i93, %while.body40.while.body40_crit_edge ], [ %call.i9399, %while.cond35.preheader.while.body40_crit_edge ]
  call void @vb2_buffer_done(ptr noundef nonnull %call.i93101, i32 noundef 3) #8
  %78 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %79, i32 0, i32 7
  %call.i93 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  %tobool39.not = icmp eq ptr %call.i93, null
  br i1 %tobool39.not, label %while.body40.cleanup_crit_edge, label %while.body40.while.body40_crit_edge

while.body40.while.body40_crit_edge:              ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body40

while.body40.cleanup_crit_edge:                   ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body40.cleanup_crit_edge, %while.cond35.preheader.cleanup_crit_edge, %ipu_image_from_q_data.exit91.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %ipu_image_from_q_data.exit91.cleanup_crit_edge ], [ %64, %while.cond35.preheader.cleanup_crit_edge ], [ %64, %while.body40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %out) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_csc_scaler_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %icc = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %icc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipu_image_convert_unprepare(ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %icc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %icc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sequence = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sequence, align 4
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %m2m_ctx = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %1, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  br i1 %cmp, label %while.cond.preheader, label %while.cond6.preheader

while.cond6.preheader:                            ; preds = %if.end
  %cap_q_ctx.i23 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %call.i2124 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i23) #8
  %tobool10.not25 = icmp eq ptr %call.i2124, null
  br i1 %tobool10.not25, label %while.cond6.preheader.if.end13_crit_edge, label %while.cond6.preheader.while.body11_crit_edge

while.cond6.preheader.while.body11_crit_edge:     ; preds = %while.cond6.preheader
  br label %while.body11

while.cond6.preheader.if.end13_crit_edge:         ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

while.cond.preheader:                             ; preds = %if.end
  %out_q_ctx.i27 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 8
  %call.i28 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i27) #8
  %tobool5.not29 = icmp eq ptr %call.i28, null
  br i1 %tobool5.not29, label %while.cond.preheader.if.end13_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end13_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call.i30 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i28, %while.cond.preheader.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i30, i32 noundef 6) #8
  %10 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %while.body.if.end13_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end13_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

while.body11:                                     ; preds = %while.body11.while.body11_crit_edge, %while.cond6.preheader.while.body11_crit_edge
  %call.i2126 = phi ptr [ %call.i21, %while.body11.while.body11_crit_edge ], [ %call.i2124, %while.cond6.preheader.while.body11_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i2126, i32 noundef 6) #8
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 7
  %call.i21 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  %tobool10.not = icmp eq ptr %call.i21, null
  br i1 %tobool10.not, label %while.body11.if.end13_crit_edge, label %while.body11.while.body11_crit_edge

while.body11.while.body11_crit_edge:              ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body11

while.body11.if.end13_crit_edge:                  ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %while.body11.if.end13_crit_edge, %while.body.if.end13_crit_edge, %while.cond.preheader.if.end13_crit_edge, %while.cond6.preheader.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_csc_scaler_buf_queue(ptr noundef %vb) #0 align 64 {
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
  %m2m_ctx = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %3, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_image_convert_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_image_convert_prepare(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_ic_pp_complete(ptr noundef %run, ptr nocapture noundef %_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_ctx, align 4
  %m2m_ctx = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %_ctx, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i24 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i24, i1 noundef zeroext true) #8
  %sequence = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %_ctx, i32 0, i32 9
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sequence, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence5 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %sequence5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sequence5, align 8
  %sequence7 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i24, i32 0, i32 4
  %9 = ptrtoint ptr %sequence7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %sequence7, align 8
  %status = getelementptr inbounds %struct.ipu_image_convert_run, ptr %run, i32 0, i32 3
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %cond) #8
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  %cond10 = select i1 %tobool9.not, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef %call.i24, i32 noundef %cond10) #8
  %m2m_dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 4
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %15, ptr noundef %17) #8
  tail call void @kfree(ptr noundef %run) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %rot_mode = alloca i32, align 4
  %test_in = alloca %struct.ipu_image, align 4
  %test_out = alloca %struct.ipu_image, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rot_mode) #8
  %2 = ptrtoint ptr %rot_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rot_mode, align 4, !annotation !102
  %rotate1 = getelementptr i8, ptr %1, i32 184
  %3 = ptrtoint ptr %rotate1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rotate1, align 4
  %hflip2 = getelementptr i8, ptr %1, i32 188
  %5 = ptrtoint ptr %hflip2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hflip2, align 4, !range !103
  %vflip3 = getelementptr i8, ptr %1, i32 189
  %7 = ptrtoint ptr %vflip3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vflip3, align 1, !range !103
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %10, label %entry.cleanup114_crit_edge [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb8
    i32 9963810, label %sw.bb12
  ]

entry.cleanup114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6 = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %extract.t161 = icmp ne i8 %8, 0
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10 = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %extract.t157 = icmp ne i8 %6, 0
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %extract.t = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %extract.t159 = icmp ne i8 %8, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb
  %rotate.0 = phi i32 [ %17, %sw.bb12 ], [ %4, %sw.bb8 ], [ %4, %sw.bb ]
  %hflip.0.off0 = phi i1 [ %extract.t, %sw.bb12 ], [ %extract.t157, %sw.bb8 ], [ %tobool6, %sw.bb ]
  %vflip.0.off0 = phi i1 [ %extract.t159, %sw.bb12 ], [ %tobool10, %sw.bb8 ], [ %extract.t161, %sw.bb ]
  %call = call i32 @ipu_degrees_to_rot_mode(ptr noundef nonnull %rot_mode, i32 noundef %rotate.0, i1 noundef zeroext %hflip.0.off0, i1 noundef zeroext %vflip.0.off0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end, label %sw.epilog.cleanup114_crit_edge

sw.epilog.cleanup114_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

if.end:                                           ; preds = %sw.epilog
  %18 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rot_mode, align 4
  %rot_mode17 = getelementptr i8, ptr %1, i32 192
  %20 = ptrtoint ptr %rot_mode17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rot_mode17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not = icmp eq i32 %19, %21
  br i1 %cmp.not, label %if.end.cleanup114_crit_edge, label %if.then18

if.end.cleanup114_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup114

if.then18:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %test_in) #8
  %22 = getelementptr inbounds i8, ptr %test_in, i32 48
  %23 = call ptr @memset(ptr %22, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %test_out) #8
  %24 = getelementptr inbounds i8, ptr %test_out, i32 48
  %25 = call ptr @memset(ptr %24, i32 255, i32 32)
  %q_data = getelementptr i8, ptr %1, i32 -132
  %arrayidx20 = getelementptr i8, ptr %1, i32 -68
  %26 = call ptr @memcpy(ptr %test_in, ptr %q_data, i32 48)
  %27 = call ptr @memcpy(ptr %test_out, ptr %arrayidx20, i32 48)
  %28 = ptrtoint ptr %rot_mode17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rot_mode17, align 4
  %and162 = xor i32 %29, %19
  %30 = and i32 %and162, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp28.not = icmp eq i32 %30, 0
  br i1 %cmp28.not, label %if.then18.if.end35_crit_edge, label %if.then30

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then30:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %height = getelementptr i8, ptr %1, i32 -64
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %33 = ptrtoint ptr %test_out to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %test_out, align 4
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx20, align 4
  %height34 = getelementptr inbounds %struct.v4l2_pix_format, ptr %test_out, i32 0, i32 1
  %36 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.then18.if.end35_crit_edge
  %37 = ptrtoint ptr %rot_mode17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rot_mode17, align 4
  call void @ipu_image_convert_adjust(ptr noundef nonnull %test_in, ptr noundef nonnull %test_out, i32 noundef %38) #8
  %39 = ptrtoint ptr %test_in to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %test_in, align 4
  %41 = ptrtoint ptr %q_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %q_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp40.not = icmp eq i32 %40, %42
  br i1 %cmp40.not, label %lor.lhs.false, label %if.end35.if.then57_crit_edge

if.end35.if.then57_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end35
  %height43 = getelementptr inbounds %struct.v4l2_pix_format, ptr %test_in, i32 0, i32 1
  %43 = ptrtoint ptr %height43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height43, align 4
  %height44 = getelementptr i8, ptr %1, i32 -128
  %45 = ptrtoint ptr %height44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp45.not = icmp eq i32 %44, %46
  br i1 %cmp45.not, label %lor.lhs.false47, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false47:                                  ; preds = %lor.lhs.false
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %test_in, i32 0, i32 4
  %47 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytesperline, align 4
  %bytesperline49 = getelementptr i8, ptr %1, i32 -116
  %49 = ptrtoint ptr %bytesperline49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bytesperline49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp50.not = icmp eq i32 %48, %50
  br i1 %cmp50.not, label %lor.lhs.false52, label %lor.lhs.false47.if.then57_crit_edge

lor.lhs.false47.if.then57_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false52:                                  ; preds = %lor.lhs.false47
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %test_in, i32 0, i32 5
  %51 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sizeimage, align 4
  %sizeimage54 = getelementptr i8, ptr %1, i32 -112
  %53 = ptrtoint ptr %sizeimage54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sizeimage54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp55.not = icmp eq i32 %52, %54
  br i1 %cmp55.not, label %lor.lhs.false52.if.end62_crit_edge, label %lor.lhs.false52.if.then57_crit_edge

lor.lhs.false52.if.then57_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false52.if.end62_crit_edge:               ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then57:                                        ; preds = %lor.lhs.false52.if.then57_crit_edge, %lor.lhs.false47.if.then57_crit_edge, %lor.lhs.false.if.then57_crit_edge, %if.end35.if.then57_crit_edge
  %m2m_ctx = getelementptr i8, ptr %1, i32 -136
  %55 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %m2m_ctx, align 4
  %call58 = call ptr @v4l2_m2m_get_vq(ptr noundef %56, i32 noundef 2) #8
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call58, i32 0, i32 21
  %57 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.not = icmp eq i32 %58, 0
  br i1 %cmp.i.not, label %if.then57.if.end62_crit_edge, label %cleanup114.critedge

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.end62:                                         ; preds = %if.then57.if.end62_crit_edge, %lor.lhs.false52.if.end62_crit_edge
  %59 = ptrtoint ptr %test_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %test_out, align 4
  %61 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp66.not = icmp eq i32 %60, %62
  br i1 %cmp66.not, label %lor.lhs.false68, label %if.end62.if.then86_crit_edge

if.end62.if.then86_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

lor.lhs.false68:                                  ; preds = %if.end62
  %height70 = getelementptr inbounds %struct.v4l2_pix_format, ptr %test_out, i32 0, i32 1
  %63 = ptrtoint ptr %height70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %height70, align 4
  %height71 = getelementptr i8, ptr %1, i32 -64
  %65 = ptrtoint ptr %height71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp72.not = icmp eq i32 %64, %66
  br i1 %cmp72.not, label %lor.lhs.false74, label %lor.lhs.false68.if.then86_crit_edge

lor.lhs.false68.if.then86_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

lor.lhs.false74:                                  ; preds = %lor.lhs.false68
  %bytesperline76 = getelementptr inbounds %struct.v4l2_pix_format, ptr %test_out, i32 0, i32 4
  %67 = ptrtoint ptr %bytesperline76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bytesperline76, align 4
  %bytesperline77 = getelementptr i8, ptr %1, i32 -52
  %69 = ptrtoint ptr %bytesperline77 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bytesperline77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp78.not = icmp eq i32 %68, %70
  br i1 %cmp78.not, label %lor.lhs.false80, label %lor.lhs.false74.if.then86_crit_edge

lor.lhs.false74.if.then86_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

lor.lhs.false80:                                  ; preds = %lor.lhs.false74
  %sizeimage82 = getelementptr inbounds %struct.v4l2_pix_format, ptr %test_out, i32 0, i32 5
  %71 = ptrtoint ptr %sizeimage82 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sizeimage82, align 4
  %sizeimage83 = getelementptr i8, ptr %1, i32 -48
  %73 = ptrtoint ptr %sizeimage83 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sizeimage83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp84.not = icmp eq i32 %72, %74
  br i1 %cmp84.not, label %lor.lhs.false80.if.end96_crit_edge, label %lor.lhs.false80.if.then86_crit_edge

lor.lhs.false80.if.then86_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then86

lor.lhs.false80.if.end96_crit_edge:               ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.then86:                                        ; preds = %lor.lhs.false80.if.then86_crit_edge, %lor.lhs.false74.if.then86_crit_edge, %lor.lhs.false68.if.then86_crit_edge, %if.end62.if.then86_crit_edge
  %m2m_ctx88 = getelementptr i8, ptr %1, i32 -136
  %75 = ptrtoint ptr %m2m_ctx88 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %m2m_ctx88, align 4
  %call89 = call ptr @v4l2_m2m_get_vq(ptr noundef %76, i32 noundef 1) #8
  %num_buffers.i164 = getelementptr inbounds %struct.vb2_queue, ptr %call89, i32 0, i32 21
  %77 = ptrtoint ptr %num_buffers.i164 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_buffers.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i165.not = icmp eq i32 %78, 0
  br i1 %cmp.i165.not, label %if.then86.if.end96_crit_edge, label %cleanup114.critedge163

if.then86.if.end96_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end96:                                         ; preds = %if.then86.if.end96_crit_edge, %lor.lhs.false80.if.end96_crit_edge
  %79 = call ptr @memcpy(ptr %q_data, ptr %test_in, i32 48)
  %80 = call ptr @memcpy(ptr %arrayidx20, ptr %test_out, i32 48)
  %81 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rot_mode, align 4
  %83 = ptrtoint ptr %rot_mode17 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %rot_mode17, align 4
  %84 = ptrtoint ptr %rotate1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %rotate.0, ptr %rotate1, align 4
  %frombool103 = zext i1 %hflip.0.off0 to i8
  %85 = ptrtoint ptr %hflip2 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %frombool103, ptr %hflip2, align 4
  %frombool106 = zext i1 %vflip.0.off0 to i8
  %86 = ptrtoint ptr %vflip3 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool106, ptr %vflip3, align 1
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_out) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_in) #8
  br label %cleanup114

cleanup114.critedge:                              ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_out) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_in) #8
  br label %cleanup114

cleanup114.critedge163:                           ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_out) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_in) #8
  br label %cleanup114

cleanup114:                                       ; preds = %cleanup114.critedge163, %cleanup114.critedge, %if.end96, %if.end.cleanup114_crit_edge, %sw.epilog.cleanup114_crit_edge, %entry.cleanup114_crit_edge
  %retval.5 = phi i32 [ -22, %entry.cleanup114_crit_edge ], [ %call, %sw.epilog.cleanup114_crit_edge ], [ -16, %cleanup114.critedge ], [ -16, %cleanup114.critedge163 ], [ 0, %if.end96 ], [ 0, %if.end.cleanup114_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rot_mode) #8
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_degrees_to_rot_mode(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_image_convert_adjust(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.27, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.27, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %f) #0 align 64 {
entry:
  %fourcc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc) #8
  %0 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fourcc, align 4, !annotation !102
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  %call = call i32 @imx_media_enum_pixel_formats(ptr noundef nonnull %fourcc, i32 noundef %2, i32 noundef 3, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipu_csc_scaler_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.get_q_data.exit_crit_edge

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.ipu_csc_scaler_g_fmt, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %switch.lookup, %entry.get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 256, %entry.get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %fmt, ptr %q_data.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_s_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  %test_in.i = alloca %struct.ipu_image, align 4
  %test_out.i = alloca %struct.ipu_image, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #8
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %priv, i32 -4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v4l2_dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %11, i32 0, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 13
  br i1 %14, label %switch.lookup, label %if.end.get_q_data.exit_crit_edge

if.end.get_q_data.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_q_data.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.ipu_csc_scaler_s_fmt, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %switch.lookup, %if.end.get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 256, %if.end.get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %switch.tableidx116 = add i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx116)
  %16 = icmp ult i32 %switch.tableidx116, 13
  br i1 %16, label %switch.lookup115, label %get_q_data.exit.get_q_data.exit.i_crit_edge

get_q_data.exit.get_q_data.exit.i_crit_edge:      ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_q_data.exit.i

switch.lookup115:                                 ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep117 = getelementptr inbounds [13 x i32], ptr @switch.table.ipu_csc_scaler_s_fmt.33, i32 0, i32 %switch.tableidx116
  %17 = ptrtoint ptr %switch.gep117 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load118 = load i32, ptr %switch.gep117, align 4
  br label %get_q_data.exit.i

get_q_data.exit.i:                                ; preds = %switch.lookup115, %get_q_data.exit.get_q_data.exit.i_crit_edge
  %.sink.i = phi i32 [ %switch.load118, %switch.lookup115 ], [ 256, %get_q_data.exit.get_q_data.exit.i_crit_edge ]
  %q_data.i.i = getelementptr i8, ptr %priv, i32 %.sink.i
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %test_in.i) #8
  %18 = call ptr @memset(ptr %test_in.i, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %test_out.i) #8
  %19 = call ptr @memset(ptr %test_out.i, i32 255, i32 80)
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %field1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch.i = icmp ult i32 %21, 2
  br i1 %switch.i, label %if.end4.i, label %ipu_csc_scaler_try_fmt.exit

if.end4.i:                                        ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6.i = icmp eq i32 %13, 1
  %..i = select i1 %cmp6.i, i32 192, i32 256
  %test_out.test_in.i = select i1 %cmp6.i, ptr %test_out.i, ptr %test_in.i
  %test_in.test_out.i = select i1 %cmp6.i, ptr %test_in.i, ptr %test_out.i
  %arrayidx15.i81.i = getelementptr i8, ptr %priv, i32 %..i
  %22 = call ptr @memcpy(ptr %test_out.test_in.i, ptr %fmt.i, i32 48)
  %23 = call ptr @memcpy(ptr %test_in.test_out.i, ptr %arrayidx15.i81.i, i32 48)
  %rot_mode.i = getelementptr i8, ptr %priv, i32 516
  %24 = ptrtoint ptr %rot_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rot_mode.i, align 4
  call void @ipu_image_convert_adjust(ptr noundef nonnull %test_in.i, ptr noundef nonnull %test_out.i, i32 noundef %25) #8
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp20.i = icmp eq i32 %27, 1
  br i1 %cmp20.i, label %if.then25.i, label %if.else37.i

if.then25.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call ptr @memcpy(ptr %fmt.i, ptr %test_out.i, i32 48)
  %colorspace.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace.i, align 4
  %colorspace28.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %colorspace28.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %colorspace28.i, align 4
  %32 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %35, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i.i, i32 0, i32 11
  %37 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xfer_func.i, align 4
  %xfer_func33.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %xfer_func33.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %xfer_func33.i, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quantization.i, align 4
  br label %cleanup.sink.split.i

if.else37.i:                                      ; preds = %if.end4.i
  %42 = call ptr @memcpy(ptr %fmt.i, ptr %test_in.i, i32 48)
  %colorspace39.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %43 = ptrtoint ptr %colorspace39.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %colorspace39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp40.i = icmp eq i32 %44, 0
  br i1 %cmp40.i, label %if.then41.i, label %if.else37.i.if.end9_crit_edge

if.else37.i.if.end9_crit_edge:                    ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then41.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %colorspace39.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %colorspace39.i, align 4
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %46, align 4
  %xfer_func46.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %48 = ptrtoint ptr %xfer_func46.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %xfer_func46.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then41.i, %if.then25.i
  %.sink85.i = phi i32 [ %41, %if.then25.i ], [ 0, %if.then41.i ]
  %quantization36.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %quantization36.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink85.i, ptr %quantization36.i, align 4
  br label %if.end9

ipu_csc_scaler_try_fmt.exit:                      ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_out.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_in.i) #8
  br label %cleanup

if.end9:                                          ; preds = %cleanup.sink.split.i, %if.else37.i.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_out.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_in.i) #8
  %50 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fmt.i, align 4
  %52 = ptrtoint ptr %q_data.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %q_data.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height, align 4
  %height13 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 1
  %55 = ptrtoint ptr %height13 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %height13, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pixelformat, align 4
  %pixelformat16 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 2
  %58 = ptrtoint ptr %pixelformat16 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %pixelformat16, align 4
  %59 = ptrtoint ptr %field1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %field1.i, align 4
  %field19 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 3
  %61 = ptrtoint ptr %field19 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %field19, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %62 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytesperline, align 4
  %bytesperline22 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 4
  %64 = ptrtoint ptr %bytesperline22 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %bytesperline22, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %65 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sizeimage, align 4
  %sizeimage25 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 5
  %67 = ptrtoint ptr %sizeimage25 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %sizeimage25, align 4
  %rect = getelementptr inbounds %struct.ipu_csc_scaler_q_data, ptr %q_data.i, i32 0, i32 1
  %68 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %rect, align 4
  %top = getelementptr inbounds %struct.ipu_csc_scaler_q_data, ptr %q_data.i, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %top, align 4
  %width30 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, ptr %q_data.i, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %width30 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %51, ptr %width30, align 4
  %height34 = getelementptr inbounds %struct.ipu_csc_scaler_q_data, ptr %q_data.i, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %54, ptr %height34, align 4
  %72 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp36 = icmp eq i32 %73, 2
  br i1 %cmp36, label %if.then37, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %74 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %colorspace, align 4
  %colorspace40 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 6
  %76 = ptrtoint ptr %colorspace40 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %colorspace40, align 4
  %77 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %80 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 9
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %80, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %82 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %xfer_func, align 4
  %xfer_func45 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 11
  %84 = ptrtoint ptr %xfer_func45 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %xfer_func45, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %quantization, align 4
  %quantization48 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 10
  %87 = ptrtoint ptr %quantization48 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %quantization48, align 4
  %88 = load i32, ptr %colorspace, align 4
  %colorspace53 = getelementptr i8, ptr %priv, i32 280
  %89 = ptrtoint ptr %colorspace53 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %colorspace53, align 4
  %90 = load i32, ptr %77, align 4
  %91 = getelementptr i8, ptr %priv, i32 292
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %90, ptr %91, align 4
  %93 = load i32, ptr %xfer_func, align 4
  %xfer_func59 = getelementptr i8, ptr %priv, i32 300
  %94 = ptrtoint ptr %xfer_func59 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %xfer_func59, align 4
  %95 = load i32, ptr %quantization, align 4
  %quantization63 = getelementptr i8, ptr %priv, i32 296
  %96 = ptrtoint ptr %quantization63 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %quantization63, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end9.cleanup_crit_edge, %ipu_csc_scaler_try_fmt.exit, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %ipu_csc_scaler_try_fmt.exit ], [ 0, %if.then37 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_csc_scaler_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  %test_in = alloca %struct.ipu_image, align 4
  %test_out = alloca %struct.ipu_image, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %entry.get_q_data.exit_crit_edge

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_q_data.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.ipu_csc_scaler_try_fmt, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %switch.lookup, %entry.get_q_data.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 256, %entry.get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %test_in) #8
  %4 = call ptr @memset(ptr %test_in, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %test_out) #8
  %5 = call ptr @memset(ptr %test_out, i32 255, i32 80)
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %if.end4, label %get_q_data.exit.cleanup_crit_edge

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp6 = icmp eq i32 %1, 1
  %. = select i1 %cmp6, i32 192, i32 256
  %test_out.test_in = select i1 %cmp6, ptr %test_out, ptr %test_in
  %test_in.test_out = select i1 %cmp6, ptr %test_in, ptr %test_out
  %arrayidx15.i81 = getelementptr i8, ptr %priv, i32 %.
  %8 = call ptr @memcpy(ptr %test_out.test_in, ptr %fmt, i32 48)
  %9 = call ptr @memcpy(ptr %test_in.test_out, ptr %arrayidx15.i81, i32 48)
  %rot_mode = getelementptr i8, ptr %priv, i32 516
  %10 = ptrtoint ptr %rot_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rot_mode, align 4
  call void @ipu_image_convert_adjust(ptr noundef nonnull %test_in, ptr noundef nonnull %test_out, i32 noundef %11) #8
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp20 = icmp eq i32 %13, 1
  br i1 %cmp20, label %if.then25, label %if.else37

if.then25:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call ptr @memcpy(ptr %fmt, ptr %test_out, i32 48)
  %colorspace = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 6
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %colorspace, align 4
  %colorspace28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %17 = ptrtoint ptr %colorspace28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %colorspace28, align 4
  %18 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %21, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 11
  %23 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xfer_func, align 4
  %xfer_func33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %xfer_func33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %xfer_func33, align 4
  %quantization = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 10
  %26 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quantization, align 4
  br label %cleanup.sink.split

if.else37:                                        ; preds = %if.end4
  %28 = call ptr @memcpy(ptr %fmt, ptr %test_in, i32 48)
  %colorspace39 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %colorspace39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp40 = icmp eq i32 %30, 0
  br i1 %cmp40, label %if.then41, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %colorspace39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %colorspace39, align 4
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %32, align 4
  %xfer_func46 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %34 = ptrtoint ptr %xfer_func46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %xfer_func46, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then41, %if.then25
  %.sink85 = phi i32 [ %27, %if.then25 ], [ 0, %if.then41 ]
  %quantization36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %quantization36 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink85, ptr %quantization36, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else37.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %if.else37.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_out) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %test_in) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipu_csc_scaler_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge33
    i32 2, label %entry.sw.bb_crit_edge34
    i32 256, label %entry.sw.bb1_crit_edge
    i32 257, label %entry.sw.bb1_crit_edge35
    i32 258, label %entry.sw.bb1_crit_edge36
  ]

entry.sw.bb1_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34
  %3 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge35, %entry.sw.bb1_crit_edge36
  %5 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3.not = icmp eq i32 %6, 1
  br i1 %cmp3.not, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i32 [ 192, %sw.bb.sw.epilog_crit_edge ], [ 256, %sw.bb1.sw.epilog_crit_edge ]
  %arrayidx15.i = getelementptr i8, ptr %priv, i32 %.sink
  %7 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %if.else [
    i32 0, label %sw.epilog.if.then11_crit_edge
    i32 256, label %sw.epilog.if.then11_crit_edge37
  ]

sw.epilog.if.then11_crit_edge37:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

sw.epilog.if.then11_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %sw.epilog.if.then11_crit_edge, %sw.epilog.if.then11_crit_edge37
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %rect = getelementptr inbounds %struct.ipu_csc_scaler_q_data, ptr %arrayidx15.i, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %r, ptr %rect, i32 16)
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %r12 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %9 = ptrtoint ptr %r12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %r12, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %top, align 4
  %11 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15.i, align 4
  %width15 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %width15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %width15, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %arrayidx15.i, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %height18 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipu_csc_scaler_s_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 256, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %sw.bb.get_q_data.exit_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.get_q_data.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_q_data.exit

sw.bb1:                                           ; preds = %entry
  %5 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp3.not = icmp eq i32 %6, 1
  br i1 %cmp3.not, label %sw.bb1.get_q_data.exit_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.get_q_data.exit_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.get_q_data.exit_crit_edge, %sw.bb.get_q_data.exit_crit_edge
  %.sink = phi i32 [ 192, %sw.bb.get_q_data.exit_crit_edge ], [ 256, %sw.bb1.get_q_data.exit_crit_edge ]
  %q_data.i = getelementptr i8, ptr %priv, i32 %.sink
  %flags = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %get_q_data.exit.if.end16_crit_edge, label %if.then13

get_q_data.exit.if.end16_crit_edge:               ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %sub = add i32 %10, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  store i32 %add, ptr %width, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %get_q_data.exit.if.end16_crit_edge
  %and18 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end26_crit_edge, label %if.then20

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %width22 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %width22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width22, align 4
  %and23 = and i32 %12, -8
  store i32 %and23, ptr %width22, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end16.if.end26_crit_edge
  %r27 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %width28 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %width28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width28, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 8)
  %16 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q_data.i, align 4
  %and32 = and i32 %17, -8
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %and32)
  %19 = ptrtoint ptr %width28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %width28, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 1)
  %height49 = getelementptr inbounds %struct.v4l2_pix_format, ptr %q_data.i, i32 0, i32 1
  %23 = ptrtoint ptr %height49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height49, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24)
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height, align 4
  %27 = ptrtoint ptr %r27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r27, align 4
  %29 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %q_data.i, align 4
  %sub69 = sub i32 %30, %18
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 %sub69)
  %32 = ptrtoint ptr %r27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %r27, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %top, align 4
  %35 = ptrtoint ptr %height49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height49, align 4
  %sub89 = sub i32 %36, %25
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %sub89)
  %38 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %top, align 4
  %rect = getelementptr inbounds %struct.ipu_csc_scaler_q_data, ptr %q_data.i, i32 0, i32 1
  %39 = call ptr @memcpy(ptr %rect, ptr %r27, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_media_enum_pixel_formats(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr nocapture noundef readonly %_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_ctx, align 4
  %m2m_ctx = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %_ctx, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #8
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i42 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %entry
  %icc = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %_ctx, i32 0, i32 3
  %7 = ptrtoint ptr %icc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %icc, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i, align 8
  %call.i43 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %call.i43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i43, align 4
  %in_phys = getelementptr inbounds %struct.ipu_image_convert_run, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %in_phys to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %in_phys, align 4
  %call.i44 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i42, i32 noundef 0) #8
  %13 = ptrtoint ptr %call.i44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i44, align 4
  %out_phys = getelementptr inbounds %struct.ipu_image_convert_run, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %out_phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %out_phys, align 8
  %call10 = tail call i32 @ipu_image_convert_queue(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_ctx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %v4l2_dev = getelementptr inbounds %struct.video_device, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v4l2_dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %21, i32 0, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef %call10) #11
  br label %err

err:                                              ; preds = %do.end, %entry.err_crit_edge
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i45 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 8
  %call.i46 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i45) #8
  %24 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i47 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %25, i32 0, i32 7
  %call.i48 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i47) #8
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 6) #8
  tail call void @vb2_buffer_done(ptr noundef %call.i42, i32 noundef 6) #8
  %m2m_dev = getelementptr inbounds %struct.ipu_csc_scaler_priv, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_dev, align 4
  %28 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %27, ptr noundef %29) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @job_abort(ptr nocapture noundef readonly %_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icc = getelementptr inbounds %struct.ipu_csc_scaler_ctx, ptr %_ctx, i32 0, i32 3
  %0 = ptrtoint ptr %icc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipu_image_convert_abort(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_image_convert_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_image_convert_abort(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 857, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @imx_media_csc_scaler_device_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @imx_media_csc_scaler_device_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 861, i32 2}
!8 = !{ptr @imx_media_csc_scaler_device_register._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @imx_media_csc_scaler_device_register._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @imx_media_csc_scaler_device_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 889, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 908, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @imx_media_csc_scaler_device_init._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @imx_media_csc_scaler_device_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description337, !19, !"__UNIQUE_ID_description337", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 922, i32 1}
!20 = !{ptr @__UNIQUE_ID_author338, !21, !"__UNIQUE_ID_author338", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 923, i32 1}
!22 = !{ptr @__UNIQUE_ID_file339, !23, !"__UNIQUE_ID_file339", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 924, i32 1}
!24 = !{ptr @__UNIQUE_ID_license340, !23, !"__UNIQUE_ID_license340", i1 false, i1 false}
!25 = !{ptr @ipu_csc_scaler_videodev_template, !26, !"ipu_csc_scaler_videodev_template", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 837, i32 34}
!27 = !{ptr @ipu_csc_scaler_fops, !28, !"ipu_csc_scaler_fops", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 814, i32 42}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 785, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ipu_csc_scaler_open.__UNIQUE_ID_ddebug335, !30, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!34 = !{ptr @ipu_csc_scaler_qops, !35, !"ipu_csc_scaler_qops", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 571, i32 29}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 440, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ipu_csc_scaler_queue_setup.__UNIQUE_ID_ddebug331, !37, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 454, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug332, !41, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 460, i32 4}
!46 = !{ptr @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug333, !45, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 470, i32 3}
!49 = !{ptr @ipu_csc_scaler_buf_prepare.__UNIQUE_ID_ddebug334, !48, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 520, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ipu_csc_scaler_start_streaming._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ipu_csc_scaler_start_streaming._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 538, i32 3}
!60 = !{ptr @ipu_csc_scaler_start_streaming._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ipu_csc_scaler_start_streaming._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ipu_csc_scaler_init_controls._key, !63, !"_key", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 713, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ipu_csc_scaler_ctrl_ops, !66, !"ipu_csc_scaler_ctrl_ops", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 705, i32 35}
!67 = !{ptr @ipu_csc_scaler_q_data_default, !68, !"ipu_csc_scaler_q_data_default", i1 false, i1 false}
!68 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 733, i32 43}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 804, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ipu_csc_scaler_release.__UNIQUE_ID_ddebug336, !70, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!73 = !{ptr @ipu_csc_scaler_ioctl_ops, !74, !"ipu_csc_scaler_ioctl_ops", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 382, i32 36}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 155, i32 23}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 158, i32 4}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 250, i32 3}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ipu_csc_scaler_s_fmt._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ipu_csc_scaler_s_fmt._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @m2m_ops, !85, !"m2m_ops", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 823, i32 34}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/imx/imx-media-csc-scaler.c", i32 134, i32 3}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @device_run._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @device_run._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148975650, i64 2148975655, i64 2148975668, i64 2148975712, i64 2148975746, i64 2148975767}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{!"auto-init"}
!103 = !{i8 0, i8 2}
