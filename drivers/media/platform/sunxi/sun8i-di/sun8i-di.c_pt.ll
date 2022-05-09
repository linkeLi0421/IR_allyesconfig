; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c_pt.bc'
source_filename = "../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c"
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.deinterlace_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.deinterlace_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, ptr, i32, ptr, i32, ptr, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.94, i32, i32 }
%union.anon.94 = type { i32 }
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
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.92, i32 }
%union.anon.92 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.110, [2 x i32] }
%union.anon.110 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_sun8i_di__307_1012_deinterlace_driver_init6 = internal global ptr @deinterlace_driver_init, section ".initcall6.init", align 4
@deinterlace_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @deinterlace_probe, ptr @deinterlace_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @deinterlace_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @deinterlace_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_deinterlace_driver_exit = internal global ptr @deinterlace_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file308 = internal constant [61 x i8] c"sun8i_di.file=drivers/media/platform/sunxi/sun8i-di/sun8i-di\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [24 x i8] c"sun8i_di.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [57 x i8] c"sun8i_di.author=Jernej Skrabec <jernej.skrabec@siol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [50 x i8] c"sun8i_di.description=Allwinner Deinterlace driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i-di\00", [23 x i8] zeroinitializer }, align 32
@deinterlace_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-deinterlace\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@deinterlace_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @deinterlace_runtime_suspend, ptr @deinterlace_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@deinterlace_video_device = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @deinterlace_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"sun8i-di\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @deinterlace_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"deinterlace_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/platform/sunxi/sun8i-di/sun8i-di.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr = internal global ptr @deinterlace_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.9 = internal global ptr @deinterlace_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 840, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get mod clock\0A\00", [39 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.13 = internal global ptr @deinterlace_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get ram clock\0A\00", [39 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.17 = internal global ptr @deinterlace_probe._entry.15, section ".printk_index", align 4
@deinterlace_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.20 = internal global ptr @deinterlace_probe._entry.18, section ".printk_index", align 4
@deinterlace_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 863, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register V4L2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.24 = internal global ptr @deinterlace_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.28 = internal global ptr @deinterlace_probe._entry.26, section ".printk_index", align 4
@deinterlace_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.31 = internal global ptr @deinterlace_probe._entry.29, section ".printk_index", align 4
@deinterlace_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @deinterlace_device_run, ptr @deinterlace_job_ready, ptr @deinterlace_job_abort }, [20 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Failed to initialize V4L2 M2M device\0A\00", [52 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.34 = internal global ptr @deinterlace_probe._entry.32, section ".printk_index", align 4
@deinterlace_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @deinterlace_open, ptr @deinterlace_release }, [60 x i8] zeroinitializer }, align 32
@deinterlace_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @deinterlace_querycap, ptr @deinterlace_enum_fmt, ptr null, ptr @deinterlace_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @deinterlace_g_fmt_vid_cap, ptr null, ptr @deinterlace_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @deinterlace_s_fmt_vid_cap, ptr null, ptr @deinterlace_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @deinterlace_try_fmt_vid_cap, ptr null, ptr @deinterlace_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @deinterlace_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@deinterlace_formats = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 842094158, i32 825382478], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@deinterlace_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @deinterlace_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @deinterlace_buf_prepare, ptr null, ptr null, ptr @deinterlace_start_streaming, ptr @deinterlace_stop_streaming, ptr @deinterlace_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@deinterlace_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable module\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"deinterlace_start_streaming\00", [36 x i8] zeroinitializer }, align 32
@deinterlace_start_streaming._entry_ptr = internal global ptr @deinterlace_start_streaming._entry, section ".printk_index", align 4
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@deinterlace_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Instance released before the end of transaction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"deinterlace_irq\00", [16 x i8] zeroinitializer }, align 32
@deinterlace_irq._entry_ptr = internal global ptr @deinterlace_irq._entry, section ".printk_index", align 4
@deinterlace_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set exclusive mod clock rate\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"deinterlace_runtime_resume\00", [37 x i8] zeroinitializer }, align 32
@deinterlace_runtime_resume._entry_ptr = internal global ptr @deinterlace_runtime_resume._entry, section ".printk_index", align 4
@deinterlace_runtime_resume._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 936, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@deinterlace_runtime_resume._entry_ptr.45 = internal global ptr @deinterlace_runtime_resume._entry.43, section ".printk_index", align 4
@deinterlace_runtime_resume._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable mod clock\0A\00", [36 x i8] zeroinitializer }, align 32
@deinterlace_runtime_resume._entry_ptr.48 = internal global ptr @deinterlace_runtime_resume._entry.46, section ".printk_index", align 4
@deinterlace_runtime_resume._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.3, i32 950, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable ram clock\0A\00", [36 x i8] zeroinitializer }, align 32
@deinterlace_runtime_resume._entry_ptr.51 = internal global ptr @deinterlace_runtime_resume._entry.49, section ".printk_index", align 4
@deinterlace_runtime_resume._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.3, i32 957, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to apply reset\0A\00", [41 x i8] zeroinitializer }, align 32
@deinterlace_runtime_resume._entry_ptr.54 = internal global ptr @deinterlace_runtime_resume._entry.52, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.56 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.58 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.59 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.60 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.61 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"deinterlace_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1003, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 1007, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"deinterlace_dt_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 992, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"deinterlace_pm_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 998, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"deinterlace_video_device\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 786, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 822, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 831, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 833, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 838, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 840, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 845, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 847, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 854, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 859, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 863, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 872, i32 41 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 878, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 883, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"deinterlace_m2m_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 796, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 888, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"deinterlace_fops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 777, i32 42 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"deinterlace_ioctl_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 489, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"deinterlace_formats\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 28, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"deinterlace_qops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 656, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1163, i32 7 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 594, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 356, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 206, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 929, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 936, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 943, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 950, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [52 x i8] c"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 957, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_deinterlace_driver_exit, ptr @__initcall__kmod_sun8i_di__307_1012_deinterlace_driver_init6, ptr @deinterlace_driver_exit, ptr @deinterlace_irq._entry, ptr @deinterlace_irq._entry_ptr, ptr @deinterlace_probe._entry, ptr @deinterlace_probe._entry.11, ptr @deinterlace_probe._entry.15, ptr @deinterlace_probe._entry.18, ptr @deinterlace_probe._entry.22, ptr @deinterlace_probe._entry.26, ptr @deinterlace_probe._entry.29, ptr @deinterlace_probe._entry.32, ptr @deinterlace_probe._entry.7, ptr @deinterlace_probe._entry_ptr, ptr @deinterlace_probe._entry_ptr.13, ptr @deinterlace_probe._entry_ptr.17, ptr @deinterlace_probe._entry_ptr.20, ptr @deinterlace_probe._entry_ptr.24, ptr @deinterlace_probe._entry_ptr.28, ptr @deinterlace_probe._entry_ptr.31, ptr @deinterlace_probe._entry_ptr.34, ptr @deinterlace_probe._entry_ptr.9, ptr @deinterlace_runtime_resume._entry, ptr @deinterlace_runtime_resume._entry.43, ptr @deinterlace_runtime_resume._entry.46, ptr @deinterlace_runtime_resume._entry.49, ptr @deinterlace_runtime_resume._entry.52, ptr @deinterlace_runtime_resume._entry_ptr, ptr @deinterlace_runtime_resume._entry_ptr.45, ptr @deinterlace_runtime_resume._entry_ptr.48, ptr @deinterlace_runtime_resume._entry_ptr.51, ptr @deinterlace_runtime_resume._entry_ptr.54, ptr @deinterlace_start_streaming._entry, ptr @deinterlace_start_streaming._entry_ptr, ptr @deinterlace_driver, ptr @.str, ptr @deinterlace_dt_match, ptr @deinterlace_pm_ops, ptr @deinterlace_video_device, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @deinterlace_probe.__key, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @deinterlace_m2m_ops, ptr @.str.33, ptr @deinterlace_fops, ptr @deinterlace_ioctl_ops, ptr @deinterlace_formats, ptr @deinterlace_qops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_video_device to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_runtime_resume._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_runtime_resume._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_runtime_resume._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_runtime_resume._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @deinterlace_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @deinterlace_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1600, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vfd2 = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %vfd2, ptr @deinterlace_video_device, i32 1352)
  %dev4 = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev4, align 8
  %call5 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp = icmp slt i32 %call5, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end7.dev_name.exit_crit_edge ]
  %call.i191 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %call5, ptr noundef nonnull @deinterlace_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool12.not = icmp eq i32 %call.i191, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #17
  br label %cleanup

if.end15:                                         ; preds = %dev_name.exit
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #14
  %base = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 8
  %call24 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.6) #14
  %bus_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %bus_clk, align 8
  %cmp.i192 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev4, align 8
  br i1 %cmp.i192, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8) #17
  %17 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_clk, align 8
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %call36 = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.10) #14
  %mod_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call36, ptr %mod_clk, align 4
  %cmp.i193 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev4, align 8
  br i1 %cmp.i193, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12) #17
  %23 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mod_clk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end34
  %call48 = tail call ptr @devm_clk_get(ptr noundef %22, ptr noundef nonnull @.str.14) #14
  %ram_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %ram_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call48, ptr %ram_clk, align 8
  %cmp.i194 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev4, align 8
  br i1 %cmp.i194, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.16) #17
  %29 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ram_clk, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %28, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #14
  %rstc = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i, ptr %rstc, align 4
  %cmp.i195 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %do.end66, label %do.body71

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.19) #17
  %35 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rstc, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

do.body71:                                        ; preds = %if.end58
  %dev_mutex = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @deinterlace_probe.__key) #14
  %call75 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.23) #17
  br label %cleanup

if.end82:                                         ; preds = %do.body71
  %lock = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 26
  %40 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev86 = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %v4l2_dev86 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %v4l2_dev86, align 4
  %name = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 12
  %call87 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef getelementptr inbounds (%struct.video_device, ptr @deinterlace_video_device, i32 0, i32 12))
  %driver_data.i.i = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %fops.i = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fops.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call.i196 = tail call i32 @__video_register_device(ptr noundef %vfd2, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %46) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool89.not = icmp eq i32 %call.i196, 0
  %name104 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  br i1 %tobool89.not, label %do.end101, label %do.end93

do.end93:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name104) #17
  br label %err_v4l2

do.end101:                                        ; preds = %if.end82
  %num = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 16
  %47 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num, align 4
  %conv = zext i16 %48 to i32
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name104, i32 noundef %conv) #17
  %call107 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @deinterlace_m2m_ops) #14
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 3
  %49 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call107, ptr %m2m_dev, align 4
  %cmp.i197 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %do.end113, label %if.end121

do.end113:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #16
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name104) #17
  %50 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m2m_dev, align 4
  %52 = ptrtoint ptr %51 to i32
  tail call void @video_unregister_device(ptr noundef %vfd2) #14
  br label %err_v4l2

if.end121:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #16
  %driver_data.i.i198 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i198 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i198, align 4
  %54 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev4, align 8
  tail call void @pm_runtime_enable(ptr noundef %55) #14
  br label %cleanup

err_v4l2:                                         ; preds = %do.end113, %do.end93
  %ret.0 = phi i32 [ %call.i196, %do.end93 ], [ %52, %do.end113 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2, %if.end121, %do.end80, %do.end66, %do.end54, %do.end42, %do.end30, %if.then19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i191, %do.end ], [ %11, %if.then19 ], [ %19, %do.end30 ], [ %25, %do.end42 ], [ %31, %do.end54 ], [ %37, %do.end66 ], [ %call75, %do.end80 ], [ %ret.0, %err_v4l2 ], [ 0, %if.end121 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %3) #14
  %vfd = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #14
  tail call void @v4l2_device_unregister(ptr noundef %1) #14
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  %call = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %base.i = getelementptr inbounds %struct.deinterlace_dev, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool3.not = icmp sgt i32 %4, -1
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %6, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 0) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  tail call void @arm_heavy_mb() #14
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %8, i32 100
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %10 = or i32 %9, -2147483648
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #14, !srcloc !129
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !132
  %18 = and i32 %17, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr3.i70 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i70, i32 %18) #14, !srcloc !129
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %22, i32 104
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !127
  %24 = and i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  %. = select i1 %tobool8.not, i32 5, i32 6
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call, i32 0, i32 10
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %26, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #14
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %.) #14
  %field = getelementptr inbounds %struct.deinterlace_ctx, ptr %call, i32 0, i32 10
  %27 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %field, align 4
  %first_field = getelementptr inbounds %struct.deinterlace_ctx, ptr %call, i32 0, i32 9
  %29 = ptrtoint ptr %first_field to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %first_field, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not = icmp eq i32 %28, %30
  br i1 %cmp.not, label %lor.lhs.false, label %if.end5.if.then13_crit_edge

if.end5.if.then13_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end5
  %aborting = getelementptr inbounds %struct.deinterlace_ctx, ptr %call, i32 0, i32 11
  %31 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not = icmp eq i32 %32, 0
  br i1 %tobool12.not, label %if.else28, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end5.if.then13_crit_edge
  %33 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %field, align 4
  %34 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %35, i32 0, i32 8
  %call.i73 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #14
  %prev = getelementptr inbounds %struct.deinterlace_ctx, ptr %call, i32 0, i32 8
  %36 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev, align 4
  %tobool19.not = icmp eq ptr %37, null
  br i1 %tobool19.not, label %if.then13.if.end22_crit_edge, label %if.then20

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vb2_buffer_done(ptr noundef nonnull %37, i32 noundef %.) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then13.if.end22_crit_edge
  %38 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i73, ptr %prev, align 4
  %dev24 = getelementptr inbounds %struct.deinterlace_ctx, ptr %call, i32 0, i32 1
  %39 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev24, align 4
  %m2m_dev25 = getelementptr inbounds %struct.deinterlace_dev, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %m2m_dev25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m2m_dev25, align 4
  %43 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %42, ptr noundef %44) #14
  br label %cleanup

if.else28:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  %lnot.ext = zext i1 %tobool30.not to i32
  %45 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %lnot.ext, ptr %field, align 4
  tail call void @deinterlace_device_run(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.end22, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.else28 ], [ 1, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

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
define internal i32 @deinterlace_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 324) #18
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %src_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 2
  %pixelformat = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 842094158, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %field, align 8
  %height = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %src_fmt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 640, ptr %src_fmt, align 4
  %6 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 480, ptr %height, align 8
  %bytesperline25.i = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %bytesperline25.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 640, ptr %bytesperline25.i, align 4
  %sizeimage26.i = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %sizeimage26.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 460800, ptr %sizeimage26.i, align 8
  %dst_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 3
  %pixelformat11 = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %pixelformat11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 842094158, ptr %pixelformat11, align 4
  %field13 = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %field13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field13, align 8
  %height17 = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 640, ptr %dst_fmt, align 4
  %12 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 480, ptr %height17, align 8
  %bytesperline25.i69 = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %bytesperline25.i69 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 640, ptr %bytesperline25.i69, align 4
  %sizeimage26.i70 = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %sizeimage26.i70 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 460800, ptr %sizeimage26.i70, align 8
  %call19 = tail call ptr @video_devdata(ptr noundef %file) #14
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call19) #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev21 = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %dev21, align 8
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_dev, align 4
  %call22 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %18, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @deinterlace_queue_init) #14
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call22, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %call22 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end31, %if.then27, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end31 ], [ %20, %if.then27 ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev_mutex = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #14
  tail call void @v4l2_fh_del(ptr noundef %3) #14
  tail call void @v4l2_fh_exit(ptr noundef %3) #14
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #14
  tail call void @kfree(ptr noundef %3) #14
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  store ptr @deinterlace_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %6 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %7 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.deinterlace_dev, ptr %9, i32 0, i32 4
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev_mutex, ptr %lock, align 4
  %11 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.deinterlace_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 8
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  store ptr @deinterlace_qops, ptr %ops9, align 4
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
  %dev_mutex13 = getelementptr inbounds %struct.deinterlace_dev, ptr %24, i32 0, i32 4
  %lock14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %25 = ptrtoint ptr %lock14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev_mutex13, ptr %lock14, align 4
  %26 = load ptr, ptr %dev, align 4
  %dev16 = getelementptr inbounds %struct.deinterlace_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev16, align 8
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %29 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #14
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge42, %entry.if.then_crit_edge43, %entry.if.then_crit_edge44, %entry.if.then_crit_edge45, %entry.if.then_crit_edge46, %entry.if.then_crit_edge47, %entry.if.then_crit_edge48
  %src_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dst_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
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
define internal i32 @deinterlace_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.55)
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge51:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge50:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge48, %entry.if.then_crit_edge49, %entry.if.then_crit_edge50, %entry.if.then_crit_edge51, %entry.if.then_crit_edge52, %entry.if.then_crit_edge53, %entry.if.then_crit_edge54
  %src_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %3, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dst_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %3, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i44:                                      ; preds = %vb2_plane_size.exit.thread
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i = icmp ult i32 %16, %14
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i44.if.end42.i_crit_edge

if.then.i44.if.end42.i_crit_edge:                 ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i44
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !134

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
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
define internal i32 @deinterlace_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %dev1 = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.deinterlace_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %6 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vq, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge80
    i32 3, label %entry.if.then_crit_edge81
    i32 8, label %entry.if.then_crit_edge82
    i32 5, label %entry.if.then_crit_edge83
    i32 7, label %entry.if.then_crit_edge84
    i32 12, label %entry.if.then_crit_edge85
    i32 14, label %entry.if.then_crit_edge86
  ]

entry.if.then_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge80, %entry.if.then_crit_edge81, %entry.if.then_crit_edge82, %entry.if.then_crit_edge83, %entry.if.then_crit_edge84, %entry.if.then_crit_edge85, %entry.if.then_crit_edge86
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #14, !srcloc !136
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !137
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.36) #17
  br label %err_runtime_get

if.end:                                           ; preds = %if.then
  %field = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp26 = icmp eq i32 %11, 9
  %conv = zext i1 %cmp26 to i32
  %first_field = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %first_field to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %first_field, align 4
  %field28 = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %field28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %field28, align 4
  %prev = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prev, align 4
  %aborting = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %aborting, align 4
  %flag1_buf_dma = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 5
  %call.i73 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 563200, ptr noundef %flag1_buf_dma, i32 noundef 3264, i32 noundef 0) #14
  %flag1_buf = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %flag1_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i73, ptr %flag1_buf, align 4
  %tobool.not = icmp eq ptr %call.i73, null
  br i1 %tobool.not, label %if.end.err_no_mem1_crit_edge, label %if.end32

if.end.err_no_mem1_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_no_mem1

if.end32:                                         ; preds = %if.end
  %flag2_buf_dma = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 7
  %call.i74 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 563200, ptr noundef %flag2_buf_dma, i32 noundef 3264, i32 noundef 0) #14
  %flag2_buf = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %flag2_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i74, ptr %flag2_buf, align 4
  %tobool35.not = icmp eq ptr %call.i74, null
  br i1 %tobool35.not, label %if.then36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %flag1_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %flag1_buf, align 4
  %20 = ptrtoint ptr %flag1_buf_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flag1_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 563200, ptr noundef %19, i32 noundef %21, i32 noundef 0) #14
  br label %err_no_mem1

err_no_mem1:                                      ; preds = %if.then36, %if.end.err_no_mem1_crit_edge
  %call.i75 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #14
  br label %err_runtime_get

err_runtime_get:                                  ; preds = %err_no_mem1, %do.end
  %ret.1 = phi i32 [ %call.i, %do.end ], [ -12, %err_no_mem1 ]
  %22 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %23, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then25.i, %err_runtime_get
  %24 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vq, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %25, label %if.else.i [
    i32 2, label %do.body.i.if.then.i76_crit_edge
    i32 10, label %do.body.i.if.then.i76_crit_edge87
    i32 3, label %do.body.i.if.then.i76_crit_edge88
    i32 8, label %do.body.i.if.then.i76_crit_edge89
    i32 5, label %do.body.i.if.then.i76_crit_edge90
    i32 7, label %do.body.i.if.then.i76_crit_edge91
    i32 12, label %do.body.i.if.then.i76_crit_edge92
    i32 14, label %do.body.i.if.then.i76_crit_edge93
  ]

do.body.i.if.then.i76_crit_edge93:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

do.body.i.if.then.i76_crit_edge92:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

do.body.i.if.then.i76_crit_edge91:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

do.body.i.if.then.i76_crit_edge90:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

do.body.i.if.then.i76_crit_edge89:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

do.body.i.if.then.i76_crit_edge88:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

do.body.i.if.then.i76_crit_edge87:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

do.body.i.if.then.i76_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i76

if.then.i76:                                      ; preds = %do.body.i.if.then.i76_crit_edge, %do.body.i.if.then.i76_crit_edge87, %do.body.i.if.then.i76_crit_edge88, %do.body.i.if.then.i76_crit_edge89, %do.body.i.if.then.i76_crit_edge90, %do.body.i.if.then.i76_crit_edge91, %do.body.i.if.then.i76_crit_edge92, %do.body.i.if.then.i76_crit_edge93
  %27 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %28, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %30, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i76
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i76 ]
  %call.i79.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #14
  %tobool.not.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i79.i, i32 noundef 3) #14
  br label %do.body.i

do.end.critedge.i:                                ; preds = %if.end.i
  %31 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vq, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %32, label %do.end.critedge.i.cleanup_crit_edge [
    i32 2, label %do.end.critedge.i.land.lhs.true.i_crit_edge
    i32 10, label %do.end.critedge.i.land.lhs.true.i_crit_edge94
    i32 3, label %do.end.critedge.i.land.lhs.true.i_crit_edge95
    i32 8, label %do.end.critedge.i.land.lhs.true.i_crit_edge96
    i32 5, label %do.end.critedge.i.land.lhs.true.i_crit_edge97
    i32 7, label %do.end.critedge.i.land.lhs.true.i_crit_edge98
    i32 12, label %do.end.critedge.i.land.lhs.true.i_crit_edge99
    i32 14, label %do.end.critedge.i.land.lhs.true.i_crit_edge100
  ]

do.end.critedge.i.land.lhs.true.i_crit_edge100:   ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge99:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge98:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge97:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge96:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge95:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge94:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge:      ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.cleanup_crit_edge:              ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end.critedge.i.land.lhs.true.i_crit_edge, %do.end.critedge.i.land.lhs.true.i_crit_edge94, %do.end.critedge.i.land.lhs.true.i_crit_edge95, %do.end.critedge.i.land.lhs.true.i_crit_edge96, %do.end.critedge.i.land.lhs.true.i_crit_edge97, %do.end.critedge.i.land.lhs.true.i_crit_edge98, %do.end.critedge.i.land.lhs.true.i_crit_edge99, %do.end.critedge.i.land.lhs.true.i_crit_edge100
  %prev.i = getelementptr inbounds %struct.deinterlace_ctx, ptr %23, i32 0, i32 8
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %tobool51.not.i = icmp eq ptr %35, null
  br i1 %tobool51.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then52.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vb2_buffer_done(ptr noundef nonnull %35, i32 noundef 3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then52.i, %land.lhs.true.i.cleanup_crit_edge, %do.end.critedge.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ %ret.1, %do.end.critedge.i.cleanup_crit_edge ], [ %ret.1, %land.lhs.true.i.cleanup_crit_edge ], [ %ret.1, %if.then52.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vq, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge39
    i32 3, label %entry.if.then_crit_edge40
    i32 8, label %entry.if.then_crit_edge41
    i32 5, label %entry.if.then_crit_edge42
    i32 7, label %entry.if.then_crit_edge43
    i32 12, label %entry.if.then_crit_edge44
    i32 14, label %entry.if.then_crit_edge45
  ]

entry.if.then_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge39, %entry.if.then_crit_edge40, %entry.if.then_crit_edge41, %entry.if.then_crit_edge42, %entry.if.then_crit_edge43, %entry.if.then_crit_edge44, %entry.if.then_crit_edge45
  %3 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv_priv.i, align 4
  %dev21 = getelementptr inbounds %struct.deinterlace_ctx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev21, align 4
  %dev22 = getelementptr inbounds %struct.deinterlace_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev22, align 8
  %flag1_buf = getelementptr inbounds %struct.deinterlace_ctx, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %flag1_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flag1_buf, align 4
  %flag1_buf_dma = getelementptr inbounds %struct.deinterlace_ctx, ptr %4, i32 0, i32 5
  %11 = ptrtoint ptr %flag1_buf_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flag1_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef 563200, ptr noundef %10, i32 noundef %12, i32 noundef 0) #14
  %flag2_buf = getelementptr inbounds %struct.deinterlace_ctx, ptr %4, i32 0, i32 6
  %13 = ptrtoint ptr %flag2_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flag2_buf, align 4
  %flag2_buf_dma = getelementptr inbounds %struct.deinterlace_ctx, ptr %4, i32 0, i32 7
  %15 = ptrtoint ptr %flag2_buf_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flag2_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef 563200, ptr noundef %14, i32 noundef %16, i32 noundef 0) #14
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %18, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then25.i, %if.end
  %19 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vq, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %20, label %if.else.i [
    i32 2, label %do.body.i.if.then.i_crit_edge
    i32 10, label %do.body.i.if.then.i_crit_edge46
    i32 3, label %do.body.i.if.then.i_crit_edge47
    i32 8, label %do.body.i.if.then.i_crit_edge48
    i32 5, label %do.body.i.if.then.i_crit_edge49
    i32 7, label %do.body.i.if.then.i_crit_edge50
    i32 12, label %do.body.i.if.then.i_crit_edge51
    i32 14, label %do.body.i.if.then.i_crit_edge52
  ]

do.body.i.if.then.i_crit_edge52:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.body.i.if.then.i_crit_edge51:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.body.i.if.then.i_crit_edge50:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.body.i.if.then.i_crit_edge49:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.body.i.if.then.i_crit_edge48:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.body.i.if.then.i_crit_edge47:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.body.i.if.then.i_crit_edge46:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.body.i.if.then.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %do.body.i.if.then.i_crit_edge, %do.body.i.if.then.i_crit_edge46, %do.body.i.if.then.i_crit_edge47, %do.body.i.if.then.i_crit_edge48, %do.body.i.if.then.i_crit_edge49, %do.body.i.if.then.i_crit_edge50, %do.body.i.if.then.i_crit_edge51, %do.body.i.if.then.i_crit_edge52
  %22 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %25, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i79.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #14
  %tobool.not.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i79.i, i32 noundef 6) #14
  br label %do.body.i

do.end.critedge.i:                                ; preds = %if.end.i
  %26 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vq, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %27, label %do.end.critedge.i.deinterlace_queue_cleanup.exit_crit_edge [
    i32 2, label %do.end.critedge.i.land.lhs.true.i_crit_edge
    i32 10, label %do.end.critedge.i.land.lhs.true.i_crit_edge53
    i32 3, label %do.end.critedge.i.land.lhs.true.i_crit_edge54
    i32 8, label %do.end.critedge.i.land.lhs.true.i_crit_edge55
    i32 5, label %do.end.critedge.i.land.lhs.true.i_crit_edge56
    i32 7, label %do.end.critedge.i.land.lhs.true.i_crit_edge57
    i32 12, label %do.end.critedge.i.land.lhs.true.i_crit_edge58
    i32 14, label %do.end.critedge.i.land.lhs.true.i_crit_edge59
  ]

do.end.critedge.i.land.lhs.true.i_crit_edge59:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge58:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge57:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge56:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge55:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge54:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge53:    ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.land.lhs.true.i_crit_edge:      ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

do.end.critedge.i.deinterlace_queue_cleanup.exit_crit_edge: ; preds = %do.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %deinterlace_queue_cleanup.exit

land.lhs.true.i:                                  ; preds = %do.end.critedge.i.land.lhs.true.i_crit_edge, %do.end.critedge.i.land.lhs.true.i_crit_edge53, %do.end.critedge.i.land.lhs.true.i_crit_edge54, %do.end.critedge.i.land.lhs.true.i_crit_edge55, %do.end.critedge.i.land.lhs.true.i_crit_edge56, %do.end.critedge.i.land.lhs.true.i_crit_edge57, %do.end.critedge.i.land.lhs.true.i_crit_edge58, %do.end.critedge.i.land.lhs.true.i_crit_edge59
  %prev.i = getelementptr inbounds %struct.deinterlace_ctx, ptr %18, i32 0, i32 8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %tobool51.not.i = icmp eq ptr %30, null
  br i1 %tobool51.not.i, label %land.lhs.true.i.deinterlace_queue_cleanup.exit_crit_edge, label %if.then52.i

land.lhs.true.i.deinterlace_queue_cleanup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %deinterlace_queue_cleanup.exit

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @vb2_buffer_done(ptr noundef nonnull %30, i32 noundef 6) #14
  br label %deinterlace_queue_cleanup.exit

deinterlace_queue_cleanup.exit:                   ; preds = %if.then52.i, %land.lhs.true.i.deinterlace_queue_cleanup.exit_crit_edge, %do.end.critedge.i.deinterlace_queue_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #14
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #14
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [2 x i32], ptr @deinterlace_formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_g_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %dst_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %fmt, ptr %dst_fmt, i32 48)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_g_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %src_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %fmt, ptr %src_fmt, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_s_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %3, label %if.then.i [
    i32 842094158, label %entry.if.end.i_crit_edge
    i32 825382478, label %entry.if.end.i_crit_edge13
  ]

entry.if.end.i_crit_edge13:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 842094158, ptr %pixelformat.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge13
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 1
  br i1 %cmp.not.i, label %if.end.i.deinterlace_try_fmt_vid_cap.exit_crit_edge, label %if.then4.i

if.end.i.deinterlace_try_fmt_vid_cap.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %deinterlace_try_fmt_vid_cap.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field.i, align 4
  br label %deinterlace_try_fmt_vid_cap.exit

deinterlace_try_fmt_vid_cap.exit:                 ; preds = %if.then4.i, %if.end.i.deinterlace_try_fmt_vid_cap.exit_crit_edge
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height1.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height1.i.i, align 4
  %11 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt.i, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 2) #14
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 2048) #14
  %15 = tail call i32 @llvm.umax.i32(i32 %10, i32 2) #14
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 1100) #14
  %add.i.i = add nuw nsw i32 %14, 1
  %and.i.i = and i32 %add.i.i, 8190
  %mul.i.i = mul nuw nsw i32 %and.i.i, %16
  %div49.i.i = lshr exact i32 %mul.i.i, 1
  %add22.i.i = add nuw nsw i32 %div49.i.i, %mul.i.i
  %17 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %fmt.i, align 4
  %18 = ptrtoint ptr %height1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %height1.i.i, align 4
  %bytesperline25.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline25.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i.i, ptr %bytesperline25.i.i, align 4
  %sizeimage26.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage26.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add22.i.i, ptr %sizeimage26.i.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 4
  %23 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %22, i32 noundef %24) #14
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %25 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.not = icmp eq i32 %26, 0
  br i1 %cmp.i.not, label %if.end5, label %deinterlace_try_fmt_vid_cap.exit.cleanup_crit_edge

deinterlace_try_fmt_vid_cap.exit.cleanup_crit_edge: ; preds = %deinterlace_try_fmt_vid_cap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %deinterlace_try_fmt_vid_cap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dst_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %dst_fmt, ptr %fmt.i, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %deinterlace_try_fmt_vid_cap.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %deinterlace_try_fmt_vid_cap.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_s_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %if.then.i [
    i32 842094158, label %entry.if.end.i_crit_edge
    i32 825382478, label %entry.if.end.i_crit_edge31
  ]

entry.if.end.i_crit_edge31:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 842094158, ptr %pixelformat.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge31
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %7, label %if.then11.i [
    i32 8, label %if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge
    i32 9, label %if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge32
    i32 4, label %if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge33
  ]

if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge33: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %deinterlace_try_fmt_vid_out.exit

if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge32: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %deinterlace_try_fmt_vid_out.exit

if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %deinterlace_try_fmt_vid_out.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %field.i, align 4
  br label %deinterlace_try_fmt_vid_out.exit

deinterlace_try_fmt_vid_out.exit:                 ; preds = %if.then11.i, %if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge, %if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge32, %if.end.i.deinterlace_try_fmt_vid_out.exit_crit_edge33
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height1.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height1.i.i, align 4
  %12 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 2) #14
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 2048) #14
  %16 = tail call i32 @llvm.umax.i32(i32 %11, i32 2) #14
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 1100) #14
  %add.i.i = add nuw nsw i32 %15, 1
  %and.i.i = and i32 %add.i.i, 8190
  %mul.i.i = mul nuw nsw i32 %and.i.i, %17
  %div49.i.i = lshr exact i32 %mul.i.i, 1
  %add22.i.i = add nuw nsw i32 %div49.i.i, %mul.i.i
  %18 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %fmt.i, align 4
  %19 = ptrtoint ptr %height1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %height1.i.i, align 4
  %bytesperline25.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %bytesperline25.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i.i, ptr %bytesperline25.i.i, align 4
  %sizeimage26.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage26.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add22.i.i, ptr %sizeimage26.i.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx, align 4
  %24 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %23, i32 noundef %25) #14
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %26 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.not = icmp eq i32 %27, 0
  br i1 %cmp.i.not, label %if.end5, label %deinterlace_try_fmt_vid_out.exit.cleanup_crit_edge

deinterlace_try_fmt_vid_out.exit.cleanup_crit_edge: ; preds = %deinterlace_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %deinterlace_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #16
  %src_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %src_fmt, ptr %fmt.i, i32 48)
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace, align 4
  %colorspace7 = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 3, i32 6
  %31 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %colorspace7, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %32 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xfer_func, align 4
  %xfer_func10 = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 3, i32 11
  %34 = ptrtoint ptr %xfer_func10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xfer_func10, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 3, i32 9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %37, ptr %38, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quantization, align 4
  %quantization15 = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 3, i32 10
  %42 = ptrtoint ptr %quantization15 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %quantization15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %deinterlace_try_fmt_vid_out.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %deinterlace_try_fmt_vid_out.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %1, label %if.then [
    i32 842094158, label %entry.if.end_crit_edge
    i32 825382478, label %entry.if.end_crit_edge13
  ]

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 842094158, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge13
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height1.i, align 4
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 2) #14
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 2048) #14
  %13 = tail call i32 @llvm.umax.i32(i32 %8, i32 2) #14
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 1100) #14
  %add.i = add nuw nsw i32 %12, 1
  %and.i = and i32 %add.i, 8190
  %mul.i = mul nuw nsw i32 %and.i, %14
  %div49.i = lshr exact i32 %mul.i, 1
  %add22.i = add nuw nsw i32 %div49.i, %mul.i
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %fmt, align 4
  %16 = ptrtoint ptr %height1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %height1.i, align 4
  %bytesperline25.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline25.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %bytesperline25.i, align 4
  %sizeimage26.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %sizeimage26.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add22.i, ptr %sizeimage26.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %if.then [
    i32 842094158, label %entry.if.end_crit_edge
    i32 825382478, label %entry.if.end_crit_edge22
  ]

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 842094158, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge22
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %5, label %if.then11 [
    i32 8, label %if.end.if.end14_crit_edge
    i32 9, label %if.end.if.end14_crit_edge23
    i32 4, label %if.end.if.end14_crit_edge24
  ]

if.end.if.end14_crit_edge24:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end.if.end14_crit_edge23:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %field, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge23, %if.end.if.end14_crit_edge24
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height1.i, align 4
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 2) #14
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 2048) #14
  %14 = tail call i32 @llvm.umax.i32(i32 %9, i32 2) #14
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 1100) #14
  %add.i = add nuw nsw i32 %13, 1
  %and.i = and i32 %add.i, 8190
  %mul.i = mul nuw nsw i32 %and.i, %15
  %div49.i = lshr exact i32 %mul.i, 1
  %add22.i = add nuw nsw i32 %div49.i, %mul.i
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %fmt, align 4
  %17 = ptrtoint ptr %height1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %height1.i, align 4
  %bytesperline25.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %bytesperline25.i, align 4
  %sizeimage26.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage26.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add22.i, ptr %sizeimage26.i, align 4
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %3, label %if.end.return_crit_edge [
    i32 842094158, label %if.end.if.end2_crit_edge
    i32 825382478, label %if.end.if.end2_crit_edge11
  ]

if.end.if.end2_crit_edge11:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end2:                                          ; preds = %if.end.if.end2_crit_edge, %if.end.if.end2_crit_edge11
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %type, align 4
  %6 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %6, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %8 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2048, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %10 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1100, ptr %max_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %11 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %12 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %step_height, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_device_run(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #14
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i161 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #14
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i161, i1 noundef zeroext true) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %base.i = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 16777216) #14, !srcloc !129
  %field = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 10
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flag1_buf_dma = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %flag1_buf_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flag1_buf_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #14
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #14, !srcloc !129
  %flag2_buf_dma = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 7
  %15 = ptrtoint ptr %flag2_buf_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flag2_buf_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %19, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %17) #14, !srcloc !129
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flag2_buf_dma5 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 7
  %20 = ptrtoint ptr %flag2_buf_dma5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flag2_buf_dma5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %24, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %22) #14, !srcloc !129
  %flag1_buf_dma6 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 5
  %25 = ptrtoint ptr %flag1_buf_dma6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flag1_buf_dma6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %29, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %27) #14, !srcloc !129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %31, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 131072) #14, !srcloc !129
  %src_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 2
  %32 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_fmt, align 4
  %height9 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height9, align 4
  %bytesperline = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytesperline, align 4
  %mul = mul i32 %37, %35
  %call.i171 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #14
  %38 = ptrtoint ptr %call.i171 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i171, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %40) #14, !srcloc !129
  %add = add i32 %39, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %43 = tail call i32 @llvm.bswap.i32(i32 %add) #14
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %45, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 %43) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 0) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %48 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %50, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %48) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %52, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %48) #14, !srcloc !129
  %sub = shl i32 %35, 16
  %shl = add i32 %sub, -65536
  %sub12 = add i32 %33, -1
  %or = or i32 %shl, %sub12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %53 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %55, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %53) #14, !srcloc !129
  %56 = shl i32 %35, 15
  %57 = add i32 %56, -65536
  %shl14 = and i32 %57, -65536
  %div15152 = lshr i32 %33, 1
  %sub16 = add nsw i32 %div15152, -1
  %or17 = or i32 %shl14, %sub16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %58 = tail call i32 @llvm.bswap.i32(i32 %or17) #14
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %60, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %58) #14, !srcloc !129
  %pixelformat = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %62)
  %switch.selectcmp = icmp eq i32 %62, 825382478
  %switch.select = select i1 %switch.selectcmp, i32 545, i32 544
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %62)
  %switch.selectcmp155 = icmp eq i32 %62, 842094158
  %switch.select156 = select i1 %switch.selectcmp155, i32 544, i32 %switch.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %63 = tail call i32 @llvm.bswap.i32(i32 %switch.select156) #14
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %65, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %63) #14, !srcloc !129
  %prev = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 8
  %66 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev, align 4
  %tobool22.not = icmp eq ptr %67, null
  br i1 %tobool22.not, label %if.end.if.end27_crit_edge, label %if.then23

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call.i188 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %67, i32 noundef 0) #14
  %68 = ptrtoint ptr %call.i188 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call.i188, align 4
  %.pre = tail call i32 @llvm.bswap.i32(i32 %69) #14
  %.pre236 = add i32 %69, %mul
  %.pre237 = tail call i32 @llvm.bswap.i32(i32 %.pre236) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end.if.end27_crit_edge
  %.pre-phi238 = phi i32 [ %.pre237, %if.then23 ], [ %43, %if.end.if.end27_crit_edge ]
  %.pre-phi = phi i32 [ %.pre, %if.then23 ], [ %40, %if.end.if.end27_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i190 = getelementptr i8, ptr %71, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %.pre-phi) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %73, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 %.pre-phi238) #14, !srcloc !129
  %74 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %75)
  %switch.selectcmp157 = icmp eq i32 %75, 825382478
  %switch.select158 = select i1 %switch.selectcmp157, i32 754974720, i32 218103808
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %75)
  %switch.selectcmp159 = icmp eq i32 %75, 842094158
  %switch.select160 = select i1 %switch.selectcmp159, i32 218103808, i32 %switch.select158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %77, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %switch.select160) #14, !srcloc !129
  %dst_fmt = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3
  %78 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dst_fmt, align 4
  %height38 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %height38, align 4
  %bytesperline40 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3, i32 4
  %82 = ptrtoint ptr %bytesperline40 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bytesperline40, align 4
  %mul41 = mul i32 %83, %81
  %sub42 = shl i32 %81, 16
  %shl43 = add i32 %sub42, -65536
  %sub44 = add i32 %79, -1
  %or45 = or i32 %shl43, %sub44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %84 = tail call i32 @llvm.bswap.i32(i32 %or45) #14
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %86, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 %84) #14, !srcloc !129
  %87 = shl i32 %81, 15
  %88 = add i32 %87, -65536
  %shl48 = and i32 %88, -65536
  %div49154 = lshr i32 %79, 1
  %sub50 = add nsw i32 %div49154, -1
  %or51 = or i32 %shl48, %sub50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %89 = tail call i32 @llvm.bswap.i32(i32 %or51) #14
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %91, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %89) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %92 = tail call i32 @llvm.bswap.i32(i32 %83) #14
  %93 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %94, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %92) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %95 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %96, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 %92) #14, !srcloc !129
  %call.i203 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i161, i32 noundef 0) #14
  %97 = ptrtoint ptr %call.i203 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call.i203, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #14
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr.i205 = getelementptr i8, ptr %101, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %99) #14, !srcloc !129
  %add54 = add i32 %98, %mul41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %102 = tail call i32 @llvm.bswap.i32(i32 %add54) #14
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 4
  %add.ptr.i207 = getelementptr i8, ptr %104, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %102) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %106, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 0) #14, !srcloc !129
  %107 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %src_fmt, align 4
  %shl57 = shl i32 %108, 16
  %109 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dst_fmt, align 4
  %div60 = udiv i32 %shl57, %110
  %111 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %height9, align 4
  %shl63 = shl i32 %112, 16
  %113 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %height38, align 4
  %div66 = udiv i32 %shl63, %114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %115 = tail call i32 @llvm.bswap.i32(i32 %div60) #14
  %116 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i, align 4
  %add.ptr.i211 = getelementptr i8, ptr %117, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211, i32 %115) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %118 = tail call i32 @llvm.bswap.i32(i32 %div66) #14
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i, align 4
  %add.ptr.i213 = getelementptr i8, ptr %120, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %118) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %122, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %115) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %123 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %124, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 %118) #14, !srcloc !129
  %125 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %field, align 4
  %and = and i32 %126, 255
  %127 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %128, i32 44
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !132
  %130 = and i32 %129, 16777215
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %or.i = or i32 %131, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %132 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %133 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %134, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %132) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  tail call void @arm_heavy_mb() #14
  %135 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i, align 4
  %add.ptr.i221 = getelementptr i8, ptr %136, i32 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %138 = or i32 %137, 256
  %139 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i, align 4
  %add.ptr3.i223 = getelementptr i8, ptr %140, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i223, i32 %138) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  tail call void @arm_heavy_mb() #14
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %142, i32 4
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %144 = or i32 %143, 16777216
  %145 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base.i, align 4
  %add.ptr3.i227 = getelementptr i8, ptr %146, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i227, i32 %144) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  tail call void @arm_heavy_mb() #14
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 4
  %add.ptr.i229 = getelementptr i8, ptr %148, i32 96
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %150 = or i32 %149, -2147483648
  %151 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i, align 4
  %add.ptr3.i231 = getelementptr i8, ptr %152, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i231, i32 %150) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  tail call void @arm_heavy_mb() #14
  %153 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %154, i32 4
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %156 = or i32 %155, 67108864
  %157 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i, align 4
  %add.ptr3.i235 = getelementptr i8, ptr %158, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i235, i32 %156) #14, !srcloc !129
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @deinterlace_job_ready(ptr nocapture noundef readonly %priv) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %num_rdy.i6 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %num_rdy.i6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rdy.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp4 = icmp ugt i8 %5, 1
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @deinterlace_job_abort(ptr nocapture noundef writeonly %priv) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %aborting = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %aborting, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_runtime_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rstc = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #14
  %ram_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #14
  tail call void @clk_unprepare(ptr noundef %5) #14
  %mod_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #14
  tail call void @clk_unprepare(ptr noundef %7) #14
  %bus_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %9) #14
  tail call void @clk_unprepare(ptr noundef %9) #14
  %10 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %11) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_runtime_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mod_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_clk, align 4
  %call1 = tail call i32 @clk_set_rate_exclusive(ptr noundef %3, i32 noundef 300000000) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev2 = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.41) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %7) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i, %if.end.do.end8_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.44) #17
  br label %err_exclusive_rate

if.end10:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mod_clk, align 4
  %call.i61 = tail call i32 @clk_prepare(ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i65, label %if.end10.do.end17_crit_edge

if.end10.do.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

if.end.i65:                                       ; preds = %if.end10
  %call1.i63 = tail call i32 @clk_enable(ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool2.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool2.not.i64, label %if.end19, label %if.then3.i66

if.then3.i66:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %11) #14
  br label %do.end17

do.end17:                                         ; preds = %if.then3.i66, %if.end10.do.end17_crit_edge
  %retval.0.i67.ph = phi i32 [ %call1.i63, %if.then3.i66 ], [ %call.i61, %if.end10.do.end17_crit_edge ]
  %dev18 = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.47) #17
  br label %err_bus_clk

if.end19:                                         ; preds = %if.end.i65
  %ram_clk = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ram_clk, align 8
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.end19.do.end25_crit_edge

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

if.end.i73:                                       ; preds = %if.end19
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end27, label %if.then3.i74

if.then3.i74:                                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %15) #14
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i74, %if.end19.do.end25_crit_edge
  %retval.0.i75.ph = phi i32 [ %call1.i71, %if.then3.i74 ], [ %call.i69, %if.end19.do.end25_crit_edge ]
  %dev26 = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.50) #17
  br label %err_mod_clk

if.end27:                                         ; preds = %if.end.i73
  %rstc = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rstc, align 4
  %call28 = tail call i32 @reset_control_deassert(ptr noundef %19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %dev34 = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.53) #17
  %22 = ptrtoint ptr %ram_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ram_clk, align 8
  tail call void @clk_disable(ptr noundef %23) #14
  tail call void @clk_unprepare(ptr noundef %23) #14
  br label %err_mod_clk

if.end35:                                         ; preds = %if.end27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %base.i.i = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 33554432) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %27, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 16777216) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  tail call void @arm_heavy_mb() #14
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %31 = or i32 %30, 524288
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %31) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 65536) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %37, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 16777987) #14, !srcloc !129
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %39, i32 172
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !132
  %41 = and i32 %40, 16777215
  %42 = or i32 %41, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i81.i = getelementptr i8, ptr %44, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i81.i, i32 %42) #14, !srcloc !129
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %46, i32 176
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !132
  %48 = and i32 %47, 16777215
  %49 = or i32 %48, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i86.i = getelementptr i8, ptr %51, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i86.i, i32 %49) #14, !srcloc !129
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %53, i32 168
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !132
  %55 = and i32 %54, -8323073
  %56 = or i32 %55, 327680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i91.i = getelementptr i8, ptr %58, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i91.i, i32 %56) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %60, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 1006632990) #14, !srcloc !129
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %62, i32 180
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !132
  %64 = and i32 %63, 16777215
  %65 = or i32 %64, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i98.i = getelementptr i8, ptr %67, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i98.i, i32 %65) #14, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !130
  tail call void @arm_heavy_mb() #14
  %68 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !131
  %71 = or i32 %70, 32768
  %72 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i102.i = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i102.i, i32 %71) #14, !srcloc !129
  %call.i77 = tail call i64 @ktime_get() #14
  %add.i.i = add i64 %call.i77, 40000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 293) #14
  %74 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i, align 4
  %add.ptr115.i = getelementptr i8, ptr %75, i32 104
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !138
  %77 = and i32 %76, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not116.i = icmp eq i32 %77, 0
  br i1 %tobool.not116.i, label %if.end35.land.lhs.true.i_crit_edge, label %if.end35.for.body.i.preheader_crit_edge

if.end35.for.body.i.preheader_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

if.end35.land.lhs.true.i_crit_edge:               ; preds = %if.end35
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.end35.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %79, i32 104
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !139
  br label %for.body.i.preheader

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #14
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %82, i32 104
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !138
  %84 = and i32 %83, 524288
  %tobool.not.i78 = icmp eq i32 %84, 0
  br i1 %tobool.not.i78, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.body.i.preheader_crit_edge

if.then26.i.for.body.i.preheader_crit_edge:       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

for.body.i.preheader:                             ; preds = %if.then26.i.for.body.i.preheader_crit_edge, %if.then16.i, %if.end35.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0117.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %mul.i = shl i32 %i.0117.i, 2
  %add33.i = add nuw nsw i32 %mul.i, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %85 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %86, i32 %add33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 4194304) #14, !srcloc !129
  %add35.i = add nuw nsw i32 %mul.i, 1280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %87 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i106.i = getelementptr i8, ptr %88, i32 %add35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 4194304) #14, !srcloc !129
  %add37.i = add nuw nsw i32 %mul.i, 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %89 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %90, i32 %add37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 4194304) #14, !srcloc !129
  %add39.i = add nuw nsw i32 %mul.i, 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !128
  tail call void @arm_heavy_mb() #14
  %91 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %92, i32 %add39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 4194304) #14, !srcloc !129
  %inc.i = add nuw nsw i32 %i.0117.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %deinterlace_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

deinterlace_init.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %94, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i) #14, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !132
  %96 = and i32 %95, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !133
  tail call void @arm_heavy_mb() #14
  %97 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i114.i = getelementptr i8, ptr %98, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i114.i, i32 %96) #14, !srcloc !129
  br label %cleanup

err_mod_clk:                                      ; preds = %do.end33, %do.end25
  %ret.0 = phi i32 [ %retval.0.i75.ph, %do.end25 ], [ %call28, %do.end33 ]
  %99 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %100) #14
  tail call void @clk_unprepare(ptr noundef %100) #14
  br label %err_bus_clk

err_bus_clk:                                      ; preds = %err_mod_clk, %do.end17
  %ret.1 = phi i32 [ %retval.0.i67.ph, %do.end17 ], [ %ret.0, %err_mod_clk ]
  %101 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %102) #14
  tail call void @clk_unprepare(ptr noundef %102) #14
  br label %err_exclusive_rate

err_exclusive_rate:                               ; preds = %err_bus_clk, %do.end8
  %ret.2 = phi i32 [ %retval.0.i.ph, %do.end8 ], [ %ret.1, %err_bus_clk ]
  %103 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %104) #14
  br label %cleanup

cleanup:                                          ; preds = %err_exclusive_rate, %deinterlace_init.exit, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.2, %err_exclusive_rate ], [ 0, %deinterlace_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !76, !78, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_sun8i_di__307_1012_deinterlace_driver_init6, !1, !"__initcall__kmod_sun8i_di__307_1012_deinterlace_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 1012, i32 1}
!2 = !{ptr @__exitcall_deinterlace_driver_exit, !1, !"__exitcall_deinterlace_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file308, !4, !"__UNIQUE_ID_file308", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 1014, i32 1}
!5 = !{ptr @__UNIQUE_ID_license309, !4, !"__UNIQUE_ID_license309", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author310, !7, !"__UNIQUE_ID_author310", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 1015, i32 1}
!8 = !{ptr @__UNIQUE_ID_description311, !9, !"__UNIQUE_ID_description311", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 1016, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 1007, i32 12}
!12 = !{ptr @deinterlace_driver, !13, !"deinterlace_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 1003, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 822, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @deinterlace_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @deinterlace_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 831, i32 40}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 833, i32 3}
!26 = !{ptr @deinterlace_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @deinterlace_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 838, i32 40}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 840, i32 3}
!32 = !{ptr @deinterlace_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @deinterlace_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 845, i32 40}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 847, i32 3}
!38 = !{ptr @deinterlace_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @deinterlace_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 854, i32 3}
!42 = !{ptr @deinterlace_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @deinterlace_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @deinterlace_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 859, i32 2}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 863, i32 3}
!49 = !{ptr @deinterlace_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @deinterlace_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 872, i32 41}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 878, i32 3}
!55 = !{ptr @deinterlace_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @deinterlace_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 883, i32 2}
!59 = !{ptr @deinterlace_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @deinterlace_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 888, i32 3}
!63 = !{ptr @deinterlace_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @deinterlace_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @deinterlace_video_device, !66, !"deinterlace_video_device", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 786, i32 34}
!67 = !{ptr @deinterlace_fops, !68, !"deinterlace_fops", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 777, i32 42}
!69 = !{ptr @deinterlace_formats, !70, !"deinterlace_formats", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 28, i32 12}
!71 = !{ptr @deinterlace_qops, !72, !"deinterlace_qops", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 656, i32 29}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 594, i32 4}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @deinterlace_start_streaming._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @deinterlace_start_streaming._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @deinterlace_ioctl_ops, !82, !"deinterlace_ioctl_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 489, i32 36}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 356, i32 4}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 206, i32 3}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @deinterlace_irq._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @deinterlace_irq._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @deinterlace_m2m_ops, !91, !"deinterlace_m2m_ops", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 796, i32 34}
!92 = !{ptr @deinterlace_dt_match, !93, !"deinterlace_dt_match", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 992, i32 34}
!94 = !{ptr @deinterlace_pm_ops, !95, !"deinterlace_pm_ops", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 998, i32 32}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 929, i32 3}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @deinterlace_runtime_resume._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @deinterlace_runtime_resume._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 936, i32 3}
!103 = !{ptr @deinterlace_runtime_resume._entry.43, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @deinterlace_runtime_resume._entry_ptr.45, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 943, i32 3}
!107 = !{ptr @deinterlace_runtime_resume._entry.46, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @deinterlace_runtime_resume._entry_ptr.48, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 950, i32 3}
!111 = !{ptr @deinterlace_runtime_resume._entry.49, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @deinterlace_runtime_resume._entry_ptr.51, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/sunxi/sun8i-di/sun8i-di.c", i32 957, i32 3}
!115 = !{ptr @deinterlace_runtime_resume._entry.52, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @deinterlace_runtime_resume._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 4254184}
!127 = !{i64 2156550008}
!128 = !{i64 2156550391}
!129 = !{i64 4253766}
!130 = !{i64 2156551678}
!131 = !{i64 2156552579}
!132 = !{i64 2156553245}
!133 = !{i64 2156553457}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2148263657}
!136 = !{i64 748480, i64 748505, i64 748527, i64 748543, i64 748555, i64 748575, i64 748599, i64 748615, i64 748627}
!137 = !{i64 2148263845}
!138 = !{i64 2156559955}
!139 = !{i64 2156560437}
