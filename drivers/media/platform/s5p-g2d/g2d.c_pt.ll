; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-g2d/g2d.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-g2d/g2d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.g2d_frame = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.g2d_fmt = type { i32, i32, i32 }
%struct.g2d_variant = type { i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.g2d_dev = type { %struct.v4l2_device, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.g2d_ctx = type { %struct.v4l2_fh, ptr, %struct.g2d_frame, %struct.g2d_frame, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
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
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@__initcall__kmod_s5p_g2d__298_792_g2d_pdrv_init6 = internal global ptr @g2d_pdrv_init, section ".initcall6.init", align 4
@g2d_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @g2d_probe, ptr @g2d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_g2d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_g2d_pdrv_exit = internal global ptr @g2d_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [51 x i8] c"s5p_g2d.author=Kamil Debski <k.debski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [59 x i8] c"s5p_g2d.description=S5P G2D 2d graphics accelerator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [52 x i8] c"s5p_g2d.file=drivers/media/platform/s5p-g2d/s5p-g2d\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [20 x i8] c"s5p_g2d.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p-g2d\00", [24 x i8] zeroinitializer }, align 32
@exynos_g2d_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-g2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @g2d_drvdata_v3x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-g2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @g2d_drvdata_v4x }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@g2d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->ctrl_lock\00", [16 x i8] zeroinitializer }, align 32
@g2d_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sclk_fimg2d\00", [20 x i8] zeroinitializer }, align 32
@g2d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 644, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get g2d clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"g2d_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/platform/s5p-g2d/g2d.c\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr = internal global ptr @g2d_probe._entry, section ".printk_index", align 4
@g2d_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 650, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to prepare g2d clock\0A\00", [35 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.12 = internal global ptr @g2d_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fimg2d\00", [25 x i8] zeroinitializer }, align 32
@g2d_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 656, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get g2d clock gate\0A\00", [34 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.16 = internal global ptr @g2d_probe._entry.14, section ".printk_index", align 4
@g2d_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 663, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to prepare g2d clock gate\0A\00", [62 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.19 = internal global ptr @g2d_probe._entry.17, section ".printk_index", align 4
@g2d_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.7, i32 669, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to find IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.22 = internal global ptr @g2d_probe._entry.20, section ".printk_index", align 4
@g2d_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.6, ptr @.str.7, i32 679, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to install IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.25 = internal global ptr @g2d_probe._entry.23, section ".printk_index", align 4
@g2d_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.6, ptr @.str.7, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.28 = internal global ptr @g2d_probe._entry.26, section ".printk_index", align 4
@g2d_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @g2d_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"s5p-g2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release, ptr @g2d_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@g2d_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@g2d_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.6, ptr @.str.7, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.31 = internal global ptr @g2d_probe._entry.29, section ".printk_index", align 4
@def_frame = internal global { %struct.g2d_frame, [52 x i8] } { %struct.g2d_frame { i32 100, i32 100, i32 100, i32 100, i32 0, i32 0, ptr @formats, i32 0, i32 100, i32 100, i32 0 }, [52 x i8] zeroinitializer }, align 32
@g2d_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.6, ptr @.str.7, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.34 = internal global ptr @g2d_probe._entry.32, section ".printk_index", align 4
@g2d_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.6, ptr @.str.7, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@g2d_probe._entry_ptr.37 = internal global ptr @g2d_probe._entry.35, section ".printk_index", align 4
@g2d_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @g2d_open, ptr @g2d_release }, [60 x i8] zeroinitializer }, align 32
@g2d_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt, ptr null, ptr @vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr null, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt, ptr null, ptr @vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt, ptr null, ptr @vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr null, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_selection, ptr @vidioc_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@g2d_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: instance opened\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g2d_open\00", [23 x i8] zeroinitializer }, align 32
@g2d_open._entry_ptr = internal global ptr @g2d_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@g2d_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @g2d_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @g2d_buf_prepare, ptr null, ptr null, ptr null, ptr null, ptr @g2d_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@g2d_setup_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"g2d:205:(&ctx->ctrl_handler)->_lock\00", [60 x i8] zeroinitializer }, align 32
@g2d_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @g2d_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@g2d_setup_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: g2d_setup_ctrls failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"g2d_setup_ctrls\00", [16 x i8] zeroinitializer }, align 32
@g2d_setup_ctrls._entry_ptr = internal global ptr @g2d_setup_ctrls._entry, section ".printk_index", align 4
@g2d_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: instance closed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"g2d_release\00", [20 x i8] zeroinitializer }, align 32
@g2d_release._entry_ptr = internal global ptr @g2d_release._entry, section ".printk_index", align 4
@formats = internal global { [5 x %struct.g2d_fmt], [36 x i8] } { [5 x %struct.g2d_fmt] [%struct.g2d_fmt { i32 876758866, i32 32, i32 0 }, %struct.g2d_fmt { i32 1380075346, i32 16, i32 2 }, %struct.g2d_fmt { i32 1363298130, i32 16, i32 3 }, %struct.g2d_fmt { i32 875836498, i32 16, i32 5 }, %struct.g2d_fmt { i32 859981650, i32 24, i32 7 }], [36 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: queue (%d) bust\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vidioc_try_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: doesn't support negative values for top & left\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_try_selection\00", [43 x i8] zeroinitializer }, align 32
@vidioc_try_selection._entry_ptr = internal global ptr @vidioc_try_selection._entry, section ".printk_index", align 4
@g2d_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.7, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Removing s5p-g2d\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"g2d_remove\00", [21 x i8] zeroinitializer }, align 32
@g2d_remove._entry_ptr = internal global ptr @g2d_remove._entry, section ".printk_index", align 4
@g2d_drvdata_v3x = internal global { %struct.g2d_variant, [30 x i8] } { %struct.g2d_variant { i16 3 }, [30 x i8] zeroinitializer }, align 32
@g2d_drvdata_v4x = internal global { %struct.g2d_variant, [30 x i8] } { %struct.g2d_variant { i16 4 }, [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 9963796, i64 9963807]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"g2d_pdrv\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 783, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 787, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"exynos_g2d_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 771, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 634, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 635, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 642, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 644, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 650, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 654, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 656, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 663, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 669, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 679, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 690, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"g2d_videodev\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 607, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"g2d_m2m_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 616, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 703, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"def_frame\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 59, i32 25 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 719, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 724, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [9 x i8] c"g2d_fops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 573, i32 42 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"g2d_ioctl_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 582, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 270, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"g2d_qops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 132, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 1163, i32 7 }
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 205, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"g2d_ctrl_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 197, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 223, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 286, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 30, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 376, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 470, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 751, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"g2d_drvdata_v3x\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 763, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"g2d_drvdata_v4x\00", align 1
@___asan_gen_.254 = private constant [40 x i8] c"../drivers/media/platform/s5p-g2d/g2d.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 767, i32 27 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_g2d_pdrv_exit, ptr @__initcall__kmod_s5p_g2d__298_792_g2d_pdrv_init6, ptr @g2d_open._entry, ptr @g2d_open._entry_ptr, ptr @g2d_pdrv_exit, ptr @g2d_probe._entry, ptr @g2d_probe._entry.10, ptr @g2d_probe._entry.14, ptr @g2d_probe._entry.17, ptr @g2d_probe._entry.20, ptr @g2d_probe._entry.23, ptr @g2d_probe._entry.26, ptr @g2d_probe._entry.29, ptr @g2d_probe._entry.32, ptr @g2d_probe._entry.35, ptr @g2d_probe._entry_ptr, ptr @g2d_probe._entry_ptr.12, ptr @g2d_probe._entry_ptr.16, ptr @g2d_probe._entry_ptr.19, ptr @g2d_probe._entry_ptr.22, ptr @g2d_probe._entry_ptr.25, ptr @g2d_probe._entry_ptr.28, ptr @g2d_probe._entry_ptr.31, ptr @g2d_probe._entry_ptr.34, ptr @g2d_probe._entry_ptr.37, ptr @g2d_release._entry, ptr @g2d_release._entry_ptr, ptr @g2d_remove._entry, ptr @g2d_remove._entry_ptr, ptr @g2d_setup_ctrls._entry, ptr @g2d_setup_ctrls._entry_ptr, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry_ptr, ptr @vidioc_try_selection._entry, ptr @vidioc_try_selection._entry_ptr, ptr @g2d_pdrv, ptr @.str, ptr @exynos_g2d_match, ptr @g2d_probe.__key, ptr @.str.1, ptr @g2d_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @g2d_videodev, ptr @g2d_m2m_ops, ptr @.str.30, ptr @def_frame, ptr @.str.33, ptr @.str.36, ptr @g2d_fops, ptr @g2d_ioctl_ops, ptr @.str.38, ptr @.str.39, ptr @g2d_qops, ptr @.str.40, ptr @g2d_setup_ctrls._key, ptr @.str.41, ptr @g2d_ctrl_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @formats, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @g2d_drvdata_v3x, ptr @g2d_drvdata_v4x], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_g2d_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_frame to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_setup_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_setup_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_drvdata_v3x to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g2d_drvdata_v4x to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @g2d_pdrv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @g2d_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @g2d_pdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 300, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %ctrl_lock = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @g2d_probe.__key, i16 noundef signext 3) #6
  %mutex = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @g2d_probe.__key.2) #6
  %num_inst = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #6
  %0 = ptrtoint ptr %num_inst to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %num_inst, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %call14 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #6
  %clk = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call14, ptr %clk, align 4
  %cmp.i208 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call24 = tail call i32 @clk_prepare(ptr noundef %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %put_clk

if.end31:                                         ; preds = %if.end22
  %call33 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  %gate = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call33, ptr %gate, align 4
  %cmp.i209 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %unprep_clk

if.end41:                                         ; preds = %if.end31
  %call43 = tail call i32 @clk_prepare(ptr noundef %call33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %put_clk_gate

if.end50:                                         ; preds = %if.end41
  %call51 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #6
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %do.end56, label %if.end58

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  br label %unprep_clk_gate

if.end58:                                         ; preds = %if.end50
  %5 = ptrtoint ptr %call51 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call51, align 4
  %irq = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq, align 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call.i210 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @g2d_isr, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool62.not = icmp eq i32 %call.i210, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #9
  br label %unprep_clk_gate

if.end68:                                         ; preds = %if.end58
  %call70 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev1, i32 noundef -1) #6
  %call72 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end68.unprep_clk_gate_crit_edge

if.end68.unprep_clk_gate_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %unprep_clk_gate

if.end75:                                         ; preds = %if.end68
  %call76 = tail call ptr @video_device_alloc() #6
  %tobool77.not = icmp eq ptr %call76, null
  br i1 %tobool77.not, label %do.end81, label %if.end85

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %name83 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name83) #9
  br label %unreg_v4l2_dev

if.end85:                                         ; preds = %if.end75
  %10 = call ptr @memcpy(ptr %call76, ptr @g2d_videodev, i32 1352)
  %flags = getelementptr inbounds %struct.video_device, ptr %call76, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #6
  %lock = getelementptr inbounds %struct.video_device, ptr %call76, i32 0, i32 26
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mutex, ptr %lock, align 8
  %v4l2_dev88 = getelementptr inbounds %struct.video_device, ptr %call76, i32 0, i32 7
  %12 = ptrtoint ptr %v4l2_dev88 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %v4l2_dev88, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call76, i32 0, i32 4
  %13 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67141632, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call89 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @g2d_m2m_ops) #6
  %m2m_dev = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call89, ptr %m2m_dev, align 4
  %cmp.i211 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %do.end95, label %if.end103

do.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %name98 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name98) #9
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %rel_vdev

if.end103:                                        ; preds = %if.end85
  %19 = load i32, ptr @def_frame, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.g2d_frame, ptr @def_frame, i32 0, i32 6), align 4
  %depth = getelementptr inbounds %struct.g2d_fmt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %depth, align 4
  %mul = mul i32 %22, %19
  %shr = lshr i32 %mul, 3
  store i32 %shr, ptr getelementptr inbounds (%struct.g2d_frame, ptr @def_frame, i32 0, i32 7), align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call105 = tail call ptr @of_match_node(ptr noundef nonnull @exynos_g2d_match, ptr noundef %24) #6
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.end103.free_m2m_crit_edge, label %if.end108

if.end103.free_m2m_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_m2m

if.end108:                                        ; preds = %if.end103
  %data = getelementptr inbounds %struct.of_device_id, ptr %call105, i32 0, i32 3
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %variant, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call76, i32 0, i32 3
  %28 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fops.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i212 = tail call i32 @__video_register_device(ptr noundef nonnull %call76, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool110.not = icmp eq i32 %call.i212, 0
  br i1 %tobool110.not, label %if.end120, label %do.end114

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %name117 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name117) #9
  br label %free_m2m

if.end120:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i213 = getelementptr inbounds %struct.video_device, ptr %call76, i32 0, i32 5, i32 8
  %32 = ptrtoint ptr %driver_data.i.i213 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i213, align 4
  %vfd121 = getelementptr inbounds %struct.g2d_dev, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %vfd121 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call76, ptr %vfd121, align 4
  %name127 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %num = getelementptr inbounds %struct.video_device, ptr %call76, i32 0, i32 16
  %34 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num, align 4
  %conv = zext i16 %35 to i32
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name127, i32 noundef %conv) #9
  br label %cleanup

free_m2m:                                         ; preds = %do.end114, %if.end103.free_m2m_crit_edge
  %ret.0 = phi i32 [ %call.i212, %do.end114 ], [ -19, %if.end103.free_m2m_crit_edge ]
  %36 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %37) #6
  br label %rel_vdev

rel_vdev:                                         ; preds = %free_m2m, %do.end95
  %ret.1 = phi i32 [ %18, %do.end95 ], [ %ret.0, %free_m2m ]
  tail call void @video_device_release(ptr noundef nonnull %call76) #6
  br label %unreg_v4l2_dev

unreg_v4l2_dev:                                   ; preds = %rel_vdev, %do.end81
  %ret.2 = phi i32 [ %ret.1, %rel_vdev ], [ -12, %do.end81 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #6
  br label %unprep_clk_gate

unprep_clk_gate:                                  ; preds = %unreg_v4l2_dev, %if.end68.unprep_clk_gate_crit_edge, %do.end66, %do.end56
  %ret.3 = phi i32 [ %call.i210, %do.end66 ], [ %call72, %if.end68.unprep_clk_gate_crit_edge ], [ %ret.2, %unreg_v4l2_dev ], [ -6, %do.end56 ]
  %38 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gate, align 4
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %put_clk_gate

put_clk_gate:                                     ; preds = %unprep_clk_gate, %do.end48
  %ret.4 = phi i32 [ %call43, %do.end48 ], [ %ret.3, %unprep_clk_gate ]
  %40 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gate, align 4
  tail call void @clk_put(ptr noundef %41) #6
  br label %unprep_clk

unprep_clk:                                       ; preds = %put_clk_gate, %do.end39
  %ret.5 = phi i32 [ -6, %do.end39 ], [ %ret.4, %put_clk_gate ]
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %43) #6
  br label %put_clk

put_clk:                                          ; preds = %unprep_clk, %do.end29
  %ret.6 = phi i32 [ %call24, %do.end29 ], [ %ret.5, %unprep_clk ]
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %45) #6
  br label %cleanup

cleanup:                                          ; preds = %put_clk, %if.end120, %do.end20, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then9 ], [ -6, %do.end20 ], [ %ret.6, %put_clk ], [ 0, %if.end120 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name) #9
  %m2m_dev = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %3) #6
  %vfd = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfd, align 4
  tail call void @video_unregister_device(ptr noundef %5) #6
  tail call void @v4l2_device_unregister(ptr noundef %1) #6
  %gate = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gate, align 4
  tail call void @clk_unprepare(ptr noundef %7) #6
  %8 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gate, align 4
  tail call void @clk_put(ptr noundef %9) #6
  %clk = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %13) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_isr(i32 noundef %irq, ptr noundef %prv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr inbounds %struct.g2d_dev, ptr %prv, i32 0, i32 9
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 4
  tail call void @g2d_clear_int(ptr noundef %prv) #6
  %gate = getelementptr inbounds %struct.g2d_dev, ptr %prv, i32 0, i32 8
  %2 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !135

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-g2d/g2d.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #6, !srcloc !136
  unreachable

do.end7:                                          ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #6
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i72 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #6
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %do.body20, label %do.body29, !prof !135

do.body20:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-g2d/g2d.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #6, !srcloc !137
  unreachable

do.body29:                                        ; preds = %do.end7
  %cmp30 = icmp eq ptr %call.i72, null
  br i1 %cmp30, label %do.body38, label %do.end46, !prof !135

do.body38:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-g2d/g2d.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 557, 0\0A.popsection", ""() #6, !srcloc !138
  unreachable

do.end46:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i72, i32 0, i32 3
  %timecode47 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %timecode, ptr %timecode47, i32 16)
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  %timestamp49 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i72, i32 0, i32 5
  %11 = ptrtoint ptr %timestamp49 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %timestamp49, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i72, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, -458753
  store i32 %and, ptr %flags, align 8
  %flags50 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags50, align 8
  %and51 = and i32 %15, 458752
  %or = or i32 %and51, %and
  store i32 %or, ptr %flags, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i, i32 noundef 5) #6
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i72, i32 noundef 5) #6
  %m2m_dev = getelementptr inbounds %struct.g2d_dev, ptr %prv, i32 0, i32 1
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 4
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %17, ptr noundef %19) #6
  %20 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %curr, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_clear_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 484) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.g2d_ctx, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dev2, align 8
  %in = getelementptr inbounds %struct.g2d_ctx, ptr %call7.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %in, ptr @def_frame, i32 44)
  %out = getelementptr inbounds %struct.g2d_ctx, ptr %call7.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %out, ptr @def_frame, i32 44)
  %mutex = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %m2m_dev = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 4
  %call7 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %7, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #6
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call7 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call ptr @video_devdata(ptr noundef %file) #6
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call18) #6
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #6
  tail call fastcc void @g2d_setup_ctrls(ptr noundef nonnull %call7.i.i)
  %ctrl_handler = getelementptr inbounds %struct.g2d_ctx, ptr %call7.i.i, i32 0, i32 6
  %call22 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #6
  %ctrl_handler25 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ctrl_handler, ptr %ctrl_handler25, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %if.then5 ], [ %9, %if.then11 ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %ctrl_handler = getelementptr inbounds %struct.g2d_ctx, ptr %3, i32 0, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #6
  tail call void @v4l2_fh_del(ptr noundef %3) #6
  tail call void @v4l2_fh_exit(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %3) #6
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name) #9
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @g2d_qops, ptr %ops, align 4
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
  %dev = getelementptr inbounds %struct.g2d_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %mutex = getelementptr inbounds %struct.g2d_dev, ptr %8, i32 0, i32 3
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mutex, ptr %lock, align 4
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv6, align 4
  %ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @g2d_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops8, align 4
  %buf_struct_size9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %19 = ptrtoint ptr %buf_struct_size9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 744, ptr %buf_struct_size9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags10, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %mutex12 = getelementptr inbounds %struct.g2d_dev, ptr %22, i32 0, i32 3
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mutex12, ptr %lock13, align 4
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @g2d_setup_ctrls(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.g2d_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ctrl_handler = getelementptr inbounds %struct.g2d_ctx, ptr %ctx, i32 0, i32 6
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 3, ptr noundef nonnull @g2d_setup_ctrls._key, ptr noundef nonnull @.str.41) #6
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @g2d_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %ctrl_hflip = getelementptr inbounds %struct.g2d_ctx, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl_hflip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %ctrl_hflip, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @g2d_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %ctrl_vflip = getelementptr inbounds %struct.g2d_ctx, ptr %ctx, i32 0, i32 5
  %3 = ptrtoint ptr %ctrl_vflip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %ctrl_vflip, align 4
  %call7 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @g2d_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 3, i64 noundef -10, i8 noundef zeroext 0) #6
  %error = getelementptr inbounds %struct.g2d_ctx, ptr %ctx, i32 0, i32 6, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name) #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %ctrl_hflip) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @g2d_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  switch i32 %3, label %entry.if.then_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %in.i = getelementptr inbounds %struct.g2d_ctx, ptr %1, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %out.i = getelementptr inbounds %struct.g2d_ctx, ptr %1, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_frame.exit.if.then_crit_edge, label %if.end

get_frame.exit.if.then_crit_edge:                 ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %get_frame.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i13 = phi ptr [ %retval.0.i, %get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %5 = ptrtoint ptr %retval.0.i13 to i32
  br label %cleanup

if.end:                                           ; preds = %get_frame.exit
  %size = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 10
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sizes, align 4
  %9 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %nplanes, align 4
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbuffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %nbuffers, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %5, label %entry.if.then_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %in.i = getelementptr inbounds %struct.g2d_ctx, ptr %3, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %out.i = getelementptr inbounds %struct.g2d_ctx, ptr %3, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_frame.exit.if.then_crit_edge, label %if.end

get_frame.exit.if.then_crit_edge:                 ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %get_frame.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i12 = phi ptr [ %retval.0.i, %get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i12 to i32
  br label %cleanup

if.end:                                           ; preds = %get_frame.exit
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %size = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 10
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp1.i = icmp ult i32 %13, %11
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !139

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 1163, i32 noundef 9, ptr noundef null) #6
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %15, %if.then38.i ], [ %11, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g2d_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g2d_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev = getelementptr i8, ptr %1, i32 -100
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ctrl_lock = getelementptr inbounds %struct.g2d_dev, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #6
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 9963807, label %sw.bb
    i32 9963796, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp6 = icmp eq i32 %8, 3
  %rop = getelementptr i8, ptr %1, i32 184
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %rop to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 13107, ptr %rop, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rop to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 52428, ptr %rop, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_hflip = getelementptr i8, ptr %1, i32 -8
  %11 = ptrtoint ptr %ctrl_hflip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_hflip, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val10, align 4
  %ctrl_vflip = getelementptr i8, ptr %1, i32 -4
  %15 = ptrtoint ptr %ctrl_vflip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_vflip, align 4
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %17 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val11, align 4
  %shl = shl i32 %18, 1
  %or = or i32 %shl, %14
  %flip = getelementptr i8, ptr %1, i32 188
  %19 = ptrtoint ptr %flip to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %flip, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %if.else, %if.then, %entry.sw.epilog_crit_edge
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %ctrl_lock13 = getelementptr inbounds %struct.g2d_dev, ptr %21, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock13, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #6
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %0 = ptrtoint ptr %bus_info to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bus_info, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %prv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %5, label %if.end.if.then4_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %in.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %out.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_frame.exit.if.then4_crit_edge, label %if.end6

get_frame.exit.if.then4_crit_edge:                ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %get_frame.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i36 = phi ptr [ %retval.0.i, %get_frame.exit.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then4_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i36 to i32
  br label %cleanup

if.end6:                                          ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height9, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field, align 4
  %fmt11 = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 6
  %15 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt11, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat, align 4
  %20 = load i32, ptr %retval.0.i, align 4
  %21 = load ptr, ptr %fmt11, align 4
  %depth = getelementptr inbounds %struct.g2d_fmt, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %depth, align 4
  %mul = mul i32 %23, %20
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr, ptr %bytesperline, align 4
  %size = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 10
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat.i.i, align 4
  %4 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp1.i.i = icmp eq i32 %4, %3
  br i1 %cmp1.i.i, label %entry.if.end.i_crit_edge, label %for.cond.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.cond.i.i:                                     ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp1.1.i.i = icmp eq i32 %5, %3
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %6 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp1.2.i.i = icmp eq i32 %6, %3
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.end.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.end.i_crit_edge:                ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %7 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp1.3.i.i = icmp eq i32 %7, %3
  br i1 %cmp1.3.i.i, label %for.cond.2.i.i.if.end.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.end.i_crit_edge:                ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %8 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp1.4.i.i = icmp eq i32 %8, %3
  br i1 %cmp1.4.i.i, label %for.cond.3.i.i.if.end.i_crit_edge, label %for.cond.3.i.i.cleanup_crit_edge

for.cond.3.i.i.cleanup_crit_edge:                 ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3.i.i.if.end.i_crit_edge:                ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.cond.3.i.i.if.end.i_crit_edge, %for.cond.2.i.i.if.end.i_crit_edge, %for.cond.1.i.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.i.if.end.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.i.if.end.i_crit_edge ], [ @formats, %entry.if.end.i_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.i.if.end.i_crit_edge ]
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field2.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field2.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %10, label %if.end.i.cleanup_crit_edge [
    i32 0, label %if.then3.i
    i32 1, label %if.end.i.if.end7.i_crit_edge
  ]

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %field2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %field2.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %13 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %14)
  %cmp9.i = icmp ugt i32 %14, 8000
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8000, ptr %fmt1.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end13.i_crit_edge
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %17)
  %cmp15.i = icmp ugt i32 %17, 8000
  br i1 %cmp15.i, label %if.then16.i, label %if.end13.i.if.end19.i_crit_edge

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8000, ptr %height.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end19.i_crit_edge
  %19 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fmt1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22.i = icmp eq i32 %20, 0
  br i1 %cmp22.i, label %if.then23.i, label %if.end19.i.if.end26.i_crit_edge

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %fmt1.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end26.i_crit_edge
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp29.i = icmp eq i32 %23, 0
  br i1 %cmp29.i, label %if.then30.i, label %if.end26.i.if.end_crit_edge

if.end26.i.if.end_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %height.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then30.i, %if.end26.i.if.end_crit_edge
  %25 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt1.i, align 4
  %depth.i = getelementptr inbounds %struct.g2d_fmt, ptr %retval.0.i.ph.i, i32 0, i32 1
  %27 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %28, %26
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %30 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height.i, align 4
  %mul41.i = mul i32 %31, %shr.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul41.i, ptr %sizeimage.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %33 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m2m_ctx, align 4
  %35 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %34, i32 noundef %36) #6
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %37 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.not = icmp eq i32 %38, 0
  br i1 %cmp.i.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %40) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %41 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %42, label %if.end7.if.then11_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %in.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %out.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i63 = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i64 = icmp ugt ptr %retval.0.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %get_frame.exit.if.then11_crit_edge, label %if.end13

get_frame.exit.if.then11_crit_edge:               ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %get_frame.exit.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %retval.0.i6370 = phi ptr [ %retval.0.i63, %get_frame.exit.if.then11_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.if.then11_crit_edge ]
  %44 = ptrtoint ptr %retval.0.i6370 to i32
  br label %cleanup

if.end13:                                         ; preds = %get_frame.exit
  %45 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixelformat.i.i, align 4
  %47 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %46)
  %cmp1.i = icmp eq i32 %47, %46
  br i1 %cmp1.i, label %if.end13.if.end17_crit_edge, label %for.cond.i

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.cond.i:                                       ; preds = %if.end13
  %48 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp1.1.i = icmp eq i32 %48, %46
  br i1 %cmp1.1.i, label %for.cond.i.if.end17_crit_edge, label %for.cond.1.i

for.cond.i.if.end17_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.cond.1.i:                                     ; preds = %for.cond.i
  %49 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %46)
  %cmp1.2.i = icmp eq i32 %49, %46
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end17_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end17_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %50 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %46)
  %cmp1.3.i = icmp eq i32 %50, %46
  br i1 %cmp1.3.i, label %for.cond.2.i.if.end17_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end17_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %51 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %46)
  %cmp1.4.i = icmp eq i32 %51, %46
  br i1 %cmp1.4.i, label %for.cond.3.i.if.end17_crit_edge, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3.i.if.end17_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %for.cond.3.i.if.end17_crit_edge, %for.cond.2.i.if.end17_crit_edge, %for.cond.1.i.if.end17_crit_edge, %for.cond.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %retval.0.i65.ph = phi ptr [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.if.end17_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.if.end17_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.if.end17_crit_edge ], [ @formats, %if.end13.if.end17_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.if.end17_crit_edge ]
  %52 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fmt1.i, align 4
  %54 = ptrtoint ptr %retval.0.i63 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %retval.0.i63, align 4
  %55 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height.i, align 4
  %height21 = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 1
  %57 = ptrtoint ptr %height21 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %height21, align 4
  %58 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sizeimage.i, align 4
  %size = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 10
  %60 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %size, align 4
  %o_width = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 4
  %61 = ptrtoint ptr %o_width to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %o_width, align 4
  %o_height = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 5
  %62 = ptrtoint ptr %o_height to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %o_height, align 4
  %c_width = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 2
  %63 = ptrtoint ptr %c_width to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %53, ptr %c_width, align 4
  %c_height = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 3
  %64 = ptrtoint ptr %c_height to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %56, ptr %c_height, align 4
  %right = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 9
  %65 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %53, ptr %right, align 4
  %bottom = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 8
  %66 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %56, ptr %bottom, align 4
  %fmt27 = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 6
  %67 = ptrtoint ptr %fmt27 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.0.i65.ph, ptr %fmt27, align 4
  %68 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bytesperline.i, align 4
  %stride = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i63, i32 0, i32 7
  %70 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %stride, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.cond.3.i.cleanup_crit_edge, %if.then11, %do.end, %if.end.i.cleanup_crit_edge, %for.cond.3.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ %44, %if.then11 ], [ 0, %if.end17 ], [ -22, %for.cond.3.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %for.cond.3.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %prv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp1.i = icmp eq i32 %2, %1
  br i1 %cmp1.i, label %entry.if.end_crit_edge, label %for.cond.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.i:                                       ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp1.1.i = icmp eq i32 %3, %1
  br i1 %cmp1.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.1.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %4 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp1.2.i = icmp eq i32 %4, %1
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %5 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp1.3.i = icmp eq i32 %5, %1
  br i1 %cmp1.3.i, label %for.cond.2.i.if.end_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %6 = load i32, ptr getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1.4.i = icmp eq i32 %6, %1
  br i1 %cmp1.4.i, label %for.cond.3.i.if.end_crit_edge, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3.i.if.end_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.cond.3.i.if.end_crit_edge, %for.cond.2.i.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.if.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.if.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.if.end_crit_edge ], [ @formats, %entry.if.end_crit_edge ], [ getelementptr inbounds ([5 x %struct.g2d_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.if.end_crit_edge ]
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %field2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %field2, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then3
    i32 1, label %if.end.if.end7_crit_edge
  ]

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %field2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %field2, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %11 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %12)
  %cmp9 = icmp ugt i32 %12, 8000
  br i1 %cmp9, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8000, ptr %fmt1, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %15)
  %cmp15 = icmp ugt i32 %15, 8000
  br i1 %cmp15, label %if.then16, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8000, ptr %height, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %17 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22 = icmp eq i32 %18, 0
  br i1 %cmp22, label %if.then23, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %fmt1, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp29 = icmp eq i32 %21, 0
  br i1 %cmp29, label %if.then30, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %height, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %23 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt1, align 4
  %depth = getelementptr inbounds %struct.g2d_fmt, ptr %retval.0.i.ph, i32 0, i32 1
  %25 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %depth, align 4
  %mul = mul i32 %26, %24
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr, ptr %bytesperline, align 4
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %mul41 = mul i32 %29, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul41, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.cond.3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_selection(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef %s) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %1, label %entry.if.then_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %in.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %out.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_frame.exit.if.then_crit_edge, label %if.end

get_frame.exit.if.then_crit_edge:                 ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %get_frame.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i51 = phi ptr [ %retval.0.i, %get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i51 to i32
  br label %cleanup

if.end:                                           ; preds = %get_frame.exit
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge52
    i32 2, label %if.end.sw.bb_crit_edge53
    i32 256, label %if.end.sw.bb6_crit_edge
    i32 257, label %if.end.sw.bb6_crit_edge54
    i32 258, label %if.end.sw.bb6_crit_edge55
  ]

if.end.sw.bb6_crit_edge55:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.end.sw.bb6_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.end.sw.bb_crit_edge53:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge52:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge52, %if.end.sw.bb_crit_edge53
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge54, %if.end.sw.bb6_crit_edge55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp8.not = icmp eq i32 %1, 1
  br i1 %cmp8.not, label %sw.bb6.sw.epilog_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.bb12_crit_edge
    i32 256, label %sw.epilog.sw.bb12_crit_edge56
    i32 1, label %sw.epilog.sw.bb16_crit_edge
    i32 2, label %sw.epilog.sw.bb16_crit_edge57
    i32 257, label %sw.epilog.sw.bb16_crit_edge58
    i32 258, label %sw.epilog.sw.bb16_crit_edge59
  ]

sw.epilog.sw.bb16_crit_edge59:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

sw.epilog.sw.bb16_crit_edge58:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

sw.epilog.sw.bb16_crit_edge57:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

sw.epilog.sw.bb16_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16

sw.epilog.sw.bb12_crit_edge56:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog.sw.bb12_crit_edge, %sw.epilog.sw.bb12_crit_edge56
  %o_height = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 5
  %8 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %o_height, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %r, align 4
  %o_width = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 4
  %11 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %o_width, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %top, align 4
  %c_width = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 2
  %14 = ptrtoint ptr %c_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_width, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %width, align 4
  %c_height = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %c_height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_height, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %sw.epilog.sw.bb16_crit_edge, %sw.epilog.sw.bb16_crit_edge57, %sw.epilog.sw.bb16_crit_edge58, %sw.epilog.sw.bb16_crit_edge59
  %r17 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %20 = ptrtoint ptr %r17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %r17, align 4
  %top20 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %top20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %top20, align 4
  %22 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retval.0.i, align 4
  %width23 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %width23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %width23, align 4
  %height24 = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %height24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height24, align 4
  %height26 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %height26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height26, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb12, %sw.epilog.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb16 ], [ 0, %sw.bb12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_selection(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %in.i.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2
  br label %get_frame.exit.i

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %out.i.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3
  br label %get_frame.exit.i

get_frame.exit.i:                                 ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %out.i.i, %sw.bb1.i.i ], [ %in.i.i, %sw.bb.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %vidioc_try_selection.exit, label %if.end.i

if.end.i:                                         ; preds = %get_frame.exit.i
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %3, label %if.end.i.if.end17.i_crit_edge [
    i32 1, label %if.then5.i
    i32 2, label %if.then11.i
  ]

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then5.i:                                       ; preds = %if.end.i
  %target.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 256
  br i1 %cmp6.not.i, label %if.then5.i.if.end17.i_crit_edge, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.i.if.end17.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end.i
  %target12.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %8 = ptrtoint ptr %target12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13.not.i = icmp eq i32 %9, 0
  br i1 %cmp13.not.i, label %if.then11.i.if.end17.i_crit_edge, label %if.then11.i.cleanup_crit_edge

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11.i.if.end17.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i.if.end17.i_crit_edge, %if.then5.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %top.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18.i = icmp slt i32 %11, 0
  br i1 %cmp18.i, label %if.end17.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end17.i.do.end.i_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end17.i
  %r.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp20.i = icmp slt i32 %13, 0
  br i1 %cmp20.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end17.i.do.end.i_crit_edge
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name.i) #9
  br label %cleanup

vidioc_try_selection.exit:                        ; preds = %get_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %retval.0.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %15 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %16, label %if.end.if.then3_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %in.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2
  br label %get_frame.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %out.i = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i34 = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_frame.exit.if.then3_crit_edge, label %if.end5

get_frame.exit.if.then3_crit_edge:                ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %get_frame.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i3442 = phi ptr [ %retval.0.i34, %get_frame.exit.if.then3_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then3_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i3442 to i32
  br label %cleanup

if.end5:                                          ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #8
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 4
  %c_width = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i34, i32 0, i32 2
  %21 = ptrtoint ptr %c_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %c_width, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %c_height = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i34, i32 0, i32 3
  %24 = ptrtoint ptr %c_height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %c_height, align 4
  %25 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r, align 4
  %o_width = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i34, i32 0, i32 4
  %27 = ptrtoint ptr %o_width to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %o_width, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top, align 4
  %o_height = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i34, i32 0, i32 5
  %30 = ptrtoint ptr %o_height to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %o_height, align 4
  %add = add i32 %29, %23
  %bottom = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i34, i32 0, i32 8
  %31 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %bottom, align 4
  %add13 = add i32 %26, %20
  %right = getelementptr inbounds %struct.g2d_frame, ptr %retval.0.i34, i32 0, i32 9
  %32 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add13, ptr %right, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %vidioc_try_selection.exit, %do.end.i, %if.then11.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then3 ], [ 0, %if.end5 ], [ %14, %vidioc_try_selection.exit ], [ -22, %do.end.i ], [ -22, %if.then5.i.cleanup_crit_edge ], [ -22, %if.then11.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %prv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %curr = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %prv, ptr %curr, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #6
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 7
  %call.i60 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #6
  %gate = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gate, align 4
  %call5 = tail call i32 @clk_enable(ptr noundef %8) #6
  tail call void @g2d_reset(ptr noundef %1) #6
  %ctrl_lock = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #6
  %in = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2
  tail call void @g2d_set_src_size(ptr noundef %1, ptr noundef %in) #6
  %call.i61 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #6
  %9 = ptrtoint ptr %call.i61 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i61, align 4
  tail call void @g2d_set_src_addr(ptr noundef %1, i32 noundef %10) #6
  %out = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3
  tail call void @g2d_set_dst_size(ptr noundef %1, ptr noundef %out) #6
  %call.i62 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i60, i32 noundef 0) #6
  %11 = ptrtoint ptr %call.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i62, align 4
  tail call void @g2d_set_dst_addr(ptr noundef %1, i32 noundef %12) #6
  %rop = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 7
  %13 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rop, align 4
  tail call void @g2d_set_rop4(ptr noundef %1, i32 noundef %14) #6
  %flip = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 8
  %15 = ptrtoint ptr %flip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flip, align 4
  tail call void @g2d_set_flip(ptr noundef %1, i32 noundef %16) #6
  %c_width = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %c_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_width, align 4
  %c_width16 = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %c_width16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_width16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp17.not = icmp eq i32 %18, %20
  br i1 %cmp17.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %c_height = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %c_height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %c_height, align 4
  %c_height21 = getelementptr inbounds %struct.g2d_ctx, ptr %prv, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %c_height21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c_height21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp22.not = icmp eq i32 %22, %24
  br i1 %cmp22.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %variant = getelementptr inbounds %struct.g2d_dev, ptr %1, i32 0, i32 10
  %25 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %variant, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp25 = icmp eq i16 %28, 3
  br i1 %cmp25, label %if.then.if.end30_crit_edge, label %if.else

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @g2d_set_v41_stretch(ptr noundef %1, ptr noundef %in, ptr noundef %out) #6
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then.if.end30_crit_edge, %lor.lhs.false.if.end30_crit_edge
  %cmd.0 = phi i32 [ 0, %if.else ], [ 0, %lor.lhs.false.if.end30_crit_edge ], [ 16, %if.then.if.end30_crit_edge ]
  tail call void @g2d_set_cmd(ptr noundef %1, i32 noundef %cmd.0) #6
  tail call void @g2d_start(ptr noundef %1) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock, i32 noundef %call8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_src_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_src_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_dst_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_dst_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_rop4(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_flip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_v41_stretch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_set_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g2d_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !81, !82, !84, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !115, !117, !118, !119, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_s5p_g2d__298_792_g2d_pdrv_init6, !1, !"__initcall__kmod_s5p_g2d__298_792_g2d_pdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 792, i32 1}
!2 = !{ptr @__exitcall_g2d_pdrv_exit, !1, !"__exitcall_g2d_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 794, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 795, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 796, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 787, i32 11}
!12 = !{ptr @g2d_pdrv, !13, !"g2d_pdrv", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 783, i32 31}
!14 = !{ptr @g2d_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 634, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @g2d_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 635, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 642, i32 33}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 644, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @g2d_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @g2d_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 650, i32 3}
!32 = !{ptr @g2d_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @g2d_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 654, i32 34}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 656, i32 3}
!38 = !{ptr @g2d_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @g2d_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 663, i32 3}
!42 = !{ptr @g2d_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @g2d_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 669, i32 3}
!46 = !{ptr @g2d_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @g2d_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 679, i32 3}
!50 = !{ptr @g2d_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @g2d_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 690, i32 3}
!54 = !{ptr @g2d_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @g2d_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 703, i32 3}
!58 = !{ptr @g2d_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @g2d_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 719, i32 3}
!62 = !{ptr @g2d_probe._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @g2d_probe._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 724, i32 2}
!66 = !{ptr @g2d_probe._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @g2d_probe._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @g2d_videodev, !69, !"g2d_videodev", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 607, i32 34}
!70 = !{ptr @g2d_fops, !71, !"g2d_fops", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 573, i32 42}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 270, i32 2}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @g2d_open._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @g2d_open._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @g2d_qops, !78, !"g2d_qops", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 132, i32 29}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @g2d_setup_ctrls._key, !83, !"_key", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 205, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 223, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @g2d_setup_ctrls._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @g2d_setup_ctrls._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @g2d_ctrl_ops, !91, !"g2d_ctrl_ops", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 197, i32 35}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 286, i32 2}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @g2d_release._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @g2d_release._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @g2d_ioctl_ops, !98, !"g2d_ioctl_ops", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 582, i32 36}
!99 = !{ptr @formats, !100, !"formats", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 30, i32 23}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 376, i32 3}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @vidioc_s_fmt._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @vidioc_s_fmt._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 470, i32 3}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vidioc_try_selection._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @vidioc_try_selection._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @g2d_m2m_ops, !112, !"g2d_m2m_ops", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 616, i32 34}
!113 = !{ptr @def_frame, !114, !"def_frame", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 59, i32 25}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 751, i32 2}
!117 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @g2d_remove._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @g2d_remove._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @exynos_g2d_match, !121, !"exynos_g2d_match", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 771, i32 34}
!122 = !{ptr @g2d_drvdata_v3x, !123, !"g2d_drvdata_v3x", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 763, i32 27}
!124 = !{ptr @g2d_drvdata_v4x, !125, !"g2d_drvdata_v4x", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/s5p-g2d/g2d.c", i32 767, i32 27}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 2156495589, i64 2156496090, i64 2156495626, i64 2156495682, i64 2156495716, i64 2156495740, i64 2156495781, i64 2156495802, i64 2156495830, i64 2156495864}
!137 = !{i64 2156497244, i64 2156497745, i64 2156497281, i64 2156497337, i64 2156497371, i64 2156497395, i64 2156497436, i64 2156497457, i64 2156497485, i64 2156497519}
!138 = !{i64 2156498899, i64 2156499400, i64 2156498936, i64 2156498992, i64 2156499026, i64 2156499050, i64 2156499091, i64 2156499112, i64 2156499140, i64 2156499174}
!139 = !{!"branch_weights", i32 2000, i32 1}
