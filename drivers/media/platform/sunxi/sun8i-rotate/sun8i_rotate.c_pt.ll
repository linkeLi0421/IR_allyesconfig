; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c_pt.bc'
source_filename = "../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rotate_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.rotate_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, %struct.v4l2_ctrl_handler, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.97, i32, i32 }
%union.anon.97 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.rotate_format = type { i32, i32, i32, [3 x i32], i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_sun8i_rotate__299_917_rotate_driver_init6 = internal global ptr @rotate_driver_init, section ".initcall6.init", align 4
@rotate_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rotate_probe, ptr @rotate_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rotate_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotate_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rotate_driver_exit = internal global ptr @rotate_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file300 = internal constant [73 x i8] c"sun8i_rotate.file=drivers/media/platform/sunxi/sun8i-rotate/sun8i-rotate\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [28 x i8] c"sun8i_rotate.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [61 x i8] c"sun8i_rotate.author=Jernej Skrabec <jernej.skrabec@siol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [53 x i8] c"sun8i_rotate.description=Allwinner DE2 rotate driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sun8i-rotate\00", [19 x i8] zeroinitializer }, align 32
@rotate_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-de2-rotate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rotate_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotate_runtime_suspend, ptr @rotate_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rotate_video_device = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @rotate_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"sun8i-rotate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @rotate_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@rotate_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rotate_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr = internal global ptr @rotate_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@rotate_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 767, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr.9 = internal global ptr @rotate_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@rotate_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 774, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get mod clock\0A\00", [39 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr.13 = internal global ptr @rotate_probe._entry.11, section ".printk_index", align 4
@rotate_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 781, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr.16 = internal global ptr @rotate_probe._entry.14, section ".printk_index", align 4
@rotate_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@rotate_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register V4L2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr.20 = internal global ptr @rotate_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rotate_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr.24 = internal global ptr @rotate_probe._entry.22, section ".printk_index", align 4
@rotate_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr.27 = internal global ptr @rotate_probe._entry.25, section ".printk_index", align 4
@rotate_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @rotate_device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@rotate_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to initialize V4L2 M2M device\0A\00", [52 x i8] zeroinitializer }, align 32
@rotate_probe._entry_ptr.30 = internal global ptr @rotate_probe._entry.28, section ".printk_index", align 4
@rotate_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @rotate_open, ptr @rotate_release }, [60 x i8] zeroinitializer }, align 32
@rotate_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rotate_querycap, ptr @rotate_enum_fmt_vid_cap, ptr null, ptr @rotate_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @rotate_g_fmt_vid_cap, ptr null, ptr @rotate_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotate_s_fmt_vid_cap, ptr null, ptr @rotate_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotate_try_fmt_vid_cap, ptr null, ptr @rotate_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @rotate_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rotate_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rotate_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rotate_buf_prepare, ptr null, ptr null, ptr @rotate_start_streaming, ptr @rotate_stop_streaming, ptr @rotate_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@rotate_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 499, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable module\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rotate_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@rotate_start_streaming._entry_ptr = internal global ptr @rotate_start_streaming._entry, section ".printk_index", align 4
@rotate_setup_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sun8i_rotate:615:(&ctx->ctrl_handler)->_lock\00", [51 x i8] zeroinitializer }, align 32
@rotate_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @rotate_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@rotate_setup_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: control setup failed!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rotate_setup_ctrls\00", [45 x i8] zeroinitializer }, align 32
@rotate_setup_ctrls._entry_ptr = internal global ptr @rotate_setup_ctrls._entry, section ".printk_index", align 4
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@rotate_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Instance released before the end of transaction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rotate_irq\00", [21 x i8] zeroinitializer }, align 32
@rotate_irq._entry_ptr = internal global ptr @rotate_irq._entry, section ".printk_index", align 4
@rotate_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 856, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rotate_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@rotate_runtime_resume._entry_ptr = internal global ptr @rotate_runtime_resume._entry, section ".printk_index", align 4
@rotate_runtime_resume._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 863, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable mod clock\0A\00", [36 x i8] zeroinitializer }, align 32
@rotate_runtime_resume._entry_ptr.44 = internal global ptr @rotate_runtime_resume._entry.42, section ".printk_index", align 4
@rotate_runtime_resume._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 870, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to apply reset\0A\00", [41 x i8] zeroinitializer }, align 32
@rotate_runtime_resume._entry_ptr.47 = internal global ptr @rotate_runtime_resume._entry.45, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.48 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.49 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.50 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.51 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.52 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 9963796, i64 9963797, i64 9963810]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"rotate_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 908, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 912, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"rotate_dt_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 897, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"rotate_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 903, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"rotate_video_device\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 722, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 756, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 765, i32 40 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 767, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 772, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 774, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 781, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 786, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 790, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 799, i32 41 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 805, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 810, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"rotate_m2m_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 732, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 815, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"rotate_fops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 713, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"rotate_ioctl_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 393, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"rotate_qops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 519, i32 29 }
@___asan_gen_.162 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 1163, i32 7 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 499, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 615, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [16 x i8] c"rotate_ctrl_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 609, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 629, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 218, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 148, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 856, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 863, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [60 x i8] c"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 870, i32 3 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_rotate_driver_exit, ptr @__initcall__kmod_sun8i_rotate__299_917_rotate_driver_init6, ptr @rotate_driver_exit, ptr @rotate_irq._entry, ptr @rotate_irq._entry_ptr, ptr @rotate_probe._entry, ptr @rotate_probe._entry.11, ptr @rotate_probe._entry.14, ptr @rotate_probe._entry.18, ptr @rotate_probe._entry.22, ptr @rotate_probe._entry.25, ptr @rotate_probe._entry.28, ptr @rotate_probe._entry.7, ptr @rotate_probe._entry_ptr, ptr @rotate_probe._entry_ptr.13, ptr @rotate_probe._entry_ptr.16, ptr @rotate_probe._entry_ptr.20, ptr @rotate_probe._entry_ptr.24, ptr @rotate_probe._entry_ptr.27, ptr @rotate_probe._entry_ptr.30, ptr @rotate_probe._entry_ptr.9, ptr @rotate_runtime_resume._entry, ptr @rotate_runtime_resume._entry.42, ptr @rotate_runtime_resume._entry.45, ptr @rotate_runtime_resume._entry_ptr, ptr @rotate_runtime_resume._entry_ptr.44, ptr @rotate_runtime_resume._entry_ptr.47, ptr @rotate_setup_ctrls._entry, ptr @rotate_setup_ctrls._entry_ptr, ptr @rotate_start_streaming._entry, ptr @rotate_start_streaming._entry_ptr, ptr @rotate_driver, ptr @.str, ptr @rotate_dt_match, ptr @rotate_pm_ops, ptr @rotate_video_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @rotate_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @rotate_m2m_ops, ptr @.str.29, ptr @rotate_fops, ptr @rotate_ioctl_ops, ptr @rotate_qops, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @rotate_setup_ctrls._key, ptr @.str.34, ptr @rotate_ctrl_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_video_device to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_setup_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_setup_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_runtime_resume._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotate_runtime_resume._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rotate_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rotate_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @rotate_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1600, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vfd2 = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %vfd2, ptr @rotate_video_device, i32 1352)
  %dev4 = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev4, align 8
  %call5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp slt i32 %call5, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end7.dev_name.exit_crit_edge ]
  %call.i174 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %call5, ptr noundef nonnull @rotate_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool12.not = icmp eq i32 %call.i174, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #11
  %base = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 8
  %call24 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.6) #11
  %bus_clk = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %bus_clk, align 8
  %cmp.i175 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev4, align 8
  br i1 %cmp.i175, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8) #14
  %17 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_clk, align 8
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %call36 = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.10) #11
  %mod_clk = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call36, ptr %mod_clk, align 4
  %cmp.i176 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev4, align 8
  br i1 %cmp.i176, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12) #14
  %23 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mod_clk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end34
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %22, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %rstc = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %rstc, align 8
  %cmp.i177 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %do.end54, label %do.body59

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15) #14
  %29 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rstc, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

do.body59:                                        ; preds = %if.end46
  %dev_mutex = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @rotate_probe.__key) #11
  %call63 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.19) #14
  br label %cleanup

if.end70:                                         ; preds = %do.body59
  %lock = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 1, i32 26
  %34 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev74 = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 1, i32 7
  %35 = ptrtoint ptr %v4l2_dev74 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %v4l2_dev74, align 4
  %name = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 1, i32 12
  %call75 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef getelementptr inbounds (%struct.video_device, ptr @rotate_video_device, i32 0, i32 12))
  %driver_data.i.i = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %fops.i = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fops.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i178 = tail call i32 @__video_register_device(ptr noundef %vfd2, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool77.not = icmp eq i32 %call.i178, 0
  %name92 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  br i1 %tobool77.not, label %do.end89, label %do.end81

do.end81:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name92) #14
  br label %err_v4l2

do.end89:                                         ; preds = %if.end70
  %num = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 1, i32 16
  %41 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %num, align 4
  %conv = zext i16 %42 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name92, i32 noundef %conv) #14
  %call95 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @rotate_m2m_ops) #11
  %m2m_dev = getelementptr inbounds %struct.rotate_dev, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call95, ptr %m2m_dev, align 4
  %cmp.i179 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %do.end101, label %if.end109

do.end101:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #13
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name92) #14
  %44 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m2m_dev, align 4
  %46 = ptrtoint ptr %45 to i32
  tail call void @video_unregister_device(ptr noundef %vfd2) #11
  br label %err_v4l2

if.end109:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i180 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i180 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i180, align 4
  %48 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev4, align 8
  tail call void @pm_runtime_enable(ptr noundef %49) #11
  br label %cleanup

err_v4l2:                                         ; preds = %do.end101, %do.end81
  %ret.0 = phi i32 [ %call.i178, %do.end81 ], [ %46, %do.end101 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2, %if.end109, %do.end68, %do.end54, %do.end42, %do.end30, %if.then19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i174, %do.end ], [ %11, %if.then19 ], [ %19, %do.end30 ], [ %25, %do.end42 ], [ %31, %do.end54 ], [ %call63, %do.end68 ], [ %ret.0, %err_v4l2 ], [ 0, %if.end109 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %m2m_dev = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %3) #11
  %vfd = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #11
  tail call void @v4l2_device_unregister(ptr noundef %1) #11
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr inbounds %struct.rotate_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  %call = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.rotate_dev, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !121
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 16777216) #11, !srcloc !123
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #11
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #11
  %10 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 8
  %call.i27 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #11
  tail call void @vb2_buffer_done(ptr noundef %call.i27, i32 noundef 5) #11
  %dev10 = getelementptr inbounds %struct.rotate_ctx, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  %m2m_dev11 = getelementptr inbounds %struct.rotate_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %m2m_dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev11, align 4
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %15, ptr noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 488) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %src_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 2
  %pixelformat = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 875708738, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %field, align 8
  %5 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 640, ptr %src_fmt, align 4
  %height = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 480, ptr %height, align 8
  tail call fastcc void @rotate_prepare_format(ptr noundef %src_fmt)
  %dst_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 3
  %rotate = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rotate, align 4
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  %call.i64 = tail call ptr @rotate_find_format(i32 noundef %10) #11
  %tobool.not.i = icmp eq ptr %call.i64, null
  br i1 %tobool.not.i, label %if.end6.rotate_set_cap_format.exit_crit_edge, label %if.end.i

if.end6.rotate_set_cap_format.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_set_cap_format.exit

if.end.i:                                         ; preds = %if.end6
  %flags.i = getelementptr inbounds %struct.rotate_format, ptr %call.i64, i32 0, i32 6
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.end.i.if.end7.i_crit_edge
  %.sink.i = phi i32 [ %14, %if.else.i ], [ 842093913, %if.end.i.if.end7.i_crit_edge ]
  %15 = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %15, align 4
  %field.i = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field.i, align 8
  %18 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.else14.i [
    i32 90, label %if.end7.i.if.end21.i_crit_edge
    i32 270, label %if.end7.i.if.end21.i_crit_edge71
  ]

if.end7.i.if.end21.i_crit_edge71:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.end7.i.if.end21.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.else14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else14.i, %if.end7.i.if.end21.i_crit_edge, %if.end7.i.if.end21.i_crit_edge71
  %storemerge.in = phi ptr [ %src_fmt, %if.else14.i ], [ %height, %if.end7.i.if.end21.i_crit_edge ], [ %height, %if.end7.i.if.end21.i_crit_edge71 ]
  %height19.sink.i = phi ptr [ %height, %if.else14.i ], [ %src_fmt, %if.end7.i.if.end21.i_crit_edge ], [ %src_fmt, %if.end7.i.if.end21.i_crit_edge71 ]
  %19 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %20 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %dst_fmt, align 4
  %21 = ptrtoint ptr %height19.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height19.sink.i, align 4
  %height20.i = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %height20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height20.i, align 8
  tail call fastcc void @rotate_prepare_format(ptr noundef %dst_fmt) #11
  br label %rotate_set_cap_format.exit

rotate_set_cap_format.exit:                       ; preds = %if.end21.i, %if.end6.rotate_set_cap_format.exit_crit_edge
  %call12 = tail call ptr @video_devdata(ptr noundef %file) #11
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call12) #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev14 = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %dev14, align 8
  %m2m_dev = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_dev, align 4
  %call15 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %27, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @rotate_queue_init) #11
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call15, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end24

if.then20:                                        ; preds = %rotate_set_cap_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call15 to i32
  br label %err_free

if.end24:                                         ; preds = %rotate_set_cap_format.exit
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #11
  %ctrl_handler.i = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 4
  %call.i65 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 3, ptr noundef nonnull @rotate_setup_ctrls._key, ptr noundef nonnull @.str.34) #11
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rotate_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rotate_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rotate_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #11
  %error.i = getelementptr inbounds %struct.rotate_ctx, ptr %call7.i.i, i32 0, i32 4, i32 9
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i66 = icmp eq i32 %31, 0
  br i1 %tobool.not.i66, label %rotate_setup_ctrls.exit, label %rotate_setup_ctrls.exit.thread

rotate_setup_ctrls.exit.thread:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev14, align 8
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %33, i32 0, i32 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i) #14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #11
  br label %err_free

rotate_setup_ctrls.exit:                          ; preds = %if.end24
  %call14.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool27.not = icmp eq i32 %call14.i, 0
  br i1 %tobool27.not, label %if.end29, label %rotate_setup_ctrls.exit.err_free_crit_edge

rotate_setup_ctrls.exit.err_free_crit_edge:       ; preds = %rotate_setup_ctrls.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end29:                                         ; preds = %rotate_setup_ctrls.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl_handler31 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %ctrl_handler31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ctrl_handler.i, ptr %ctrl_handler31, align 4
  br label %cleanup.sink.split

err_free:                                         ; preds = %rotate_setup_ctrls.exit.err_free_crit_edge, %rotate_setup_ctrls.exit.thread, %if.then20
  %ret.0 = phi i32 [ %29, %if.then20 ], [ %call14.i, %rotate_setup_ctrls.exit.err_free_crit_edge ], [ %31, %rotate_setup_ctrls.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_free, %if.end29, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end29 ], [ %ret.0, %err_free ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_mutex = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #11
  %ctrl_handler = getelementptr inbounds %struct.rotate_ctx, ptr %3, i32 0, i32 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #11
  tail call void @v4l2_fh_del(ptr noundef %3) #11
  tail call void @v4l2_fh_exit(ptr noundef %3) #11
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rotate_prepare_format(ptr nocapture noundef %pix_fmt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @rotate_find_format(i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pix_fmt, align 4
  %hsub = getelementptr inbounds %struct.rotate_format, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %hsub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hsub, align 4
  %sub = add i32 %3, -1
  %add = add i32 %sub, %5
  %neg = sub i32 0, %5
  %and = and i32 %add, %neg
  %height4 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 1
  %6 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height4, align 4
  %vsub = getelementptr inbounds %struct.rotate_format, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %vsub to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsub, align 4
  %sub5 = add i32 %7, -1
  %add6 = add i32 %sub5, %9
  %neg9 = sub i32 0, %9
  %and10 = and i32 %add6, %neg9
  %planes = getelementptr inbounds %struct.rotate_format, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.rotate_format, ptr %call, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %div = sdiv i32 %5, %13
  %mul = shl i32 %div, 4
  %phi.bo = add i32 %mul, -1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %alignment.0 = phi i32 [ %phi.bo, %if.then11 ], [ 15, %if.end.if.end13_crit_edge ]
  %bpp14 = getelementptr inbounds %struct.rotate_format, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %bpp14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bpp14, align 4
  %mul16 = mul i32 %15, %and
  %add18 = add i32 %mul16, %alignment.0
  %neg20 = xor i32 %alignment.0, -1
  %and21 = and i32 %add18, %neg20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2376 = icmp sgt i32 %11, 0
  br i1 %cmp2376, label %if.end34.peel, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end34.peel:                                    ; preds = %if.end13
  %mul24 = mul i32 %and21, %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %exitcond.peel.not = icmp eq i32 %11, 1
  br i1 %exitcond.peel.not, label %if.end34.peel.for.end_crit_edge, label %if.end34.peel.if.end34_crit_edge

if.end34.peel.if.end34_crit_edge:                 ; preds = %if.end34.peel
  br label %if.end34

if.end34.peel.for.end_crit_edge:                  ; preds = %if.end34.peel
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end34:                                         ; preds = %if.end34.if.end34_crit_edge, %if.end34.peel.if.end34_crit_edge
  %i.078 = phi i32 [ %inc, %if.end34.if.end34_crit_edge ], [ 1, %if.end34.peel.if.end34_crit_edge ]
  %sizeimage.077 = phi i32 [ %add35, %if.end34.if.end34_crit_edge ], [ %mul24, %if.end34.peel.if.end34_crit_edge ]
  %arrayidx28 = getelementptr %struct.rotate_format, ptr %call, i32 0, i32 3, i32 %i.078
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx28, align 4
  %mul29 = mul i32 %17, %mul24
  %div31 = udiv i32 %mul29, %5
  %div33 = udiv i32 %div31, %9
  %add35 = add i32 %div33, %sizeimage.077
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %if.end34.for.end_crit_edge, label %if.end34.if.end34_crit_edge, !llvm.loop !124

if.end34.if.end34_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %if.end34.peel.for.end_crit_edge, %if.end13.for.end_crit_edge
  %sizeimage.0.lcssa = phi i32 [ 0, %if.end13.for.end_crit_edge ], [ %mul24, %if.end34.peel.for.end_crit_edge ], [ %add35, %if.end34.for.end_crit_edge ]
  %18 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %pix_fmt, align 4
  %19 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and10, ptr %height4, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 4
  %20 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and21, ptr %bytesperline, align 4
  %sizeimage38 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sizeimage.0.lcssa, ptr %sizeimage38, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 744, ptr %buf_struct_size, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 15
  %4 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %min_buffers_needed, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rotate_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %7 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.rotate_dev, ptr %9, i32 0, i32 4
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev_mutex, ptr %lock, align 4
  %11 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.rotate_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 8
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %16 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %17 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %18 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 744, ptr %buf_struct_size7, align 4
  %min_buffers_needed8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 15
  %19 = ptrtoint ptr %min_buffers_needed8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %min_buffers_needed8, align 4
  %ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %20 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rotate_qops, ptr %ops9, align 4
  %mem_ops10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %21 = ptrtoint ptr %mem_ops10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops10, align 4
  %timestamp_flags11 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %22 = ptrtoint ptr %timestamp_flags11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16384, ptr %timestamp_flags11, align 4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev_mutex13 = getelementptr inbounds %struct.rotate_dev, ptr %24, i32 0, i32 4
  %lock14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %25 = ptrtoint ptr %lock14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev_mutex13, ptr %lock14, align 4
  %26 = load ptr, ptr %dev, align 4
  %dev16 = getelementptr inbounds %struct.rotate_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev16, align 8
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %29 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call18, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rotate_find_format(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rotate_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge42
    i32 3, label %entry.if.then_crit_edge43
    i32 8, label %entry.if.then_crit_edge44
    i32 5, label %entry.if.then_crit_edge45
    i32 7, label %entry.if.then_crit_edge46
    i32 12, label %entry.if.then_crit_edge47
    i32 14, label %entry.if.then_crit_edge48
  ]

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge42, %entry.if.then_crit_edge43, %entry.if.then_crit_edge44, %entry.if.then_crit_edge45, %entry.if.then_crit_edge46, %entry.if.then_crit_edge47, %entry.if.then_crit_edge48
  %src_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dst_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pix_fmt.0 = phi ptr [ %src_fmt, %if.then ], [ %dst_fmt, %if.else ]
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else25, label %if.then21

if.then21:                                        ; preds = %if.end
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt.0, i32 0, i32 5
  %9 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp22 = icmp ult i32 %8, %10
  br i1 %cmp22, label %if.then21.cleanup_crit_edge, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sizeimage26 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt.0, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage26, align 4
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sizes, align 4
  %14 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nplanes, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then21.if.end28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %if.then21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge48
    i32 3, label %entry.if.then_crit_edge49
    i32 8, label %entry.if.then_crit_edge50
    i32 5, label %entry.if.then_crit_edge51
    i32 7, label %entry.if.then_crit_edge52
    i32 12, label %entry.if.then_crit_edge53
    i32 14, label %entry.if.then_crit_edge54
  ]

entry.if.then_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge48, %entry.if.then_crit_edge49, %entry.if.then_crit_edge50, %entry.if.then_crit_edge51, %entry.if.then_crit_edge52, %entry.if.then_crit_edge53, %entry.if.then_crit_edge54
  %src_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %3, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dst_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %3, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pix_fmt.0 = phi ptr [ %src_fmt, %if.then ], [ %dst_fmt, %if.else ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end
  %sizeimage = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt.0, i32 0, i32 5
  %9 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp22.not = icmp eq i32 %10, 0
  br i1 %cmp22.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %if.end
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  %sizeimage46 = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix_fmt.0, i32 0, i32 5
  %13 = ptrtoint ptr %sizeimage46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizeimage46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp2247 = icmp ult i32 %12, %14
  br i1 %cmp2247, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i44

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i44:                                      ; preds = %vb2_plane_size.exit.thread
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i = icmp ult i32 %16, %14
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i44.if.end42.i_crit_edge

if.then.i44.if.end42.i_crit_edge:                 ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i44
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !126

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i44.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %18, %if.then38.i ], [ %14, %if.then.i44.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vq, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge48
    i32 3, label %entry.if.then_crit_edge49
    i32 8, label %entry.if.then_crit_edge50
    i32 5, label %entry.if.then_crit_edge51
    i32 7, label %entry.if.then_crit_edge52
    i32 12, label %entry.if.then_crit_edge53
    i32 14, label %entry.if.then_crit_edge54
  ]

entry.if.then_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge48, %entry.if.then_crit_edge49, %entry.if.then_crit_edge50, %entry.if.then_crit_edge51, %entry.if.then_crit_edge52, %entry.if.then_crit_edge53, %entry.if.then_crit_edge54
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %dev21 = getelementptr inbounds %struct.rotate_ctx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev21, align 4
  %dev22 = getelementptr inbounds %struct.rotate_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev22, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !128
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #14
  br label %return

return:                                           ; preds = %cleanup, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call.i, %cleanup ], [ 0, %entry.return_crit_edge ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rotate_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vq, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge32
    i32 3, label %entry.if.then_crit_edge33
    i32 8, label %entry.if.then_crit_edge34
    i32 5, label %entry.if.then_crit_edge35
    i32 7, label %entry.if.then_crit_edge36
    i32 12, label %entry.if.then_crit_edge37
    i32 14, label %entry.if.then_crit_edge38
  ]

entry.if.then_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge32, %entry.if.then_crit_edge33, %entry.if.then_crit_edge34, %entry.if.then_crit_edge35, %entry.if.then_crit_edge36, %entry.if.then_crit_edge37, %entry.if.then_crit_edge38
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %dev = getelementptr inbounds %struct.rotate_ctx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev21 = getelementptr inbounds %struct.rotate_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev21, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %drv_priv.i.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %9 = ptrtoint ptr %drv_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_priv.i.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %10, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then25.i, %if.end
  %11 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vq, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %12, label %if.else.i [
    i32 2, label %do.body.i.if.then.i_crit_edge
    i32 10, label %do.body.i.if.then.i_crit_edge39
    i32 3, label %do.body.i.if.then.i_crit_edge40
    i32 8, label %do.body.i.if.then.i_crit_edge41
    i32 5, label %do.body.i.if.then.i_crit_edge42
    i32 7, label %do.body.i.if.then.i_crit_edge43
    i32 12, label %do.body.i.if.then.i_crit_edge44
    i32 14, label %do.body.i.if.then.i_crit_edge45
  ]

do.body.i.if.then.i_crit_edge45:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body.i.if.then.i_crit_edge44:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body.i.if.then.i_crit_edge43:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body.i.if.then.i_crit_edge42:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body.i.if.then.i_crit_edge41:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body.i.if.then.i_crit_edge40:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body.i.if.then.i_crit_edge39:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.body.i.if.then.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.body.i.if.then.i_crit_edge, %do.body.i.if.then.i_crit_edge39, %do.body.i.if.then.i_crit_edge40, %do.body.i.if.then.i_crit_edge41, %do.body.i.if.then.i_crit_edge42, %do.body.i.if.then.i_crit_edge43, %do.body.i.if.then.i_crit_edge44, %do.body.i.if.then.i_crit_edge45
  %14 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i1.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #11
  %tobool.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i, label %rotate_queue_cleanup.exit, label %if.then25.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i1.i, i32 noundef 6) #11
  br label %do.body.i

rotate_queue_cleanup.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rotate_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %entry.cleanup25_crit_edge [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb1
    i32 9963810, label %sw.bb3
  ]

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  br label %cleanup25.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  br label %cleanup25.sink.split

sw.bb3:                                           ; preds = %entry
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val4, align 4
  %src_fmt.i = getelementptr i8, ptr %1, i32 -96
  %pixelformat.i = getelementptr i8, ptr %1, i32 -88
  %7 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat.i, align 4
  %call.i = tail call ptr @rotate_find_format(i32 noundef %8) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb3.rotate_set_cap_format.exit_crit_edge, label %if.end.i

sw.bb3.rotate_set_cap_format.exit_crit_edge:      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_set_cap_format.exit

if.end.i:                                         ; preds = %sw.bb3
  %flags.i = getelementptr inbounds %struct.rotate_format, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.end.i.if.end7.i_crit_edge
  %.sink.i = phi i32 [ %12, %if.else.i ], [ 842093913, %if.end.i.if.end7.i_crit_edge ]
  %13 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %6, label %if.else14.i [
    i32 90, label %if.end7.i.if.then9.i_crit_edge
    i32 270, label %if.end7.i.if.then9.i_crit_edge75
  ]

if.end7.i.if.then9.i_crit_edge75:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.end7.i.if.then9.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i.if.then9.i_crit_edge, %if.end7.i.if.then9.i_crit_edge75
  %height.i = getelementptr i8, ptr %1, i32 -92
  br label %if.end21.i

if.else14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %height19.i = getelementptr i8, ptr %1, i32 -92
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else14.i, %if.then9.i
  %fmt.sroa.0.0.in = phi ptr [ %src_fmt.i, %if.else14.i ], [ %height.i, %if.then9.i ]
  %height19.sink.i = phi ptr [ %height19.i, %if.else14.i ], [ %src_fmt.i, %if.then9.i ]
  %14 = ptrtoint ptr %fmt.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %fmt.sroa.0.0 = load i32, ptr %fmt.sroa.0.0.in, align 4
  %15 = ptrtoint ptr %height19.sink.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height19.sink.i, align 4
  %call.i65 = tail call ptr @rotate_find_format(i32 noundef %.sink.i) #11
  %tobool.not.i66 = icmp eq ptr %call.i65, null
  br i1 %tobool.not.i66, label %if.end21.i.rotate_set_cap_format.exit_crit_edge, label %if.end.i69

if.end21.i.rotate_set_cap_format.exit_crit_edge:  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_set_cap_format.exit

if.end.i69:                                       ; preds = %if.end21.i
  %hsub.i = getelementptr inbounds %struct.rotate_format, ptr %call.i65, i32 0, i32 4
  %17 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hsub.i, align 4
  %sub.i = add i32 %fmt.sroa.0.0, -1
  %add.i = add i32 %sub.i, %18
  %neg.i = sub i32 0, %18
  %and.i67 = and i32 %add.i, %neg.i
  %vsub.i = getelementptr inbounds %struct.rotate_format, ptr %call.i65, i32 0, i32 5
  %19 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vsub.i, align 4
  %sub5.i = add i32 %16, -1
  %add6.i = add i32 %sub5.i, %20
  %neg9.i = sub i32 0, %20
  %and10.i = and i32 %add6.i, %neg9.i
  %planes.i = getelementptr inbounds %struct.rotate_format, ptr %call.i65, i32 0, i32 2
  %21 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i68 = icmp sgt i32 %22, 1
  br i1 %cmp.i68, label %if.then11.i, label %if.end.i69.if.end13.i_crit_edge

if.end.i69.if.end13.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.rotate_format, ptr %call.i65, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %div.i = sdiv i32 %18, %24
  %mul.i = shl i32 %div.i, 4
  %phi.bo.i = add i32 %mul.i, -1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end.i69.if.end13.i_crit_edge
  %alignment.0.i = phi i32 [ %phi.bo.i, %if.then11.i ], [ 15, %if.end.i69.if.end13.i_crit_edge ]
  %bpp14.i = getelementptr inbounds %struct.rotate_format, ptr %call.i65, i32 0, i32 3
  %25 = ptrtoint ptr %bpp14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bpp14.i, align 4
  %mul16.i = mul i32 %26, %and.i67
  %add18.i = add i32 %mul16.i, %alignment.0.i
  %neg20.i = xor i32 %alignment.0.i, -1
  %and21.i = and i32 %add18.i, %neg20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2376.i = icmp sgt i32 %22, 0
  br i1 %cmp2376.i, label %if.end34.peel.i, label %if.end13.i.rotate_set_cap_format.exit_crit_edge

if.end13.i.rotate_set_cap_format.exit_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_set_cap_format.exit

if.end34.peel.i:                                  ; preds = %if.end13.i
  %mul24.i = mul i32 %and21.i, %and10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %exitcond.peel.not.i = icmp eq i32 %22, 1
  br i1 %exitcond.peel.not.i, label %if.end34.peel.i.rotate_set_cap_format.exit_crit_edge, label %if.end34.peel.i.if.end34.i_crit_edge

if.end34.peel.i.if.end34.i_crit_edge:             ; preds = %if.end34.peel.i
  br label %if.end34.i

if.end34.peel.i.rotate_set_cap_format.exit_crit_edge: ; preds = %if.end34.peel.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_set_cap_format.exit

if.end34.i:                                       ; preds = %if.end34.i.if.end34.i_crit_edge, %if.end34.peel.i.if.end34.i_crit_edge
  %i.078.i = phi i32 [ %inc.i, %if.end34.i.if.end34.i_crit_edge ], [ 1, %if.end34.peel.i.if.end34.i_crit_edge ]
  %sizeimage.077.i = phi i32 [ %add35.i, %if.end34.i.if.end34.i_crit_edge ], [ %mul24.i, %if.end34.peel.i.if.end34.i_crit_edge ]
  %arrayidx28.i = getelementptr %struct.rotate_format, ptr %call.i65, i32 0, i32 3, i32 %i.078.i
  %27 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx28.i, align 4
  %mul29.i = mul i32 %28, %mul24.i
  %div31.i = udiv i32 %mul29.i, %18
  %div33.i = udiv i32 %div31.i, %20
  %add35.i = add i32 %div33.i, %sizeimage.077.i
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %if.end34.i.rotate_set_cap_format.exit_crit_edge, label %if.end34.i.if.end34.i_crit_edge, !llvm.loop !124

if.end34.i.if.end34.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.end34.i.rotate_set_cap_format.exit_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_set_cap_format.exit

rotate_set_cap_format.exit:                       ; preds = %if.end34.i.rotate_set_cap_format.exit_crit_edge, %if.end34.peel.i.rotate_set_cap_format.exit_crit_edge, %if.end13.i.rotate_set_cap_format.exit_crit_edge, %if.end21.i.rotate_set_cap_format.exit_crit_edge, %sw.bb3.rotate_set_cap_format.exit_crit_edge
  %fmt.sroa.0.2 = phi i32 [ -1, %sw.bb3.rotate_set_cap_format.exit_crit_edge ], [ %fmt.sroa.0.0, %if.end21.i.rotate_set_cap_format.exit_crit_edge ], [ %and.i67, %if.end34.peel.i.rotate_set_cap_format.exit_crit_edge ], [ %and.i67, %if.end13.i.rotate_set_cap_format.exit_crit_edge ], [ %and.i67, %if.end34.i.rotate_set_cap_format.exit_crit_edge ]
  %fmt.sroa.8.1 = phi i32 [ -1, %sw.bb3.rotate_set_cap_format.exit_crit_edge ], [ %16, %if.end21.i.rotate_set_cap_format.exit_crit_edge ], [ %and10.i, %if.end34.peel.i.rotate_set_cap_format.exit_crit_edge ], [ %and10.i, %if.end13.i.rotate_set_cap_format.exit_crit_edge ], [ %and10.i, %if.end34.i.rotate_set_cap_format.exit_crit_edge ]
  %fmt.sroa.15.1 = phi i32 [ -1, %sw.bb3.rotate_set_cap_format.exit_crit_edge ], [ -1, %if.end21.i.rotate_set_cap_format.exit_crit_edge ], [ %and21.i, %if.end34.peel.i.rotate_set_cap_format.exit_crit_edge ], [ %and21.i, %if.end13.i.rotate_set_cap_format.exit_crit_edge ], [ %and21.i, %if.end34.i.rotate_set_cap_format.exit_crit_edge ]
  %fmt.sroa.17.1 = phi i32 [ -1, %sw.bb3.rotate_set_cap_format.exit_crit_edge ], [ -1, %if.end21.i.rotate_set_cap_format.exit_crit_edge ], [ %mul24.i, %if.end34.peel.i.rotate_set_cap_format.exit_crit_edge ], [ 0, %if.end13.i.rotate_set_cap_format.exit_crit_edge ], [ %add35.i, %if.end34.i.rotate_set_cap_format.exit_crit_edge ]
  %dst_fmt = getelementptr i8, ptr %1, i32 -48
  %29 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.0.2, i32 %30)
  %cmp.not = icmp eq i32 %fmt.sroa.0.2, %30
  br i1 %cmp.not, label %lor.lhs.false, label %rotate_set_cap_format.exit.if.then_crit_edge

rotate_set_cap_format.exit.if.then_crit_edge:     ; preds = %rotate_set_cap_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %rotate_set_cap_format.exit
  %height7 = getelementptr i8, ptr %1, i32 -44
  %31 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.8.1, i32 %32)
  %cmp8.not = icmp eq i32 %fmt.sroa.8.1, %32
  br i1 %cmp8.not, label %lor.lhs.false9, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %bytesperline11 = getelementptr i8, ptr %1, i32 -32
  %33 = ptrtoint ptr %bytesperline11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesperline11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.15.1, i32 %34)
  %cmp12.not = icmp eq i32 %fmt.sroa.15.1, %34
  br i1 %cmp12.not, label %lor.lhs.false13, label %lor.lhs.false9.if.then_crit_edge

lor.lhs.false9.if.then_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %sizeimage15 = getelementptr i8, ptr %1, i32 -28
  %35 = ptrtoint ptr %sizeimage15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sizeimage15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.17.1, i32 %36)
  %cmp16.not = icmp eq i32 %fmt.sroa.17.1, %36
  br i1 %cmp16.not, label %lor.lhs.false13.cleanup25.sink.split_crit_edge, label %lor.lhs.false13.if.then_crit_edge

lor.lhs.false13.if.then_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false13.cleanup25.sink.split_crit_edge:   ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25.sink.split

if.then:                                          ; preds = %lor.lhs.false13.if.then_crit_edge, %lor.lhs.false9.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %rotate_set_cap_format.exit.if.then_crit_edge
  %m2m_ctx = getelementptr i8, ptr %1, i32 -104
  %37 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_ctx, align 4
  %call17 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %38, i32 noundef 1) #11
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call17, i32 0, i32 21
  %39 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.not = icmp eq i32 %40, 0
  br i1 %cmp.i.not, label %if.end, label %if.then.cleanup25_crit_edge

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25

if.end:                                           ; preds = %if.then
  %41 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val4, align 4
  %43 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pixelformat.i, align 4
  %call.i45 = tail call ptr @rotate_find_format(i32 noundef %44) #11
  %tobool.not.i46 = icmp eq ptr %call.i45, null
  br i1 %tobool.not.i46, label %if.end.cleanup25.sink.split_crit_edge, label %if.end.i50

if.end.cleanup25.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup25.sink.split

if.end.i50:                                       ; preds = %if.end
  %flags.i47 = getelementptr inbounds %struct.rotate_format, ptr %call.i45, i32 0, i32 6
  %45 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i47, align 4
  %and.i48 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool1.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool1.not.i49, label %if.else.i51, label %if.end.i50.if.end7.i54_crit_edge

if.end.i50.if.end7.i54_crit_edge:                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i54

if.else.i51:                                      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pixelformat.i, align 4
  br label %if.end7.i54

if.end7.i54:                                      ; preds = %if.else.i51, %if.end.i50.if.end7.i54_crit_edge
  %.sink.i52 = phi i32 [ %48, %if.else.i51 ], [ 842093913, %if.end.i50.if.end7.i54_crit_edge ]
  %49 = getelementptr i8, ptr %1, i32 -40
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink.i52, ptr %49, align 4
  %field.i53 = getelementptr i8, ptr %1, i32 -36
  %51 = ptrtoint ptr %field.i53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %field.i53, align 4
  %52 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %42, label %if.else14.i58 [
    i32 90, label %if.end7.i54.if.then9.i56_crit_edge
    i32 270, label %if.end7.i54.if.then9.i56_crit_edge76
  ]

if.end7.i54.if.then9.i56_crit_edge76:             ; preds = %if.end7.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i56

if.end7.i54.if.then9.i56_crit_edge:               ; preds = %if.end7.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i56

if.then9.i56:                                     ; preds = %if.end7.i54.if.then9.i56_crit_edge, %if.end7.i54.if.then9.i56_crit_edge76
  %height.i55 = getelementptr i8, ptr %1, i32 -92
  %53 = ptrtoint ptr %height.i55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height.i55, align 4
  %55 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dst_fmt, align 4
  br label %if.end21.i61

if.else14.i58:                                    ; preds = %if.end7.i54
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_fmt.i, align 4
  %58 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dst_fmt, align 4
  %height19.i57 = getelementptr i8, ptr %1, i32 -92
  br label %if.end21.i61

if.end21.i61:                                     ; preds = %if.else14.i58, %if.then9.i56
  %height19.sink.i59 = phi ptr [ %height19.i57, %if.else14.i58 ], [ %src_fmt.i, %if.then9.i56 ]
  %59 = ptrtoint ptr %height19.sink.i59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height19.sink.i59, align 4
  %height20.i60 = getelementptr i8, ptr %1, i32 -44
  %61 = ptrtoint ptr %height20.i60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %height20.i60, align 4
  tail call fastcc void @rotate_prepare_format(ptr noundef %dst_fmt) #11
  br label %cleanup25.sink.split

cleanup25.sink.split:                             ; preds = %if.end21.i61, %if.end.cleanup25.sink.split_crit_edge, %lor.lhs.false13.cleanup25.sink.split_crit_edge, %sw.bb1, %sw.bb
  %val.sink = phi ptr [ %val, %sw.bb ], [ %val2, %sw.bb1 ], [ %val4, %if.end21.i61 ], [ %val4, %if.end.cleanup25.sink.split_crit_edge ], [ %val4, %lor.lhs.false13.cleanup25.sink.split_crit_edge ]
  %.sink74 = phi i32 [ 184, %sw.bb ], [ 188, %sw.bb1 ], [ 192, %if.end21.i61 ], [ 192, %if.end.cleanup25.sink.split_crit_edge ], [ 192, %lor.lhs.false13.cleanup25.sink.split_crit_edge ]
  %62 = ptrtoint ptr %val.sink to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.sink, align 4
  %hflip = getelementptr i8, ptr %1, i32 %.sink74
  %64 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %hflip, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup25.sink.split, %if.then.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup25_crit_edge ], [ -16, %if.then.cleanup25_crit_edge ], [ 0, %cleanup25.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #11
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rotate_enum_fmt(ptr noundef %f, i1 noundef zeroext true) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rotate_enum_fmt(ptr noundef %f, i1 noundef zeroext false) #11
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rotate_g_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %dst_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %fmt, ptr %dst_fmt, i32 48)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rotate_g_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %src_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %fmt, ptr %src_fmt, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_s_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %rotate.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rotate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotate.i, align 4
  %src_fmt.i.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2
  %pixelformat.i.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i.i, align 4
  %call.i.i = tail call ptr @rotate_find_format(i32 noundef %5) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.rotate_format, ptr %call.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %.sink.i.i = phi i32 [ %9, %if.else.i.i ], [ 842093913, %if.end.i.i.if.end7.i.i_crit_edge ]
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i.i, ptr %10, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field.i.i, align 4
  %13 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %3, label %if.else14.i.i [
    i32 90, label %if.end7.i.i.if.then9.i.i_crit_edge
    i32 270, label %if.end7.i.i.if.then9.i.i_crit_edge15
  ]

if.end7.i.i.if.then9.i.i_crit_edge15:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i.i

if.end7.i.i.if.then9.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i.if.then9.i.i_crit_edge, %if.end7.i.i.if.then9.i.i_crit_edge15
  %height.i.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i.i, align 4
  %16 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fmt.i, align 4
  br label %if.end

if.else14.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %src_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_fmt.i.i, align 4
  %19 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fmt.i, align 4
  %height19.i.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else14.i.i, %if.then9.i.i
  %height19.sink.i.i = phi ptr [ %height19.i.i, %if.else14.i.i ], [ %src_fmt.i.i, %if.then9.i.i ]
  %20 = ptrtoint ptr %height19.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height19.sink.i.i, align 4
  %height20.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height20.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height20.i.i, align 4
  tail call fastcc void @rotate_prepare_format(ptr noundef %fmt.i) #11
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx, align 4
  %25 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %24, i32 noundef %26) #11
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %27 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.not = icmp eq i32 %28, 0
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dst_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3
  %29 = call ptr @memcpy(ptr %dst_fmt, ptr %fmt.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_s_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i, align 4
  %call.i = tail call ptr @rotate_find_format(i32 noundef %3) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 875708738, ptr %pixelformat.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %5 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i = icmp ult i32 %6, 8
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %fmt.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp9.i = icmp ult i32 %9, 8
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %height.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end13.i_crit_edge
  %11 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp16.i = icmp ugt i32 %12, 4096
  br i1 %cmp16.i, label %if.then17.i, label %if.end13.i.if.end20.i_crit_edge

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4096, ptr %fmt.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end20.i_crit_edge
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %15)
  %cmp23.i = icmp ugt i32 %15, 4096
  br i1 %cmp23.i, label %if.then24.i, label %if.end20.i.rotate_try_fmt_vid_out.exit_crit_edge

if.end20.i.rotate_try_fmt_vid_out.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_try_fmt_vid_out.exit

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %height.i, align 4
  br label %rotate_try_fmt_vid_out.exit

rotate_try_fmt_vid_out.exit:                      ; preds = %if.then24.i, %if.end20.i.rotate_try_fmt_vid_out.exit_crit_edge
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field.i, align 4
  tail call fastcc void @rotate_prepare_format(ptr noundef %fmt.i) #11
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 4
  %20 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %19, i32 noundef %21) #11
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %22 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i44.not = icmp eq i32 %23, 0
  br i1 %cmp.i44.not, label %if.end5, label %rotate_try_fmt_vid_out.exit.cleanup_crit_edge

rotate_try_fmt_vid_out.exit.cleanup_crit_edge:    ; preds = %rotate_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %rotate_try_fmt_vid_out.exit
  %24 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx, align 4
  %call8 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %25, i32 noundef 1) #11
  %num_buffers.i45 = getelementptr inbounds %struct.vb2_queue, ptr %call8, i32 0, i32 21
  %26 = ptrtoint ptr %num_buffers.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_buffers.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i46.not = icmp eq i32 %27, 0
  br i1 %cmp.i46.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %src_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %src_fmt, ptr %fmt.i, i32 48)
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace, align 4
  %dst_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3
  %colorspace13 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %colorspace13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %colorspace13, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %32 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xfer_func, align 4
  %xfer_func16 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3, i32 11
  %34 = ptrtoint ptr %xfer_func16 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xfer_func16, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3, i32 9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quantization, align 4
  %quantization21 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3, i32 10
  %42 = ptrtoint ptr %quantization21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %quantization21, align 4
  %rotate = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rotate, align 4
  %pixelformat.i47 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %pixelformat.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixelformat.i47, align 4
  %call.i48 = tail call ptr @rotate_find_format(i32 noundef %46) #11
  %tobool.not.i49 = icmp eq ptr %call.i48, null
  br i1 %tobool.not.i49, label %if.end11.cleanup_crit_edge, label %if.end.i50

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i50:                                       ; preds = %if.end11
  %flags.i = getelementptr inbounds %struct.rotate_format, ptr %call.i48, i32 0, i32 6
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i50.if.end7.i52_crit_edge

if.end.i50.if.end7.i52_crit_edge:                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i52

if.else.i:                                        ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %pixelformat.i47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pixelformat.i47, align 4
  br label %if.end7.i52

if.end7.i52:                                      ; preds = %if.else.i, %if.end.i50.if.end7.i52_crit_edge
  %.sink.i = phi i32 [ %50, %if.else.i ], [ 842093913, %if.end.i50.if.end7.i52_crit_edge ]
  %51 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink.i, ptr %51, align 4
  %field.i51 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %field.i51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %field.i51, align 4
  %54 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %44, label %if.else14.i [
    i32 90, label %if.end7.i52.if.then9.i_crit_edge
    i32 270, label %if.end7.i52.if.then9.i_crit_edge54
  ]

if.end7.i52.if.then9.i_crit_edge54:               ; preds = %if.end7.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.end7.i52.if.then9.i_crit_edge:                 ; preds = %if.end7.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i52.if.then9.i_crit_edge, %if.end7.i52.if.then9.i_crit_edge54
  %height.i53 = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %height.i53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height.i53, align 4
  %57 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dst_fmt, align 4
  br label %if.end21.i

if.else14.i:                                      ; preds = %if.end7.i52
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %src_fmt, align 4
  %60 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %dst_fmt, align 4
  %height19.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else14.i, %if.then9.i
  %height19.sink.i = phi ptr [ %height19.i, %if.else14.i ], [ %src_fmt, %if.then9.i ]
  %61 = ptrtoint ptr %height19.sink.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height19.sink.i, align 4
  %height20.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %height20.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %height20.i, align 4
  tail call fastcc void @rotate_prepare_format(ptr noundef %dst_fmt) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %rotate_try_fmt_vid_out.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %rotate_try_fmt_vid_out.exit.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ], [ 0, %if.end21.i ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_try_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %rotate = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rotate, align 4
  %src_fmt.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2
  %pixelformat.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  %call.i = tail call ptr @rotate_find_format(i32 noundef %5) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.rotate_set_cap_format.exit_crit_edge, label %if.end.i

entry.rotate_set_cap_format.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_set_cap_format.exit

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.rotate_format, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.end.i.if.end7.i_crit_edge
  %.sink.i = phi i32 [ %9, %if.else.i ], [ 842093913, %if.end.i.if.end7.i_crit_edge ]
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %10, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field.i, align 4
  %13 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %3, label %if.else14.i [
    i32 90, label %if.end7.i.if.then9.i_crit_edge
    i32 270, label %if.end7.i.if.then9.i_crit_edge3
  ]

if.end7.i.if.then9.i_crit_edge3:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.end7.i.if.then9.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i.if.then9.i_crit_edge, %if.end7.i.if.then9.i_crit_edge3
  %height.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fmt, align 4
  br label %if.end21.i

if.else14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_fmt.i, align 4
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fmt, align 4
  %height19.i = getelementptr inbounds %struct.rotate_ctx, ptr %1, i32 0, i32 2, i32 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else14.i, %if.then9.i
  %height19.sink.i = phi ptr [ %height19.i, %if.else14.i ], [ %src_fmt.i, %if.then9.i ]
  %20 = ptrtoint ptr %height19.sink.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height19.sink.i, align 4
  %height20.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height20.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height20.i, align 4
  tail call fastcc void @rotate_prepare_format(ptr noundef %fmt) #11
  br label %rotate_set_cap_format.exit

rotate_set_cap_format.exit:                       ; preds = %if.end21.i, %entry.rotate_set_cap_format.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end21.i ], [ -22, %entry.rotate_set_cap_format.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @rotate_find_format(i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 875708738, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp ult i32 %4, 8
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %fmt, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp9 = icmp ult i32 %7, 8
  br i1 %cmp9, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %height, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %10)
  %cmp16 = icmp ugt i32 %10, 4096
  br i1 %cmp16, label %if.then17, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %fmt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %13)
  %cmp23 = icmp ugt i32 %13, 4096
  br i1 %cmp23, label %if.then24, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %height, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field, align 4
  tail call fastcc void @rotate_prepare_format(ptr noundef %fmt)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %call = tail call ptr @rotate_find_format(i32 noundef %3) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 4
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %5, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %7 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %max_height, align 4
  %hsub = getelementptr inbounds %struct.rotate_format, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %hsub to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hsub, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %step_width, align 4
  %vsub = getelementptr inbounds %struct.rotate_format, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %vsub to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vsub, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %15 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rotate_enum_fmt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rotate_device_run(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %addr = alloca [3 x i32], align 4
  %pitch = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %addr) #11
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr, align 4, !annotation !130
  %3 = getelementptr inbounds [3 x i32], ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !130
  %5 = getelementptr inbounds [3 x i32], ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pitch) #11
  %7 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %pitch, align 4, !annotation !130
  %8 = getelementptr inbounds [3 x i32], ptr %pitch, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !130
  %10 = getelementptr inbounds [3 x i32], ptr %pitch, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !130
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %12 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #11
  %14 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 7
  %call.i122 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #11
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i122, i1 noundef zeroext true) #11
  %hflip = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 5
  %16 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 129
  %vflip = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 6
  %18 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  %or7 = or i32 %spec.select, 64
  %val.1 = select i1 %tobool5.not, i32 %spec.select, i32 %or7
  %rotate = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 7
  %20 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rotate, align 4
  %div = udiv i32 %21, 90
  %shl = shl nuw nsw i32 %div, 4
  %or9 = or i32 %val.1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %21)
  %switch.selectcmp.case1 = icmp eq i32 %21, 90
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %21)
  %switch.selectcmp.case2 = icmp eq i32 %21, 270
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %22 = select i1 %switch.selectcmp, i32 458752, i32 4128768
  %or15 = or i32 %or9, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %or15) #11
  %base.i = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !123
  %pixelformat = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixelformat, align 4
  %call17 = tail call ptr @rotate_find_format(i32 noundef %27) #11
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %entry.cleanup_crit_edge, label %if.end20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %entry
  %src_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 2
  %hw_format = getelementptr inbounds %struct.rotate_format, ptr %call17, i32 0, i32 1
  %28 = ptrtoint ptr %hw_format to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_format, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #11, !srcloc !123
  %call.i124 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #11
  %33 = ptrtoint ptr %call.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i124, align 4
  %bytesperline = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytesperline, align 4
  %height = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height, align 4
  %planes.i = getelementptr inbounds %struct.rotate_format, ptr %call17, i32 0, i32 2
  %39 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp28.i = icmp sgt i32 %40, 0
  br i1 %cmp28.i, label %if.end10.peel.i, label %if.end20.rotate_calc_addr_pitch.exit_crit_edge

if.end20.rotate_calc_addr_pitch.exit_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_calc_addr_pitch.exit

if.end10.peel.i:                                  ; preds = %if.end20
  %41 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %36, ptr %pitch, align 4
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %34, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.peel.i.not = icmp eq i32 %40, 1
  br i1 %cmp.peel.i.not, label %if.end10.peel.i.rotate_calc_addr_pitch.exit_crit_edge, label %for.body.peel.next.i

if.end10.peel.i.rotate_calc_addr_pitch.exit_crit_edge: ; preds = %if.end10.peel.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_calc_addr_pitch.exit

for.body.peel.next.i:                             ; preds = %if.end10.peel.i
  %vsub.i = getelementptr inbounds %struct.rotate_format, ptr %call17, i32 0, i32 5
  %hsub.i = getelementptr inbounds %struct.rotate_format, ptr %call17, i32 0, i32 4
  %mul.peel.i = mul i32 %38, %36
  %add.peel.i = add i32 %mul.peel.i, %34
  %43 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hsub.i, align 4
  %45 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vsub.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.i.if.end10.i_crit_edge, %for.body.peel.next.i
  %i.030.i = phi i32 [ 1, %for.body.peel.next.i ], [ %inc.i, %if.end10.i.if.end10.i_crit_edge ]
  %buffer.addr.029.i = phi i32 [ %add.peel.i, %for.body.peel.next.i ], [ %add.i, %if.end10.i.if.end10.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %pitch, i32 %i.030.i
  %arrayidx1.i = getelementptr i32, ptr %addr, i32 %i.030.i
  %47 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %buffer.addr.029.i, ptr %arrayidx1.i, align 4
  %arrayidx3.i = getelementptr %struct.rotate_format, ptr %call17, i32 0, i32 3, i32 %i.030.i
  %48 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx3.i, align 4
  %div.i = sdiv i32 %44, %49
  %div5.i = udiv i32 %36, %div.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div5.i, ptr %arrayidx.i, align 4
  %mul26.i = mul i32 %div5.i, %38
  %div9.i = udiv i32 %mul26.i, %46
  %add.i = add i32 %div9.i, %buffer.addr.029.i
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not, label %if.end10.i.rotate_calc_addr_pitch.exit_crit_edge, label %if.end10.i.if.end10.i_crit_edge, !llvm.loop !131

if.end10.i.if.end10.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end10.i.rotate_calc_addr_pitch.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_calc_addr_pitch.exit

rotate_calc_addr_pitch.exit:                      ; preds = %if.end10.i.rotate_calc_addr_pitch.exit_crit_edge, %if.end10.peel.i.rotate_calc_addr_pitch.exit_crit_edge, %if.end20.rotate_calc_addr_pitch.exit_crit_edge
  %sub = shl i32 %38, 16
  %shl28 = add i32 %sub, -65536
  %51 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %src_fmt, align 4
  %sub30 = add i32 %52, -1
  %or31 = or i32 %sub30, %shl28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %or31) #11
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %55, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %53) #11, !srcloc !123
  %56 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pitch, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %58) #11, !srcloc !123
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #11
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %65, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %63) #11, !srcloc !123
  %66 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %70, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %68) #11, !srcloc !123
  %71 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %75, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %73) #11, !srcloc !123
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #11
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %80, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %78) #11, !srcloc !123
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #11
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %85, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %83) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %87, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 0) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %89, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 0) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %91, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 0) #11, !srcloc !123
  %pixelformat37 = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 3, i32 2
  %92 = ptrtoint ptr %pixelformat37 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pixelformat37, align 4
  %call38 = tail call ptr @rotate_find_format(i32 noundef %93) #11
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %rotate_calc_addr_pitch.exit.cleanup_crit_edge, label %if.end41

rotate_calc_addr_pitch.exit.cleanup_crit_edge:    ; preds = %rotate_calc_addr_pitch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %rotate_calc_addr_pitch.exit
  %dst_fmt = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 3
  %call.i145 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i122, i32 noundef 0) #11
  %94 = ptrtoint ptr %call.i145 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call.i145, align 4
  %bytesperline45 = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 3, i32 4
  %96 = ptrtoint ptr %bytesperline45 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytesperline45, align 4
  %height47 = getelementptr inbounds %struct.rotate_ctx, ptr %priv, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %height47 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height47, align 4
  %planes.i146 = getelementptr inbounds %struct.rotate_format, ptr %call38, i32 0, i32 2
  %100 = ptrtoint ptr %planes.i146 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %planes.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp28.i147 = icmp sgt i32 %101, 0
  br i1 %cmp28.i147, label %if.end10.peel.i151, label %if.end41.rotate_calc_addr_pitch.exit168_crit_edge

if.end41.rotate_calc_addr_pitch.exit168_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_calc_addr_pitch.exit168

if.end10.peel.i151:                               ; preds = %if.end41
  %102 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %97, ptr %pitch, align 4
  %103 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %95, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp.peel.i150.not = icmp eq i32 %101, 1
  br i1 %cmp.peel.i150.not, label %if.end10.peel.i151.rotate_calc_addr_pitch.exit168_crit_edge, label %for.body.peel.next.i154

if.end10.peel.i151.rotate_calc_addr_pitch.exit168_crit_edge: ; preds = %if.end10.peel.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_calc_addr_pitch.exit168

for.body.peel.next.i154:                          ; preds = %if.end10.peel.i151
  %vsub.i149 = getelementptr inbounds %struct.rotate_format, ptr %call38, i32 0, i32 5
  %hsub.i148 = getelementptr inbounds %struct.rotate_format, ptr %call38, i32 0, i32 4
  %mul.peel.i152 = mul i32 %99, %97
  %add.peel.i153 = add i32 %mul.peel.i152, %95
  %104 = ptrtoint ptr %hsub.i148 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hsub.i148, align 4
  %106 = ptrtoint ptr %vsub.i149 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vsub.i149, align 4
  br label %if.end10.i167

if.end10.i167:                                    ; preds = %if.end10.i167.if.end10.i167_crit_edge, %for.body.peel.next.i154
  %i.030.i155 = phi i32 [ 1, %for.body.peel.next.i154 ], [ %inc.i165, %if.end10.i167.if.end10.i167_crit_edge ]
  %buffer.addr.029.i156 = phi i32 [ %add.peel.i153, %for.body.peel.next.i154 ], [ %add.i164, %if.end10.i167.if.end10.i167_crit_edge ]
  %arrayidx.i157 = getelementptr i32, ptr %pitch, i32 %i.030.i155
  %arrayidx1.i158 = getelementptr i32, ptr %addr, i32 %i.030.i155
  %108 = ptrtoint ptr %arrayidx1.i158 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %buffer.addr.029.i156, ptr %arrayidx1.i158, align 4
  %arrayidx3.i159 = getelementptr %struct.rotate_format, ptr %call38, i32 0, i32 3, i32 %i.030.i155
  %109 = ptrtoint ptr %arrayidx3.i159 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx3.i159, align 4
  %div.i160 = sdiv i32 %105, %110
  %div5.i161 = udiv i32 %97, %div.i160
  %111 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div5.i161, ptr %arrayidx.i157, align 4
  %mul26.i162 = mul i32 %div5.i161, %99
  %div9.i163 = udiv i32 %mul26.i162, %107
  %add.i164 = add i32 %div9.i163, %buffer.addr.029.i156
  %inc.i165 = add nuw nsw i32 %i.030.i155, 1
  %exitcond193.not = icmp eq i32 %inc.i165, %101
  br i1 %exitcond193.not, label %if.end10.i167.rotate_calc_addr_pitch.exit168_crit_edge, label %if.end10.i167.if.end10.i167_crit_edge, !llvm.loop !131

if.end10.i167.if.end10.i167_crit_edge:            ; preds = %if.end10.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i167

if.end10.i167.rotate_calc_addr_pitch.exit168_crit_edge: ; preds = %if.end10.i167
  call void @__sanitizer_cov_trace_pc() #13
  br label %rotate_calc_addr_pitch.exit168

rotate_calc_addr_pitch.exit168:                   ; preds = %if.end10.i167.rotate_calc_addr_pitch.exit168_crit_edge, %if.end10.peel.i151.rotate_calc_addr_pitch.exit168_crit_edge, %if.end41.rotate_calc_addr_pitch.exit168_crit_edge
  %sub52 = shl i32 %99, 16
  %shl53 = add i32 %sub52, -65536
  %112 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dst_fmt, align 4
  %sub56 = add i32 %113, -1
  %or57 = or i32 %sub56, %shl53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %114 = tail call i32 @llvm.bswap.i32(i32 %or57) #11
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %116, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %114) #11, !srcloc !123
  %117 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pitch, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #11
  %120 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %121, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %119) #11, !srcloc !123
  %122 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #11
  %125 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %126, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %124) #11, !srcloc !123
  %127 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #11
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %131, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %129) #11, !srcloc !123
  %132 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #11
  %135 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %136, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %134) #11, !srcloc !123
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #11
  %140 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %141, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %139) #11, !srcloc !123
  %142 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #11
  %145 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %146, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %144) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 4
  %add.ptr.i184 = getelementptr i8, ptr %148, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 0) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %150, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 0) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !122
  tail call void @arm_heavy_mb() #11
  %151 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i, align 4
  %add.ptr.i188 = getelementptr i8, ptr %152, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 0) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @arm_heavy_mb() #11
  %153 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i, align 4
  %add.ptr.i190 = getelementptr i8, ptr %154, i32 4
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #11, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  %156 = or i32 %155, 256
  %157 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %158, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %156) #11, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !132
  tail call void @arm_heavy_mb() #11
  %159 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i, align 4
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #11, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  %162 = or i32 %161, 128
  %163 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %162) #11, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %rotate_calc_addr_pitch.exit168, %rotate_calc_addr_pitch.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pitch) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %addr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_runtime_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstc = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 8
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #11
  %mod_clk = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %bus_clk = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotate_runtime_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bus_clk = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %mod_clk = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod_clk, align 4
  %call.i33 = tail call i32 @clk_prepare(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end.i37, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.end.i37:                                       ; preds = %if.end
  %call1.i35 = tail call i32 @clk_enable(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool2.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool2.not.i36, label %if.end10, label %if.then3.i38

if.then3.i38:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %7) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i38, %if.end.do.end8_crit_edge
  %retval.0.i39.ph = phi i32 [ %call1.i35, %if.then3.i38 ], [ %call.i33, %if.end.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43) #14
  br label %err_bus_clk

if.end10:                                         ; preds = %if.end.i37
  %rstc = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rstc, align 8
  %call11 = tail call i32 @reset_control_deassert(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev17 = getelementptr inbounds %struct.rotate_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.46) #14
  %14 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  br label %err_bus_clk

err_bus_clk:                                      ; preds = %do.end16, %do.end8
  %ret.0 = phi i32 [ %retval.0.i39.ph, %do.end8 ], [ %call11, %do.end16 ]
  %16 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %err_bus_clk, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %err_bus_clk ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_sun8i_rotate__299_917_rotate_driver_init6, !1, !"__initcall__kmod_sun8i_rotate__299_917_rotate_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 917, i32 1}
!2 = !{ptr @__exitcall_rotate_driver_exit, !1, !"__exitcall_rotate_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file300, !4, !"__UNIQUE_ID_file300", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 919, i32 1}
!5 = !{ptr @__UNIQUE_ID_license301, !4, !"__UNIQUE_ID_license301", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author302, !7, !"__UNIQUE_ID_author302", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 920, i32 1}
!8 = !{ptr @__UNIQUE_ID_description303, !9, !"__UNIQUE_ID_description303", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 921, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 912, i32 12}
!12 = !{ptr @rotate_driver, !13, !"rotate_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 908, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 756, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rotate_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rotate_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 765, i32 40}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 767, i32 3}
!26 = !{ptr @rotate_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rotate_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 772, i32 40}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 774, i32 3}
!32 = !{ptr @rotate_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rotate_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 781, i32 3}
!36 = !{ptr @rotate_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rotate_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @rotate_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 786, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 790, i32 3}
!43 = !{ptr @rotate_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rotate_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 799, i32 41}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 805, i32 3}
!49 = !{ptr @rotate_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rotate_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 810, i32 2}
!53 = !{ptr @rotate_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rotate_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 815, i32 3}
!57 = !{ptr @rotate_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rotate_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @rotate_video_device, !60, !"rotate_video_device", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 722, i32 34}
!61 = !{ptr @rotate_fops, !62, !"rotate_fops", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 713, i32 42}
!63 = !{ptr @rotate_qops, !64, !"rotate_qops", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 519, i32 29}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 499, i32 4}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rotate_start_streaming._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rotate_start_streaming._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rotate_setup_ctrls._key, !74, !"_key", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 615, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 629, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rotate_setup_ctrls._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rotate_setup_ctrls._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @rotate_ctrl_ops, !82, !"rotate_ctrl_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 609, i32 35}
!83 = !{ptr @rotate_ioctl_ops, !84, !"rotate_ioctl_ops", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 393, i32 36}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 218, i32 4}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 148, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rotate_irq._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rotate_irq._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @rotate_m2m_ops, !93, !"rotate_m2m_ops", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 732, i32 34}
!94 = !{ptr @rotate_dt_match, !95, !"rotate_dt_match", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 897, i32 34}
!96 = !{ptr @rotate_pm_ops, !97, !"rotate_pm_ops", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 903, i32 32}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 856, i32 3}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @rotate_runtime_resume._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @rotate_runtime_resume._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 863, i32 3}
!105 = !{ptr @rotate_runtime_resume._entry.42, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rotate_runtime_resume._entry_ptr.44, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/sunxi/sun8i-rotate/sun8i_rotate.c", i32 870, i32 3}
!109 = !{ptr @rotate_runtime_resume._entry.45, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rotate_runtime_resume._entry_ptr.47, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 4250214}
!121 = !{i64 2156610398}
!122 = !{i64 2156610781}
!123 = !{i64 4249796}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.peeled.count", i32 1}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{i64 2148259687}
!128 = !{i64 744510, i64 744535, i64 744557, i64 744573, i64 744585, i64 744605, i64 744629, i64 744645, i64 744657}
!129 = !{i64 2148259875}
!130 = !{!"auto-init"}
!131 = distinct !{!131, !125}
!132 = !{i64 2156612068}
!133 = !{i64 2156612969}
