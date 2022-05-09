; ModuleID = '/llk/IR_all_yes/drivers/media/platform/meson/ge2d/ge2d.c_pt.bc'
source_filename = "../drivers/media/platform/meson/ge2d/ge2d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ge2d_frame = type { ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ge2d_fmt = type { i32, i8, i8, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_ge2d = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.ge2d_ctx = type { %struct.v4l2_fh, ptr, %struct.ge2d_frame, %struct.ge2d_frame, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@__initcall__kmod_ge2d__501_1058_ge2d_drv_init6 = internal global ptr @ge2d_drv_init, section ".initcall6.init", align 4
@ge2d_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ge2d_probe, ptr @ge2d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_ge2d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ge2d_drv_exit = internal global ptr @ge2d_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author502 = internal constant [53 x i8] c"ge2d.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description503 = internal constant [54 x i8] c"ge2d.description=Amlogic 2D Graphic Acceleration Unit\00", section ".modinfo", align 1
@__UNIQUE_ID_file504 = internal constant [49 x i8] c"ge2d.file=drivers/media/platform/meson/ge2d/ge2d\00", section ".modinfo", align 1
@__UNIQUE_ID_license505 = internal constant [17 x i8] c"ge2d.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson-ge2d\00", [21 x i8] zeroinitializer }, align 32
@meson_ge2d_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-ge2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ge2d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ge2d->mutex\00", [19 x i8] zeroinitializer }, align 32
@ge2d_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_ge2d_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 9176, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ge2d:944:(&meson_ge2d_regmap_conf)->lock\00", [55 x i8] zeroinitializer }, align 32
@ge2d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 952, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ge2d_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/meson/ge2d/ge2d.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr = internal global ptr @ge2d_probe._entry, section ".printk_index", align 4
@ge2d_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 958, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get core reset controller\0A\00", [59 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr.10 = internal global ptr @ge2d_probe._entry.8, section ".printk_index", align 4
@ge2d_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 964, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr.13 = internal global ptr @ge2d_probe._entry.11, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ge2d_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 974, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot enable ge2d sclk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr.16 = internal global ptr @ge2d_probe._entry.14, section ".printk_index", align 4
@ge2d_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr.19 = internal global ptr @ge2d_probe._entry.17, section ".printk_index", align 4
@ge2d_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @ge2d_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"meson-ge2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release, ptr @ge2d_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@ge2d_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ge2d_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr.22 = internal global ptr @ge2d_probe._entry.20, section ".printk_index", align 4
@ge2d_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr.25 = internal global ptr @ge2d_probe._entry.23, section ".printk_index", align 4
@ge2d_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@ge2d_probe._entry_ptr.28 = internal global ptr @ge2d_probe._entry.26, section ".printk_index", align 4
@ge2d_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @ge2d_open, ptr @ge2d_release }, [60 x i8] zeroinitializer }, align 32
@ge2d_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt, ptr null, ptr @vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr null, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_cap, ptr null, ptr @vidioc_s_fmt_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_cap, ptr null, ptr @vidioc_try_fmt_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_selection, ptr @vidioc_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@def_frame = internal constant { %struct.ge2d_frame, [56 x i8] } { %struct.ge2d_frame { ptr null, %struct.v4l2_pix_format { i32 128, i32 128, i32 0, i32 1, i32 512, i32 65536, i32 0, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_rect { i32 0, i32 0, i32 128, i32 128 }, ptr @formats }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@formats = internal constant { [19 x %struct.ge2d_fmt], [68 x i8] } { [19 x %struct.ge2d_fmt] [%struct.ge2d_fmt { i32 875714626, i8 0, i8 0, i32 32, i32 3, i32 3 }, %struct.ge2d_fmt { i32 876758866, i8 1, i8 0, i32 32, i32 3, i32 3 }, %struct.ge2d_fmt { i32 875708738, i8 1, i8 0, i32 32, i32 3, i32 3 }, %struct.ge2d_fmt { i32 875709016, i8 0, i8 0, i32 32, i32 3, i32 2 }, %struct.ge2d_fmt { i32 875708993, i8 1, i8 0, i32 32, i32 3, i32 2 }, %struct.ge2d_fmt { i32 875714642, i8 0, i8 0, i32 32, i32 3, i32 0 }, %struct.ge2d_fmt { i32 875708754, i8 1, i8 0, i32 32, i32 3, i32 0 }, %struct.ge2d_fmt { i32 877807426, i8 1, i8 0, i32 32, i32 3, i32 1 }, %struct.ge2d_fmt { i32 875713089, i8 1, i8 0, i32 32, i32 3, i32 1 }, %struct.ge2d_fmt { i32 875713112, i8 0, i8 0, i32 32, i32 3, i32 1 }, %struct.ge2d_fmt { i32 859981650, i8 0, i8 0, i32 24, i32 2, i32 5 }, %struct.ge2d_fmt { i32 861030210, i8 0, i8 0, i32 24, i32 2, i32 0 }, %struct.ge2d_fmt { i32 -1255058856, i8 0, i8 0, i32 16, i32 1, i32 7 }, %struct.ge2d_fmt { i32 -1255058879, i8 1, i8 0, i32 16, i32 1, i32 7 }, %struct.ge2d_fmt { i32 1346520914, i8 0, i8 0, i32 16, i32 1, i32 5 }, %struct.ge2d_fmt { i32 842094674, i8 0, i8 0, i32 16, i32 1, i32 4 }, %struct.ge2d_fmt { i32 842088786, i8 1, i8 0, i32 16, i32 1, i32 4 }, %struct.ge2d_fmt { i32 842093144, i8 0, i8 0, i32 16, i32 1, i32 6 }, %struct.ge2d_fmt { i32 842093121, i8 1, i8 0, i32 16, i32 1, i32 6 }], [68 x i8] zeroinitializer }, align 32
@ge2d_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @ge2d_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @ge2d_buf_prepare, ptr null, ptr null, ptr @ge2d_start_streaming, ptr @ge2d_stop_streaming, ptr @ge2d_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@get_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 165, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: invalid buffer type\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"get_frame\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@get_frame._entry_ptr = internal global ptr @get_frame._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@ge2d_setup_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ge2d:798:(&ctx->ctrl_handler)->_lock\00", [59 x i8] zeroinitializer }, align 32
@ge2d_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @ge2d_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@ge2d_setup_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: %s failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ge2d_setup_ctrls\00", [47 x i8] zeroinitializer }, align 32
@ge2d_setup_ctrls._entry_ptr = internal global ptr @ge2d_setup_ctrls._entry, section ".printk_index", align 4
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"platform:meson-ge2d\00", [44 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: queue (%d) bust\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidioc_s_fmt_cap\00", [47 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_cap._entry_ptr = internal global ptr @vidioc_s_fmt_cap._entry, section ".printk_index", align 4
@vidioc_s_fmt_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.39, ptr @.str.5, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vidioc_s_fmt_out\00", [47 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_out._entry_ptr = internal global ptr @vidioc_s_fmt_out._entry, section ".printk_index", align 4
@vidioc_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: doesn't support negative values for top & left.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_s_selection\00", [45 x i8] zeroinitializer }, align 32
@vidioc_s_selection._entry_ptr = internal global ptr @vidioc_s_selection._entry, section ".printk_index", align 4
@vidioc_s_selection._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: unsupported rectangle value.\0A\00", [60 x i8] zeroinitializer }, align 32
@vidioc_s_selection._entry_ptr.44 = internal global ptr @vidioc_s_selection._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.47 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 9963796, i64 9963797, i64 9963810]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.55 = internal global [20 x i64] [i64 18, i64 32, i64 842088786, i64 842093121, i64 842093144, i64 842094674, i64 859981650, i64 861030210, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 875714642, i64 876758866, i64 877807426, i64 1346520914, i64 3039908417, i64 3039908440]
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"ge2d_drv\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1049, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1053, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"meson_ge2d_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1040, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 937, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"meson_ge2d_regmap_conf\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 913, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 943, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 952, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 958, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 964, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 974, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 984, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"ge2d_videodev\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 903, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"ge2d_m2m_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 319, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 999, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1006, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1010, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"ge2d_fops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 894, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"ge2d_ioctl_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 708, i32 36 }
@___asan_gen_.152 = private unnamed_addr constant [10 x i8] c"def_frame\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 820, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 110, i32 30 }
@___asan_gen_.158 = private unnamed_addr constant [10 x i8] c"ge2d_qops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 388, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 165, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1163, i32 7 }
@___asan_gen_.176 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 798, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [14 x i8] c"ge2d_ctrl_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 790, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 812, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 436, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 610, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 685, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 544, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [44 x i8] c"../drivers/media/platform/meson/ge2d/ge2d.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 551, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author502, ptr @__UNIQUE_ID_description503, ptr @__UNIQUE_ID_file504, ptr @__UNIQUE_ID_license505, ptr @__exitcall_ge2d_drv_exit, ptr @__initcall__kmod_ge2d__501_1058_ge2d_drv_init6, ptr @ge2d_drv_exit, ptr @ge2d_probe._entry, ptr @ge2d_probe._entry.11, ptr @ge2d_probe._entry.14, ptr @ge2d_probe._entry.17, ptr @ge2d_probe._entry.20, ptr @ge2d_probe._entry.23, ptr @ge2d_probe._entry.26, ptr @ge2d_probe._entry.8, ptr @ge2d_probe._entry_ptr, ptr @ge2d_probe._entry_ptr.10, ptr @ge2d_probe._entry_ptr.13, ptr @ge2d_probe._entry_ptr.16, ptr @ge2d_probe._entry_ptr.19, ptr @ge2d_probe._entry_ptr.22, ptr @ge2d_probe._entry_ptr.25, ptr @ge2d_probe._entry_ptr.28, ptr @ge2d_setup_ctrls._entry, ptr @ge2d_setup_ctrls._entry_ptr, ptr @get_frame._entry, ptr @get_frame._entry_ptr, ptr @vidioc_s_fmt_cap._entry, ptr @vidioc_s_fmt_cap._entry_ptr, ptr @vidioc_s_fmt_out._entry, ptr @vidioc_s_fmt_out._entry_ptr, ptr @vidioc_s_selection._entry, ptr @vidioc_s_selection._entry.42, ptr @vidioc_s_selection._entry_ptr, ptr @vidioc_s_selection._entry_ptr.44, ptr @ge2d_drv, ptr @.str, ptr @meson_ge2d_match, ptr @ge2d_probe.__key, ptr @.str.1, ptr @ge2d_probe._key, ptr @meson_ge2d_regmap_conf, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @ge2d_videodev, ptr @ge2d_m2m_ops, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @ge2d_fops, ptr @ge2d_ioctl_ops, ptr @def_frame, ptr @formats, ptr @ge2d_qops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ge2d_setup_ctrls._key, ptr @.str.33, ptr @ge2d_ctrl_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ge2d_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ge2d_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_frame to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 380, i32 448, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_setup_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge2d_setup_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_selection._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ge2d_drv, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ge2d_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @ge2d_drv) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 244, i32 noundef 3520) #12
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.meson_ge2d, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev6, align 4
  %mutex = getelementptr inbounds %struct.meson_ge2d, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @ge2d_probe.__key) #12
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  %call13 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %5, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @meson_ge2d_regmap_conf, ptr noundef nonnull @ge2d_probe._key, ptr noundef nonnull @.str.2) #12
  %map = getelementptr inbounds %struct.meson_ge2d, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %map, align 4
  %cmp.i192 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end19.dev_name.exit_crit_edge ]
  %call.i193 = tail call i32 @devm_request_threaded_irq(ptr noundef %9, i32 noundef %call20, ptr noundef nonnull @ge2d_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp = icmp slt i32 %call.i193, 0
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  br i1 %cmp, label %do.end28, label %if.end30

do.end28:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end30:                                         ; preds = %dev_name.exit
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %15, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %cmp.i194 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6, align 4
  br i1 %cmp.i194, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9) #15
  %18 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %call42 = tail call ptr @devm_clk_get(ptr noundef %17, ptr noundef null) #12
  %clk = getelementptr inbounds %struct.meson_ge2d, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call42, ptr %clk, align 4
  %cmp.i195 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195, label %do.end48, label %if.end52

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.12) #15
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  %call53 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #12
  %call54 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #12
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %call.i196 = tail call i32 @clk_prepare(ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool.not.i197 = icmp eq i32 %call.i196, 0
  br i1 %tobool.not.i197, label %if.end.i198, label %if.end52.do.end61_crit_edge

if.end52.do.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end61

if.end.i198:                                      ; preds = %if.end52
  %call1.i = tail call i32 @clk_enable(ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end63, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %27) #12
  br label %do.end61

do.end61:                                         ; preds = %if.then3.i, %if.end52.do.end61_crit_edge
  %retval.0.i199.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i196, %if.end52.do.end61_crit_edge ]
  %28 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i199.ph) #15
  br label %cleanup

if.end63:                                         ; preds = %if.end.i198
  %call65 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.disable_clks_crit_edge

if.end63.disable_clks_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_clks

if.end68:                                         ; preds = %if.end63
  %call69 = tail call ptr @video_device_alloc() #12
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %do.end74, label %if.end78

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #15
  br label %unreg_v4l2_dev

if.end78:                                         ; preds = %if.end68
  %30 = call ptr @memcpy(ptr %call69, ptr @ge2d_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.video_device, ptr %call69, i32 0, i32 26
  %31 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %mutex, ptr %lock, align 8
  %v4l2_dev81 = getelementptr inbounds %struct.video_device, ptr %call69, i32 0, i32 7
  %32 = ptrtoint ptr %v4l2_dev81 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %v4l2_dev81, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call69, i32 0, i32 5, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vfd82 = getelementptr inbounds %struct.meson_ge2d, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %vfd82 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call69, ptr %vfd82, align 4
  %driver_data.i.i200 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i200 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i200, align 4
  %call83 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @ge2d_m2m_ops) #12
  %m2m_dev = getelementptr inbounds %struct.meson_ge2d, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call83, ptr %m2m_dev, align 4
  %cmp.i201 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %do.end89, label %if.end97

do.end89:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %name92 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name92) #15
  %37 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_dev, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %rel_vdev

if.end97:                                         ; preds = %if.end78
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call69, i32 0, i32 3
  %40 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fops.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call.i202 = tail call i32 @__video_register_device(ptr noundef nonnull %call69, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool99.not = icmp eq i32 %call.i202, 0
  %name115 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  br i1 %tobool99.not, label %do.end112, label %do.end103

do.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name115) #15
  %44 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %45) #12
  br label %rel_vdev

do.end112:                                        ; preds = %if.end97
  %name117 = getelementptr inbounds %struct.video_device, ptr %call69, i32 0, i32 12
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call69, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end112.video_device_node_name.exit_crit_edge

do.end112.video_device_node_name.exit_crit_edge:  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.video_device, ptr %call69, i32 0, i32 5
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end112.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %49, %if.end.i.i ], [ %47, %do.end112.video_device_node_name.exit_crit_edge ]
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name115, ptr noundef %name117, ptr noundef %retval.0.i.i) #15
  br label %cleanup

rel_vdev:                                         ; preds = %do.end103, %do.end89
  %ret.0 = phi i32 [ %39, %do.end89 ], [ %call.i202, %do.end103 ]
  %50 = ptrtoint ptr %vfd82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vfd82, align 4
  tail call void @video_device_release(ptr noundef %51) #12
  br label %unreg_v4l2_dev

unreg_v4l2_dev:                                   ; preds = %rel_vdev, %do.end74
  %ret.1 = phi i32 [ %ret.0, %rel_vdev ], [ -12, %do.end74 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #12
  br label %disable_clks

disable_clks:                                     ; preds = %unreg_v4l2_dev, %if.end63.disable_clks_crit_edge
  %ret.2 = phi i32 [ %call65, %if.end63.disable_clks_crit_edge ], [ %ret.1, %unreg_v4l2_dev ]
  %52 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %53) #12
  tail call void @clk_unprepare(ptr noundef %53) #12
  br label %cleanup

cleanup:                                          ; preds = %disable_clks, %video_device_node_name.exit, %do.end61, %do.end48, %do.end37, %do.end28, %if.then16, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %7, %if.then16 ], [ %call.i193, %do.end28 ], [ %18, %do.end37 ], [ %24, %do.end48 ], [ %retval.0.i199.ph, %do.end61 ], [ %ret.2, %disable_clks ], [ 0, %video_device_node_name.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vfd = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfd, align 4
  tail call void @video_unregister_device(ptr noundef %3) #12
  %m2m_dev = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %5) #12
  %6 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfd, align 4
  tail call void @video_device_release(ptr noundef %7) #12
  tail call void @v4l2_device_unregister(ptr noundef %1) #12
  %clk = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #12
  tail call void @clk_unprepare(ptr noundef %9) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_isr(i32 noundef %irq, ptr nocapture noundef %priv) #2 align 64 {
entry:
  %intr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intr) #12
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %intr, align 4, !annotation !122
  %map = getelementptr inbounds %struct.meson_ge2d, ptr %priv, i32 0, i32 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 8848, ptr noundef nonnull %intr) #12
  %3 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %intr, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %curr = getelementptr inbounds %struct.meson_ge2d, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %curr, align 4
  store ptr null, ptr %curr, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  %call.i = call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #12
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7
  %call.i29 = call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #12
  %sequence_out = getelementptr inbounds %struct.ge2d_ctx, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %sequence_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sequence_out, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sequence_out, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sequence, align 8
  %sequence_cap = getelementptr inbounds %struct.ge2d_ctx, ptr %6, i32 0, i32 6
  %14 = ptrtoint ptr %sequence_cap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sequence_cap, align 4
  %inc6 = add i32 %15, 1
  store i32 %inc6, ptr %sequence_cap, align 4
  %sequence7 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i29, i32 0, i32 4
  %16 = ptrtoint ptr %sequence7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sequence7, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i29, i32 0, i32 3
  %timecode8 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %timecode, ptr %timecode8, i32 16)
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %timestamp, align 8
  %timestamp10 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i29, i32 0, i32 5
  %20 = ptrtoint ptr %timestamp10 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %timestamp10, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %flags11 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i29, i32 0, i32 1
  %23 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flags11, align 8
  call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #12
  call void @vb2_buffer_done(ptr noundef %call.i29, i32 noundef 5) #12
  %m2m_dev = getelementptr inbounds %struct.meson_ge2d, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %m2m_dev, align 4
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx, align 4
  call void @v4l2_m2m_job_finish(ptr noundef %25, ptr noundef %27) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intr) #12
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 544) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ge2d2 = getelementptr inbounds %struct.ge2d_ctx, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %ge2d2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %ge2d2, align 8
  %in = getelementptr inbounds %struct.ge2d_ctx, ptr %call7.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %in, ptr @def_frame, i32 72)
  %out = getelementptr inbounds %struct.ge2d_ctx, ptr %call7.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %out, ptr @def_frame, i32 72)
  %mutex = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %m2m_dev = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 4
  %call7 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %7, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call7 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call18 = tail call ptr @video_devdata(ptr noundef %file) #12
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call18) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #12
  %11 = ptrtoint ptr %ge2d2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ge2d2, align 8
  %ctrl_handler.i = getelementptr inbounds %struct.ge2d_ctx, ptr %call7.i.i, i32 0, i32 4
  %call.i51 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 4, ptr noundef nonnull @ge2d_setup_ctrls._key, ptr noundef nonnull @.str.33) #12
  %call3.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ge2d_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %call5.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ge2d_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @ge2d_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #12
  %error.i = getelementptr inbounds %struct.ge2d_ctx, ptr %call7.i.i, i32 0, i32 4, i32 9
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end16.ge2d_setup_ctrls.exit_crit_edge, label %if.then.i

if.end16.ge2d_setup_ctrls.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %ge2d_setup_ctrls.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, ptr noundef nonnull @.str.35) #15
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #12
  br label %ge2d_setup_ctrls.exit

ge2d_setup_ctrls.exit:                            ; preds = %if.then.i, %if.end16.ge2d_setup_ctrls.exit_crit_edge
  %call22 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #12
  %ctrl_handler25 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrl_handler.i, ptr %ctrl_handler25, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %ge2d_setup_ctrls.exit, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %if.then5 ], [ %9, %if.then11 ], [ 0, %ge2d_setup_ctrls.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_release(ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ge2d1 = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ge2d1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ge2d1, align 4
  %mutex = getelementptr inbounds %struct.meson_ge2d, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #12
  %ctrl_handler = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  tail call void @v4l2_fh_del(ptr noundef %1) #12
  tail call void @v4l2_fh_exit(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ge2d_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %ge2d = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %ge2d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ge2d, align 4
  %mutex = getelementptr inbounds %struct.meson_ge2d, ptr %8, i32 0, i32 6
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mutex, ptr %lock, align 4
  %10 = load ptr, ptr %ge2d, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev2, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dst_vq, align 4
  %io_modes4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %io_modes4, align 4
  %drv_priv5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv5, align 4
  %ops6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ge2d_qops, ptr %ops6, align 4
  %mem_ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops7, align 4
  %buf_struct_size8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %19 = ptrtoint ptr %buf_struct_size8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 744, ptr %buf_struct_size8, align 4
  %timestamp_flags9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags9, align 4
  %21 = ptrtoint ptr %ge2d to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ge2d, align 4
  %mutex11 = getelementptr inbounds %struct.meson_ge2d, ptr %22, i32 0, i32 6
  %lock12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mutex11, ptr %lock12, align 4
  %24 = load ptr, ptr %ge2d, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev16, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  switch i32 %3, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %in.i = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %out.i = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 3
  br label %get_frame.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ge2d.i = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ge2d.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ge2d.i, align 4
  %dev.i = getelementptr inbounds %struct.meson_ge2d, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #15
  %in2.i = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 2
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %in2.i, %do.end.i ], [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp ult i32 %12, %14
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sizeimage3 = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %sizeimage3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizeimage3, align 4
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sizes, align 4
  %18 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %5, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %in.i = getelementptr inbounds %struct.ge2d_ctx, ptr %3, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %out.i = getelementptr inbounds %struct.ge2d_ctx, ptr %3, i32 0, i32 3
  br label %get_frame.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ge2d.i = getelementptr inbounds %struct.ge2d_ctx, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %ge2d.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ge2d.i, align 4
  %dev.i = getelementptr inbounds %struct.meson_ge2d, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #15
  %in2.i = getelementptr inbounds %struct.ge2d_ctx, ptr %3, i32 0, i32 2
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %in2.i, %do.end.i ], [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %11 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %field, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %12 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %get_frame.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

get_frame.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %get_frame.exit
  %sizeimage = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1.i = icmp ult i32 %17, %15
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !123

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ %15, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %get_frame.exit.vb2_set_plane_payload.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ge2d_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %3, label %if.else [
    i32 2, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge30
    i32 3, label %entry.if.then_crit_edge31
    i32 8, label %entry.if.then_crit_edge32
    i32 5, label %entry.if.then_crit_edge33
    i32 7, label %entry.if.then_crit_edge34
    i32 12, label %entry.if.then_crit_edge35
    i32 14, label %entry.if.then_crit_edge36
  ]

entry.if.then_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge30, %entry.if.then_crit_edge31, %entry.if.then_crit_edge32, %entry.if.then_crit_edge33, %entry.if.then_crit_edge34, %entry.if.then_crit_edge35, %entry.if.then_crit_edge36
  %sequence_out = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sequence_cap = getelementptr inbounds %struct.ge2d_ctx, ptr %1, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sequence_cap.sink = phi ptr [ %sequence_cap, %if.else ], [ %sequence_out, %if.then ]
  %5 = ptrtoint ptr %sequence_cap.sink to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sequence_cap.sink, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ge2d_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %if.end26, %entry
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %3, label %if.else [
    i32 2, label %for.cond.if.then_crit_edge
    i32 10, label %for.cond.if.then_crit_edge38
    i32 3, label %for.cond.if.then_crit_edge39
    i32 8, label %for.cond.if.then_crit_edge40
    i32 5, label %for.cond.if.then_crit_edge41
    i32 7, label %for.cond.if.then_crit_edge42
    i32 12, label %for.cond.if.then_crit_edge43
    i32 14, label %for.cond.if.then_crit_edge44
  ]

for.cond.if.then_crit_edge44:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge43:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge42:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge41:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge40:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge39:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge38:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %for.cond.if.then_crit_edge38, %for.cond.if.then_crit_edge39, %for.cond.if.then_crit_edge40, %for.cond.if.then_crit_edge41, %for.cond.if.then_crit_edge42, %for.cond.if.then_crit_edge43, %for.cond.if.then_crit_edge44
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then ]
  %call.i37 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #12
  %tobool.not = icmp eq ptr %call.i37, null
  br i1 %tobool.not, label %for.end, label %if.end26

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i37, i32 noundef 6) #12
  br label %for.cond

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ge2d_buf_queue(ptr noundef %vb) #2 align 64 {
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
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge2d_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb1
    i32 9963810, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %hflip = getelementptr i8, ptr %1, i32 192
  %7 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hflip, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %vflip = getelementptr i8, ptr %1, i32 196
  %10 = ptrtoint ptr %vflip to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %vflip, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %m2m_ctx = getelementptr i8, ptr %1, i32 -152
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %12, i32 noundef 1) #12
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %13 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not = icmp eq i32 %14, 0
  br i1 %cmp.i.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val5, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %16, label %if.else22 [
    i32 90, label %if.end.if.end28_crit_edge
    i32 180, label %if.then11
    i32 270, label %if.then18
  ]

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %if.else22, %if.then18, %if.then11, %if.end.if.end28_crit_edge
  %.sink56 = phi i32 [ 1, %if.then11 ], [ 0, %if.else22 ], [ 1, %if.then18 ], [ 0, %if.end.if.end28_crit_edge ]
  %.sink55 = phi i32 [ 1, %if.then11 ], [ 0, %if.else22 ], [ 0, %if.then18 ], [ 1, %if.end.if.end28_crit_edge ]
  %.sink = phi i32 [ 0, %if.then11 ], [ 0, %if.else22 ], [ 1, %if.then18 ], [ 1, %if.end.if.end28_crit_edge ]
  %hflip12 = getelementptr i8, ptr %1, i32 192
  %18 = ptrtoint ptr %hflip12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink56, ptr %hflip12, align 4
  %vflip13 = getelementptr i8, ptr %1, i32 196
  %19 = ptrtoint ptr %vflip13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink55, ptr %vflip13, align 4
  %xy_swap14 = getelementptr i8, ptr %1, i32 200
  %20 = ptrtoint ptr %xy_swap14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %xy_swap14, align 4
  %pix_fmt.i = getelementptr i8, ptr %1, i32 -140
  %21 = ptrtoint ptr %pix_fmt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %fmt.sroa.0.0.copyload53 = load i32, ptr %pix_fmt.i, align 4
  %fmt.sroa.6.0.pix_fmt.i.sroa_idx = getelementptr i8, ptr %1, i32 -136
  %22 = ptrtoint ptr %fmt.sroa.6.0.pix_fmt.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %fmt.sroa.6.0.copyload54 = load i32, ptr %fmt.sroa.6.0.pix_fmt.i.sroa_idx, align 4
  %fmt.sroa.7.0.pix_fmt.i.sroa_idx = getelementptr i8, ptr %1, i32 -132
  %xy_swap.i = getelementptr i8, ptr %1, i32 200
  %23 = ptrtoint ptr %xy_swap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xy_swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end28.vidioc_setup_cap_fmt.exit_crit_edge, label %if.then.i

if.end28.vidioc_setup_cap_fmt.exit_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_setup_cap_fmt.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %fmt.sroa.6.0.pix_fmt.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt.sroa.6.0.pix_fmt.i.sroa_idx, align 4
  br label %vidioc_setup_cap_fmt.exit

vidioc_setup_cap_fmt.exit:                        ; preds = %if.then.i, %if.end28.vidioc_setup_cap_fmt.exit_crit_edge
  %fmt.sroa.0.0 = phi i32 [ %fmt.sroa.0.0.copyload53, %if.end28.vidioc_setup_cap_fmt.exit_crit_edge ], [ %26, %if.then.i ]
  %fmt.sroa.6.0 = phi i32 [ %fmt.sroa.6.0.copyload54, %if.end28.vidioc_setup_cap_fmt.exit_crit_edge ], [ %fmt.sroa.0.0.copyload53, %if.then.i ]
  %pix_fmt = getelementptr i8, ptr %1, i32 -68
  %27 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %fmt.sroa.0.0, ptr %pix_fmt, align 4
  %fmt.sroa.6.0.pix_fmt.sroa_idx = getelementptr i8, ptr %1, i32 -64
  %28 = ptrtoint ptr %fmt.sroa.6.0.pix_fmt.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %fmt.sroa.6.0, ptr %fmt.sroa.6.0.pix_fmt.sroa_idx, align 4
  %fmt.sroa.7.0.pix_fmt.sroa_idx = getelementptr i8, ptr %1, i32 -60
  %29 = call ptr @memcpy(ptr %fmt.sroa.7.0.pix_fmt.sroa_idx, ptr %fmt.sroa.7.0.pix_fmt.i.sroa_idx, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %vidioc_setup_cap_fmt.exit, %sw.bb3.cleanup_crit_edge, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %sw.bb3.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %vidioc_setup_cap_fmt.exit ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.36, i32 noundef 32) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp = icmp ugt i32 %1, 18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %5, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %in.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %out.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3
  br label %get_frame.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ge2d.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %ge2d.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ge2d.i, align 4
  %dev.i = getelementptr inbounds %struct.meson_ge2d, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #15
  %in2.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %in2.i, %do.end.i ], [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pix_fmt = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %fmt, ptr %pix_fmt, i32 48)
  %fmt3 = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_frame.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %fmt_cap.sroa.12.i = alloca { i32, i32, i32, %union.anon.102, i32, i32 }, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ge2d1 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ge2d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ge2d1, align 4
  %call.i = tail call fastcc ptr @find_fmt(ptr noundef %f) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fmt_cap.sroa.12.i)
  %pix_fmt.i.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %pix_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %fmt_cap.sroa.0.0.copyload23.i = load i32, ptr %pix_fmt.i.i, align 4
  %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %fmt_cap.sroa.7.0.copyload24.i = load i32, ptr %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx.i, align 4
  %fmt_cap.sroa.10.0.pix_fmt.i.sroa_idx.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 3
  %4 = ptrtoint ptr %fmt_cap.sroa.10.0.pix_fmt.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %fmt_cap.sroa.10.0.copyload26.i = load i32, ptr %fmt_cap.sroa.10.0.pix_fmt.i.sroa_idx.i, align 4
  %fmt_cap.sroa.12.0.pix_fmt.i.sroa_idx.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 6
  %5 = call ptr @memcpy(ptr %fmt_cap.sroa.12.i, ptr %fmt_cap.sroa.12.0.pix_fmt.i.sroa_idx.i, i32 24)
  %xy_swap.i.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %xy_swap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xy_swap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not.i.i, i32 %fmt_cap.sroa.0.0.copyload23.i, i32 %fmt_cap.sroa.7.0.copyload24.i
  %spec.select41 = select i1 %tobool.not.i.i, i32 %fmt_cap.sroa.7.0.copyload24.i, i32 %fmt_cap.sroa.0.0.copyload23.i
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesperline.i, align 4
  %depth.i = getelementptr inbounds %struct.ge2d_fmt, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %13, %spec.select
  %shr.i = lshr i32 %mul.i, 3
  %add.i = add nuw nsw i32 %shr.i, 7
  %and.i = and i32 %add.i, 1073741816
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %and.i) #12
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizeimage.i, align 4
  %mul5.i = mul i32 %14, %spec.select41
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %mul5.i) #12
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %18 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %fmt1.i, align 4
  %fmt_cap.sroa.7.0.fmt1.sroa_idx.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %fmt_cap.sroa.7.0.fmt1.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select41, ptr %fmt_cap.sroa.7.0.fmt1.sroa_idx.i, align 4
  %fmt_cap.sroa.9.0.fmt1.sroa_idx.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %fmt_cap.sroa.9.0.fmt1.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %fmt_cap.sroa.9.0.fmt1.sroa_idx.i, align 4
  %fmt_cap.sroa.10.0.fmt1.sroa_idx.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %fmt_cap.sroa.10.0.fmt1.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %fmt_cap.sroa.10.0.copyload26.i, ptr %fmt_cap.sroa.10.0.fmt1.sroa_idx.i, align 4
  %22 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %14, ptr %bytesperline.i, align 4
  %23 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %sizeimage.i, align 4
  %fmt_cap.sroa.12.0.fmt1.sroa_idx.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %fmt_cap.sroa.12.0.fmt1.sroa_idx.i, ptr %fmt_cap.sroa.12.i, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fmt_cap.sroa.12.i)
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 4
  %27 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %26, i32 noundef %28) #12
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %29 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 0
  br i1 %cmp.i.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %32) #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pix_fmt = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 1
  %33 = call ptr @memcpy(ptr %pix_fmt, ptr %fmt1.i, i32 48)
  %call9 = tail call fastcc ptr @find_fmt(ptr noundef %f)
  %fmt10 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %fmt10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9, ptr %fmt10, align 4
  %35 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call9, align 4
  %37 = ptrtoint ptr %fmt_cap.sroa.9.0.fmt1.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %fmt_cap.sroa.9.0.fmt1.sroa_idx.i, align 4
  %crop = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %crop, align 4
  %top = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 2, i32 1
  %39 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %top, align 4
  %40 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pix_fmt, align 4
  %width16 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 2, i32 2
  %42 = ptrtoint ptr %width16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %width16, align 4
  %height = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 1, i32 1
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %height19 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 2, i32 3
  %45 = ptrtoint ptr %height19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %height19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_out(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ge2d1 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ge2d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ge2d1, align 4
  %call.i = tail call fastcc ptr @find_fmt(ptr noundef %f) #12
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %field.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pixelformat.i, align 4
  %6 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %7)
  %cmp.i = icmp ugt i32 %7, 8191
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8191, ptr %fmt1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %10)
  %cmp7.i = icmp ugt i32 %10, 8191
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.vidioc_try_fmt_out.exit_crit_edge

if.end.i.vidioc_try_fmt_out.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt_out.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8191, ptr %height.i, align 4
  br label %vidioc_try_fmt_out.exit

vidioc_try_fmt_out.exit:                          ; preds = %if.then8.i, %if.end.i.vidioc_try_fmt_out.exit_crit_edge
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytesperline.i, align 4
  %14 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt1.i, align 4
  %depth.i = getelementptr inbounds %struct.ge2d_fmt, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %17, %15
  %shr.i = lshr i32 %mul.i, 3
  %add.i = add nuw nsw i32 %shr.i, 7
  %and.i = and i32 %add.i, 1073741816
  %18 = tail call i32 @llvm.umax.i32(i32 %13, i32 %and.i) #12
  %19 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bytesperline.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeimage.i, align 4
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i, align 4
  %mul23.i = mul i32 %18, %23
  %24 = tail call i32 @llvm.umax.i32(i32 %21, i32 %mul23.i) #12
  %25 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sizeimage.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %26 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_ctx, align 4
  %28 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %27, i32 noundef %29) #12
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %30 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i46.not = icmp eq i32 %31, 0
  br i1 %cmp.i46.not, label %if.end7, label %do.end

do.end:                                           ; preds = %vidioc_try_fmt_out.exit
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %33) #15
  br label %cleanup

if.end7:                                          ; preds = %vidioc_try_fmt_out.exit
  %pix_fmt = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1
  %34 = call ptr @memcpy(ptr %pix_fmt, ptr %fmt1.i, i32 48)
  %call10 = tail call fastcc ptr @find_fmt(ptr noundef %f)
  %fmt11 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %fmt11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call10, ptr %fmt11, align 4
  %36 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call10, align 4
  %38 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pixelformat.i, align 4
  %crop = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %crop, align 4
  %top = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 2, i32 1
  %40 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %top, align 4
  %41 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pix_fmt, align 4
  %width17 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 2, i32 2
  %43 = ptrtoint ptr %width17 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %width17, align 4
  %height = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 1
  %44 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height, align 4
  %height20 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 2, i32 3
  %46 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %height20, align 4
  %pix_fmt21 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 1
  %47 = call ptr @memcpy(ptr %pix_fmt21, ptr %pix_fmt, i32 48)
  %xy_swap.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 9
  %48 = ptrtoint ptr %xy_swap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xy_swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %if.then.i48

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i48:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height, align 4
  %52 = ptrtoint ptr %pix_fmt21 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %pix_fmt21, align 4
  %53 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pix_fmt, align 4
  %height4.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3, i32 1, i32 1
  %55 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %height4.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i48, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then.i48 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  %fmt_cap.sroa.12 = alloca { i32, i32, i32, %union.anon.102, i32, i32 }, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @find_fmt(ptr noundef %f)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fmt_cap.sroa.12)
  %pix_fmt.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %pix_fmt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %fmt_cap.sroa.0.0.copyload23 = load i32, ptr %pix_fmt.i, align 4
  %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 1
  %1 = ptrtoint ptr %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %fmt_cap.sroa.7.0.copyload24 = load i32, ptr %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx, align 4
  %fmt_cap.sroa.10.0.pix_fmt.i.sroa_idx = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 3
  %2 = ptrtoint ptr %fmt_cap.sroa.10.0.pix_fmt.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %fmt_cap.sroa.10.0.copyload26 = load i32, ptr %fmt_cap.sroa.10.0.pix_fmt.i.sroa_idx, align 4
  %fmt_cap.sroa.12.0.pix_fmt.i.sroa_idx = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2, i32 1, i32 6
  %3 = call ptr @memcpy(ptr %fmt_cap.sroa.12, ptr %fmt_cap.sroa.12.0.pix_fmt.i.sroa_idx, i32 24)
  %xy_swap.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %xy_swap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xy_swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.vidioc_setup_cap_fmt.exit_crit_edge, label %if.then.i

entry.vidioc_setup_cap_fmt.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_setup_cap_fmt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt_cap.sroa.7.0.pix_fmt.i.sroa_idx, align 4
  br label %vidioc_setup_cap_fmt.exit

vidioc_setup_cap_fmt.exit:                        ; preds = %if.then.i, %entry.vidioc_setup_cap_fmt.exit_crit_edge
  %fmt_cap.sroa.0.0 = phi i32 [ %fmt_cap.sroa.0.0.copyload23, %entry.vidioc_setup_cap_fmt.exit_crit_edge ], [ %7, %if.then.i ]
  %fmt_cap.sroa.7.0 = phi i32 [ %fmt_cap.sroa.7.0.copyload24, %entry.vidioc_setup_cap_fmt.exit_crit_edge ], [ %fmt_cap.sroa.0.0.copyload23, %if.then.i ]
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesperline, align 4
  %depth = getelementptr inbounds %struct.ge2d_fmt, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth, align 4
  %mul = mul i32 %13, %fmt_cap.sroa.0.0
  %shr = lshr i32 %mul, 3
  %add = add nuw nsw i32 %shr, 7
  %and = and i32 %add, 1073741816
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %and)
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizeimage, align 4
  %mul5 = mul i32 %14, %fmt_cap.sroa.7.0
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %mul5)
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %18 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %fmt_cap.sroa.0.0, ptr %fmt1, align 4
  %fmt_cap.sroa.7.0.fmt1.sroa_idx = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %fmt_cap.sroa.7.0.fmt1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %fmt_cap.sroa.7.0, ptr %fmt_cap.sroa.7.0.fmt1.sroa_idx, align 4
  %fmt_cap.sroa.9.0.fmt1.sroa_idx = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %fmt_cap.sroa.9.0.fmt1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %fmt_cap.sroa.9.0.fmt1.sroa_idx, align 4
  %fmt_cap.sroa.10.0.fmt1.sroa_idx = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %fmt_cap.sroa.10.0.fmt1.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %fmt_cap.sroa.10.0.copyload26, ptr %fmt_cap.sroa.10.0.fmt1.sroa_idx, align 4
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %14, ptr %bytesperline, align 4
  %23 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %sizeimage, align 4
  %fmt_cap.sroa.12.0.fmt1.sroa_idx = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %fmt_cap.sroa.12.0.fmt1.sroa_idx, ptr %fmt_cap.sroa.12, i32 24)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fmt_cap.sroa.12)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @find_fmt(ptr noundef %f)
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %field, align 4
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pixelformat, align 4
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %5)
  %cmp = icmp ugt i32 %5, 8191
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8191, ptr %fmt1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %8)
  %cmp7 = icmp ugt i32 %8, 8191
  br i1 %cmp7, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8191, ptr %height, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesperline, align 4
  %12 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt1, align 4
  %depth = getelementptr inbounds %struct.ge2d_fmt, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %depth, align 4
  %mul = mul i32 %15, %13
  %shr = lshr i32 %mul, 3
  %add = add nuw nsw i32 %shr, 7
  %and = and i32 %add, 1073741816
  %16 = tail call i32 @llvm.umax.i32(i32 %11, i32 %and)
  %17 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizeimage, align 4
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %mul23 = mul i32 %16, %21
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %mul23)
  %23 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sizeimage, align 4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %in.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %out.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3
  br label %get_frame.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ge2d.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %ge2d.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ge2d.i, align 4
  %dev.i = getelementptr inbounds %struct.meson_ge2d, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #15
  %in2.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %in2.i, %do.end.i ], [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %8, label %get_frame.exit.cleanup_crit_edge [
    i32 257, label %get_frame.exit.sw.bb_crit_edge
    i32 258, label %get_frame.exit.sw.bb_crit_edge49
    i32 1, label %get_frame.exit.sw.bb8_crit_edge
    i32 2, label %get_frame.exit.sw.bb8_crit_edge50
    i32 256, label %sw.bb13
    i32 0, label %sw.bb18
  ]

get_frame.exit.sw.bb8_crit_edge50:                ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

get_frame.exit.sw.bb8_crit_edge:                  ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8

get_frame.exit.sw.bb_crit_edge49:                 ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

get_frame.exit.sw.bb_crit_edge:                   ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

get_frame.exit.cleanup_crit_edge:                 ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %get_frame.exit.sw.bb_crit_edge, %get_frame.exit.sw.bb_crit_edge49
  %10 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp5.not = icmp eq i32 %11, 1
  br i1 %cmp5.not, label %sw.bb.if.else_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

sw.bb8:                                           ; preds = %get_frame.exit.sw.bb8_crit_edge, %get_frame.exit.sw.bb8_crit_edge50
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp10.not = icmp eq i32 %13, 2
  br i1 %cmp10.not, label %sw.bb8.if.else_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb8.if.else_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

sw.bb13:                                          ; preds = %get_frame.exit
  %14 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp15.not = icmp eq i32 %15, 1
  br i1 %cmp15.not, label %sw.bb13.if.then23_crit_edge, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb13.if.then23_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

sw.bb18:                                          ; preds = %get_frame.exit
  %16 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp20.not = icmp eq i32 %17, 2
  br i1 %cmp20.not, label %sw.bb18.if.then23_crit_edge, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb18.if.then23_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then23:                                        ; preds = %sw.bb18.if.then23_crit_edge, %sw.bb13.if.then23_crit_edge
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %crop = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %r, ptr %crop, i32 16)
  br label %cleanup

if.else:                                          ; preds = %sw.bb8.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %r24 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %19 = ptrtoint ptr %r24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %r24, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %top, align 4
  %pix_fmt = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pix_fmt, align 4
  %width27 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %width27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width27, align 4
  %height = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  %height30 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %height30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %sw.bb18.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %get_frame.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %get_frame.exit.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ge2d1 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ge2d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ge2d1, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %in.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %out.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3
  br label %get_frame.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #15
  %in2.i = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %in2.i, %do.end.i ], [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %8, label %get_frame.exit.cleanup_crit_edge [
    i32 256, label %sw.bb
    i32 0, label %sw.bb9
  ]

get_frame.exit.cleanup_crit_edge:                 ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %get_frame.exit
  %10 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp6.not = icmp eq i32 %11, 1
  br i1 %cmp6.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %get_frame.exit
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp11.not = icmp eq i32 %13, 2
  br i1 %cmp11.not, label %sw.bb9.sw.epilog_crit_edge, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14 = icmp slt i32 %15, 0
  br i1 %cmp14, label %sw.epilog.do.end_crit_edge, label %lor.lhs.false

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %sw.epilog
  %16 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp16 = icmp slt i32 %17, 0
  br i1 %cmp16, label %lor.lhs.false.do.end_crit_edge, label %if.end19

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name) #15
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %add = add i32 %19, %17
  %pix_fmt = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %pix_fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pix_fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp24 = icmp ugt i32 %add, %21
  br i1 %cmp24, label %if.end19.do.end36_crit_edge, label %lor.lhs.false25

if.end19.do.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

lor.lhs.false25:                                  ; preds = %if.end19
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %add29 = add i32 %23, %15
  %height31 = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %height31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %25)
  %cmp32 = icmp ugt i32 %add29, %25
  br i1 %cmp32, label %lor.lhs.false25.do.end36_crit_edge, label %if.end42

lor.lhs.false25.do.end36_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false25.do.end36_crit_edge, %if.end19.do.end36_crit_edge
  %name39 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name39) #15
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  %crop = getelementptr inbounds %struct.ge2d_frame, ptr %retval.0.i, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %crop, ptr %r, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end36, %do.end, %sw.bb9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %get_frame.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end36 ], [ 0, %if.end42 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %get_frame.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @find_fmt(ptr nocapture noundef readonly %f) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 842093121, label %cleanup.fold.split23
    i32 876758866, label %cleanup.fold.split
    i32 875708738, label %cleanup.fold.split7
    i32 875709016, label %cleanup.fold.split8
    i32 875708993, label %cleanup.fold.split9
    i32 875714642, label %cleanup.fold.split10
    i32 875708754, label %cleanup.fold.split11
    i32 877807426, label %cleanup.fold.split12
    i32 875713089, label %cleanup.fold.split13
    i32 875713112, label %cleanup.fold.split14
    i32 859981650, label %cleanup.fold.split15
    i32 861030210, label %cleanup.fold.split16
    i32 -1255058856, label %cleanup.fold.split17
    i32 -1255058879, label %cleanup.fold.split18
    i32 1346520914, label %cleanup.fold.split19
    i32 842094674, label %cleanup.fold.split20
    i32 842088786, label %cleanup.fold.split21
    i32 842093144, label %cleanup.fold.split22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split7:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split7, %cleanup.fold.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 2), %cleanup.fold.split7 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 3), %cleanup.fold.split8 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 4), %cleanup.fold.split9 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 5), %cleanup.fold.split10 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 6), %cleanup.fold.split11 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 7), %cleanup.fold.split12 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 8), %cleanup.fold.split13 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 9), %cleanup.fold.split14 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 10), %cleanup.fold.split15 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 11), %cleanup.fold.split16 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 12), %cleanup.fold.split17 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 13), %cleanup.fold.split18 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 14), %cleanup.fold.split19 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 15), %cleanup.fold.split20 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 16), %cleanup.fold.split21 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 17), %cleanup.fold.split22 ], [ getelementptr inbounds ([19 x %struct.ge2d_fmt], ptr @formats, i32 0, i32 18), %cleanup.fold.split23 ], [ @formats, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ge2d1 = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ge2d1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ge2d1, align 4
  %curr = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %curr, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #12
  %in = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %in, align 4
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i12 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #12
  %out = getelementptr inbounds %struct.ge2d_ctx, ptr %priv, i32 0, i32 3
  %8 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i12, ptr %out, align 4
  %9 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr, align 4
  %map.i = getelementptr inbounds %struct.meson_ge2d, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8836, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 4
  %call.i1385.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 8836, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %in.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in.i, align 4
  %call.i1386.i = tail call ptr @vb2_plane_cookie(ptr noundef %18, i32 noundef 0) #12
  %19 = ptrtoint ptr %call.i1386.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i1386.i, align 4
  %add.i = add i32 %20, 7
  %shr.i = lshr i32 %add.i, 3
  %call5.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 9164, i32 noundef %shr.i) #12
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 4
  %pix_fmt.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 1
  %bytesperline.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 1, i32 4
  %23 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bytesperline.i, align 4
  %add8.i = add i32 %24, 7
  %shr9.i = lshr i32 %add8.i, 3
  %call10.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 9168, i32 noundef %shr9.i) #12
  %25 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i, align 4
  %out.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3
  %27 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out.i, align 4
  %call.i1387.i = tail call ptr @vb2_plane_cookie(ptr noundef %28, i32 noundef 0) #12
  %29 = ptrtoint ptr %call.i1387.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i1387.i, align 4
  %add15.i = add i32 %30, 7
  %shr16.i = lshr i32 %add15.i, 3
  %call17.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 9172, i32 noundef %shr16.i) #12
  %31 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i, align 4
  %pix_fmt20.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 1
  %bytesperline21.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 1, i32 4
  %33 = ptrtoint ptr %bytesperline21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytesperline21.i, align 4
  %add22.i = add i32 %34, 7
  %shr23.i = lshr i32 %add22.i, 3
  %call24.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 9176, i32 noundef %shr23.i) #12
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i, align 4
  %37 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out.i, align 4
  %call.i1388.i = tail call ptr @vb2_plane_cookie(ptr noundef %38, i32 noundef 0) #12
  %39 = ptrtoint ptr %call.i1388.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call.i1388.i, align 4
  %add30.i = add i32 %40, 7
  %shr31.i = lshr i32 %add30.i, 3
  %call32.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 9156, i32 noundef %shr31.i) #12
  %41 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i, align 4
  %43 = ptrtoint ptr %bytesperline21.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytesperline21.i, align 4
  %add37.i = add i32 %44, 7
  %shr38.i = lshr i32 %add37.i, 3
  %call39.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 9160, i32 noundef %shr38.i) #12
  %45 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map.i, align 4
  %call41.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 8832, i32 noundef 0) #12
  %47 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i, align 4
  %call88.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 8836, i32 noundef 50266112) #12
  %49 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i, align 4
  %fmt.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fmt.i, align 4
  %hw_map.i = getelementptr inbounds %struct.ge2d_fmt, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %hw_map.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_map.i, align 4
  %hw_fmt.i = getelementptr inbounds %struct.ge2d_fmt, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %hw_fmt.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hw_fmt.i, align 4
  %fmt224.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 3
  %57 = ptrtoint ptr %fmt224.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fmt224.i, align 4
  %hw_map225.i = getelementptr inbounds %struct.ge2d_fmt, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %hw_map225.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hw_map225.i, align 4
  %hw_fmt259.i = getelementptr inbounds %struct.ge2d_fmt, ptr %58, i32 0, i32 4
  %61 = ptrtoint ptr %hw_fmt259.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hw_fmt259.i, align 4
  %shl.i = shl i32 %54, 19
  %and113.i = and i32 %shl.i, 7864320
  %shl145.i = shl i32 %56, 16
  %and146.i = and i32 %shl145.i, 196608
  %shl179.i = shl i32 %54, 11
  %and180.i = and i32 %shl179.i, 30720
  %shl213.i = shl i32 %56, 8
  %and214.i = and i32 %shl213.i, 768
  %shl247.i = shl i32 %60, 3
  %and248.i = and i32 %shl247.i, 120
  %and282.i = and i32 %62, 3
  %or114.i = or i32 %and180.i, %and113.i
  %or147.i = or i32 %or114.i, %and146.i
  %or181.i = or i32 %or147.i, %and214.i
  %or215.i = or i32 %or181.i, %and248.i
  %or249.i = or i32 %or215.i, %and282.i
  %or283.i = or i32 %or249.i, 8421504
  %call284.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 8840, i32 noundef %or283.i) #12
  %63 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i, align 4
  %call286.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 9120, i32 noundef 1) #12
  %65 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map.i, align 4
  %crop.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 2
  %top.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 2, i32 1
  %67 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %top.i, align 4
  %height.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 2, i32 3
  %69 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height.i, align 4
  %add331.i = add i32 %70, %68
  %shl317.i = shl i32 %68, 16
  %and318.i = and i32 %shl317.i, 536805376
  %and362.i = and i32 %add331.i, 8191
  %or363.i = or i32 %and362.i, %and318.i
  %call364.i = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 8864, i32 noundef %or363.i) #12
  %71 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map.i, align 4
  %73 = ptrtoint ptr %crop.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %crop.i, align 4
  %width.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 2, i32 2
  %75 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %width.i, align 4
  %add410.i = add i32 %76, %74
  %shl396.i = shl i32 %74, 16
  %and397.i = and i32 %shl396.i, 536805376
  %and441.i = and i32 %add410.i, 8191
  %or442.i = or i32 %and441.i, %and397.i
  %call443.i = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 8860, i32 noundef %or442.i) #12
  %77 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map.i, align 4
  %crop453.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 2
  %top454.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 2, i32 1
  %79 = ptrtoint ptr %top454.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %top454.i, align 4
  %height490.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 2, i32 3
  %81 = ptrtoint ptr %height490.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %height490.i, align 4
  %add491.i = add i32 %82, %80
  %shl476.i = shl i32 %80, 16
  %and477.i = and i32 %shl476.i, 536805376
  %and522.i = and i32 %add491.i, 8191
  %or523.i = or i32 %and522.i, %and477.i
  %call524.i = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 8900, i32 noundef %or523.i) #12
  %83 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map.i, align 4
  %85 = ptrtoint ptr %crop453.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %crop453.i, align 4
  %width571.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 2, i32 2
  %87 = ptrtoint ptr %width571.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %width571.i, align 4
  %add572.i = add i32 %88, %86
  %shl557.i = shl i32 %86, 16
  %and558.i = and i32 %shl557.i, 536805376
  %and603.i = and i32 %add572.i, 8191
  %or604.i = or i32 %and603.i, %and558.i
  %call605.i = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 8896, i32 noundef %or604.i) #12
  %89 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map.i, align 4
  %91 = ptrtoint ptr %top454.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %top454.i, align 4
  %93 = ptrtoint ptr %height490.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height490.i, align 4
  %add653.i = add i32 %94, %92
  %shl638.i = shl i32 %92, 16
  %and639.i = and i32 %shl638.i, 536805376
  %and684.i = and i32 %add653.i, 8191
  %or685.i = or i32 %and684.i, %and639.i
  %call686.i = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 8916, i32 noundef %or685.i) #12
  %95 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %map.i, align 4
  %97 = ptrtoint ptr %crop453.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %crop453.i, align 4
  %99 = ptrtoint ptr %width571.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %width571.i, align 4
  %add734.i = add i32 %100, %98
  %shl719.i = shl i32 %98, 16
  %and720.i = and i32 %shl719.i, 536805376
  %and765.i = and i32 %add734.i, 8191
  %or766.i = or i32 %and765.i, %and720.i
  %call767.i = tail call i32 @regmap_write(ptr noundef %96, i32 noundef 8912, i32 noundef %or766.i) #12
  %height778.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 2, i32 1, i32 1
  %101 = ptrtoint ptr %height778.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height778.i, align 4
  %103 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map.i, align 4
  %and801.i = and i32 %102, 8191
  %call802.i = tail call i32 @regmap_write(ptr noundef %104, i32 noundef 8876, i32 noundef %and801.i) #12
  %105 = ptrtoint ptr %pix_fmt.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pix_fmt.i, align 4
  %107 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %map.i, align 4
  %and836.i = and i32 %106, 8191
  %call837.i = tail call i32 @regmap_write(ptr noundef %108, i32 noundef 8872, i32 noundef %and836.i) #12
  %height848.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 3, i32 1, i32 1
  %109 = ptrtoint ptr %height848.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %height848.i, align 4
  %111 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %map.i, align 4
  %and871.i = and i32 %110, 8191
  %call872.i = tail call i32 @regmap_write(ptr noundef %112, i32 noundef 8908, i32 noundef %and871.i) #12
  %113 = ptrtoint ptr %pix_fmt20.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pix_fmt20.i, align 4
  %115 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map.i, align 4
  %and906.i = and i32 %114, 8191
  %call907.i = tail call i32 @regmap_write(ptr noundef %116, i32 noundef 8904, i32 noundef %and906.i) #12
  %117 = ptrtoint ptr %height848.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %height848.i, align 4
  %119 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %map.i, align 4
  %and941.i = and i32 %118, 8191
  %call942.i = tail call i32 @regmap_write(ptr noundef %120, i32 noundef 8924, i32 noundef %and941.i) #12
  %121 = ptrtoint ptr %pix_fmt20.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pix_fmt20.i, align 4
  %123 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %map.i, align 4
  %and976.i = and i32 %122, 8191
  %call977.i = tail call i32 @regmap_write(ptr noundef %124, i32 noundef 8920, i32 noundef %and976.i) #12
  %125 = ptrtoint ptr %fmt224.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fmt224.i, align 4
  %alpha.i = getelementptr inbounds %struct.ge2d_fmt, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %alpha.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool1030.not.i = icmp eq i8 %128, 0
  br i1 %tobool1030.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %129 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %fmt.i, align 4
  %alpha1033.i = getelementptr inbounds %struct.ge2d_fmt, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %alpha1033.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %alpha1033.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool1034.not.i = icmp eq i8 %132, 0
  br i1 %tobool1034.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.ge2d_hw_start.exit_crit_edge

land.lhs.true.i.ge2d_hw_start.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ge2d_hw_start.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %133 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fmt.i, align 4
  %alpha1089.i = getelementptr inbounds %struct.ge2d_fmt, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %alpha1089.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %alpha1089.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool1090.not.i = icmp eq i8 %136, 0
  %..i = select i1 %tobool1090.not.i, i32 5379331, i32 5379457
  br label %ge2d_hw_start.exit

ge2d_hw_start.exit:                               ; preds = %if.else.i, %land.lhs.true.i.ge2d_hw_start.exit_crit_edge
  %reg.0.i = phi i32 [ 5379425, %land.lhs.true.i.ge2d_hw_start.exit_crit_edge ], [ %..i, %if.else.i ]
  %137 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %map.i, align 4
  %call1198.i = tail call i32 @regmap_write(ptr noundef %138, i32 noundef 9008, i32 noundef %reg.0.i) #12
  %139 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %map.i, align 4
  %xy_swap.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 9
  %141 = ptrtoint ptr %xy_swap.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %xy_swap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool1200.not.i = icmp eq i32 %142, 0
  %hflip.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 7
  %143 = ptrtoint ptr %hflip.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hflip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool1201.not.i = icmp eq i32 %144, 0
  %cond1202.i = select i1 %tobool1201.not.i, i32 0, i32 2
  %vflip.i = getelementptr inbounds %struct.ge2d_ctx, ptr %10, i32 0, i32 8
  %145 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %vflip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool1204.not.i = icmp eq i32 %146, 0
  %cond1205.i = select i1 %tobool1204.not.i, i32 0, i32 4
  %or1203.i = select i1 %tobool1200.not.i, i32 1, i32 129
  %or1206.i = or i32 %cond1202.i, %or1203.i
  %or1207.i = or i32 %or1206.i, %cond1205.i
  %call1208.i = tail call i32 @regmap_write(ptr noundef %140, i32 noundef 8844, i32 noundef %or1207.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_ge2d__501_1058_ge2d_drv_init6, !1, !"__initcall__kmod_ge2d__501_1058_ge2d_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1058, i32 1}
!2 = !{ptr @__exitcall_ge2d_drv_exit, !1, !"__exitcall_ge2d_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author502, !4, !"__UNIQUE_ID_author502", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1060, i32 1}
!5 = !{ptr @__UNIQUE_ID_description503, !6, !"__UNIQUE_ID_description503", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1061, i32 1}
!7 = !{ptr @__UNIQUE_ID_file504, !8, !"__UNIQUE_ID_file504", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1062, i32 1}
!9 = !{ptr @__UNIQUE_ID_license505, !8, !"__UNIQUE_ID_license505", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1053, i32 11}
!12 = !{ptr @ge2d_drv, !13, !"ge2d_drv", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1049, i32 31}
!14 = !{ptr @ge2d_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 937, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ge2d_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 943, i32 14}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 952, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ge2d_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ge2d_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 958, i32 3}
!30 = !{ptr @ge2d_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ge2d_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 964, i32 3}
!34 = !{ptr @ge2d_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ge2d_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 974, i32 3}
!38 = !{ptr @ge2d_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ge2d_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 984, i32 3}
!42 = !{ptr @ge2d_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ge2d_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 999, i32 3}
!46 = !{ptr @ge2d_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ge2d_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1006, i32 3}
!50 = !{ptr @ge2d_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ge2d_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1010, i32 2}
!54 = !{ptr @ge2d_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ge2d_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @meson_ge2d_regmap_conf, !57, !"meson_ge2d_regmap_conf", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 913, i32 35}
!58 = !{ptr @ge2d_videodev, !59, !"ge2d_videodev", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 903, i32 34}
!60 = !{ptr @ge2d_fops, !61, !"ge2d_fops", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 894, i32 42}
!62 = !{ptr @def_frame, !63, !"def_frame", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 820, i32 32}
!64 = !{ptr @formats, !65, !"formats", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 110, i32 30}
!66 = !{ptr @ge2d_qops, !67, !"ge2d_qops", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 388, i32 29}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 165, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @get_frame._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @get_frame._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ge2d_setup_ctrls._key, !78, !"_key", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 798, i32 2}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 812, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @ge2d_setup_ctrls._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @ge2d_setup_ctrls._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @ge2d_ctrl_ops, !86, !"ge2d_ctrl_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 790, i32 35}
!87 = !{ptr @ge2d_ioctl_ops, !88, !"ge2d_ioctl_ops", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 708, i32 36}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 436, i32 25}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 610, i32 3}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @vidioc_s_fmt_cap._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @vidioc_s_fmt_cap._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 685, i32 3}
!98 = !{ptr @vidioc_s_fmt_out._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vidioc_s_fmt_out._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 544, i32 3}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vidioc_s_selection._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @vidioc_s_selection._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 551, i32 3}
!107 = !{ptr @vidioc_s_selection._entry.42, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @vidioc_s_selection._entry_ptr.44, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @ge2d_m2m_ops, !110, !"ge2d_m2m_ops", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 319, i32 34}
!111 = !{ptr @meson_ge2d_match, !112, !"meson_ge2d_match", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/meson/ge2d/ge2d.c", i32 1040, i32 34}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i8 0, i8 2}
