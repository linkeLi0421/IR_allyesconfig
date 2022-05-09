; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-jpeg/jpeg-core.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-jpeg/jpeg-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_jpeg_variant = type { i32, i32, i8, ptr, ptr, [4 x ptr], i32 }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.s5p_jpeg_fmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s5p_jpeg = type { %struct.mutex, %struct.spinlock, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, i32, [4 x ptr], ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.s5p_jpeg_ctx = type { ptr, i32, i16, i16, i16, %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data, i32, %struct.v4l2_rect, %struct.v4l2_fh, i8, i8, %struct.v4l2_ctrl_handler, i32 }
%struct.s5p_jpeg_q_data = type { ptr, i32, i32, i32, %struct.s5p_jpeg_marker, %struct.s5p_jpeg_marker, i32, i32, i32 }
%struct.s5p_jpeg_marker = type { [4 x i32], [4 x i32], i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
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
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.s5p_jpeg_addr = type { i32, i32, i32 }

@__initcall__kmod_s5p_jpeg__317_3177_s5p_jpeg_driver_init6 = internal global ptr @s5p_jpeg_driver_init, section ".initcall6.init", align 4
@s5p_jpeg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5p_jpeg_probe, ptr @s5p_jpeg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_jpeg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s5p_jpeg_driver_exit = internal global ptr @s5p_jpeg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author318 = internal constant [64 x i8] c"s5p_jpeg.author=Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [60 x i8] c"s5p_jpeg.author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [47 x i8] c"s5p_jpeg.description=Samsung JPEG codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [55 x i8] c"s5p_jpeg.file=drivers/media/platform/s5p-jpeg/s5p-jpeg\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [21 x i8] c"s5p_jpeg.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s5p-jpeg\00", [23 x i8] zeroinitializer }, align 32
@samsung_jpeg_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_jpeg_drvdata }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@s5p_jpeg_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_runtime_suspend, ptr @s5p_jpeg_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&jpeg->lock\00", [20 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&jpeg->slock\00", [19 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2876, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot find IRQ\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5p_jpeg_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/s5p-jpeg/jpeg-core.c\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr = internal global ptr @s5p_jpeg_probe._entry, section ".printk_index", align 4
@s5p_jpeg_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 2883, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot claim IRQ %d\0A\00", [43 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.11 = internal global ptr @s5p_jpeg_probe._entry.9, section ".printk_index", align 4
@s5p_jpeg_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 2893, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.14 = internal global ptr @s5p_jpeg_probe._entry.12, section ".printk_index", align 4
@s5p_jpeg_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 2901, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.17 = internal global ptr @s5p_jpeg_probe._entry.15, section ".printk_index", align 4
@s5p_jpeg_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 2908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.20 = internal global ptr @s5p_jpeg_probe._entry.18, section ".printk_index", align 4
@s5p_jpeg_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 2918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.23 = internal global ptr @s5p_jpeg_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-enc\00", [25 x i8] zeroinitializer }, align 32
@s5p_jpeg_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @s5p_jpeg_open, ptr @s5p_jpeg_release }, [60 x i8] zeroinitializer }, align 32
@s5p_jpeg_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @s5p_jpeg_querycap, ptr @s5p_jpeg_enum_fmt_vid_cap, ptr null, ptr @s5p_jpeg_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_g_fmt, ptr null, ptr @s5p_jpeg_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_s_fmt_vid_cap, ptr null, ptr @s5p_jpeg_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_try_fmt_vid_cap, ptr null, ptr @s5p_jpeg_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr null, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_g_selection, ptr @s5p_jpeg_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 2935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.27 = internal global ptr @s5p_jpeg_probe._entry.25, section ".printk_index", align 4
@s5p_jpeg_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 2943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: encoder device registered as /dev/video%d\0A\00", [47 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.30 = internal global ptr @s5p_jpeg_probe._entry.28, section ".printk_index", align 4
@s5p_jpeg_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 2948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.32 = internal global ptr @s5p_jpeg_probe._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-dec\00", [25 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 2965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.35 = internal global ptr @s5p_jpeg_probe._entry.34, section ".printk_index", align 4
@s5p_jpeg_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.5, ptr @.str.6, i32 2973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: decoder device registered as /dev/video%d\0A\00", [47 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.38 = internal global ptr @s5p_jpeg_probe._entry.36, section ".printk_index", align 4
@s5p_jpeg_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.5, ptr @.str.6, i32 2980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Samsung S5P JPEG codec\0A\00", [34 x i8] zeroinitializer }, align 32
@s5p_jpeg_probe._entry_ptr.41 = internal global ptr @s5p_jpeg_probe._entry.39, section ".printk_index", align 4
@s5p_jpeg_drvdata = internal global { %struct.s5p_jpeg_variant, [56 x i8] } { %struct.s5p_jpeg_variant { i32 0, i32 16, i8 0, ptr @s5p_jpeg_m2m_ops, ptr @s5p_jpeg_irq, [4 x ptr] [ptr @.str.42, ptr null, ptr null, ptr null], i32 1 }, [56 x i8] zeroinitializer }, align 32
@s5p_jpeg_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @s5p_jpeg_device_run, ptr @s5p_jpeg_job_ready, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"jpeg\00", [27 x i8] zeroinitializer }, align 32
@qtbl_luminance = internal constant { [4 x [64 x i8]], [64 x i8] } { [4 x [64 x i8]] [[64 x i8] c"\14\10\19'2.>D\10\12\17&&5AD\19\17\1F&5ADD'&&5ADDD2&5ADDDD.5ADDDDD>ADDDDDDDDDDDDDD", [64 x i8] c"\10\0B\0B\10\17\1B\1F\1E\0B\0C\0C\0F\14\17\17\1E\0B\0C\0D\10\17\1A#/\10\0F\10\17\1A%/@\17\14\17\1A'3@@\1B\17\1A%3@@@\1F\17#/@@@@\1E\1E/@@@@@", [64 x i8] c"\0C\08\08\0C\11\15\18\17\08\09\09\0B\0F\13\12\17\08\09\0A\0C\13\14\1B$\0C\0B\0C\15\14\1C$5\11\0F\13\14\1E'3;\15\13\14\1C'3;;\18\12\1B$3;;;\17\17$5;;;;", [64 x i8] c"\08\06\06\08\0C\0E\10\11\06\06\06\08\0A\0D\0C\0F\06\06\07\08\0D\0E\12\18\08\08\08\0E\0D\13\18#\0C\0A\0D\0D\14\1A\22'\0E\0D\0E\13\1A\22''\10\0C\12\18\22'''\11\0F\18#''''"], [64 x i8] zeroinitializer }, align 32
@qtbl_chrominance = internal constant { [4 x [64 x i8]], [64 x i8] } { [4 x [64 x i8]] [[64 x i8] c"\15\19 &6DDD\19\1C\18&6DDD \18 +BDDD&&+5DDDD66BDDDDDDDDDDDDDDDDDDDDDDDDDDDDD", [64 x i8] c"\11\0F\11\15\14\1A&0\0F\13\12\11\14\1A#+\11\12\14\16\1A\1E.5\15\11\16\1C\1E'5@\14\14\1A\1E'0@@\1A\1A\1E'0?@@&#.5@@@@0+5@@@@@", [64 x i8] c"\0D\0B\0D\10\14\14\1D%\0B\0E\0E\0E\10\14\1A \0D\0E\0F\11\14\17#(\10\0E\11\15\17\1E(2\14\10\14\17\1E%2;\14\14\17\1E%0;;\1D\1A#(2;;;% (2;;;;", [64 x i8] c"\09\08\09\0B\0E\11\13\18\08\0A\09\0B\0E\0D\11\16\09\09\0D\0E\0D\0F\17\1A\0B\0B\0E\0E\0F\14\1A!\0E\0E\0D\0F\14\18!'\11\0D\0F\14\18 ''\13\11\17\1A!'''\18\16\1A!''''"], [64 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sjpeg_formats = internal global { [26 x %struct.s5p_jpeg_fmt], [192 x i8] } { [26 x %struct.s5p_jpeg_fmt] [%struct.s5p_jpeg_fmt { i32 1195724874, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 121 }, %struct.s5p_jpeg_fmt { i32 1448695129, i32 16, i32 1, i32 0, i32 4, i32 3, i32 1, i32 278 }, %struct.s5p_jpeg_fmt { i32 1448695129, i32 16, i32 1, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 1448695129, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1431918169, i32 16, i32 1, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 1431918169, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1498831189, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1498765654, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1346520914, i32 16, i32 1, i32 0, i32 0, i32 0, i32 0, i32 198 }, %struct.s5p_jpeg_fmt { i32 1346520914, i32 16, i32 1, i32 0, i32 2, i32 0, i32 0, i32 166 }, %struct.s5p_jpeg_fmt { i32 1380075346, i32 16, i32 1, i32 0, i32 2, i32 0, i32 0, i32 166 }, %struct.s5p_jpeg_fmt { i32 1346520914, i32 16, i32 1, i32 0, i32 0, i32 0, i32 0, i32 146 }, %struct.s5p_jpeg_fmt { i32 876758866, i32 32, i32 1, i32 0, i32 0, i32 0, i32 0, i32 198 }, %struct.s5p_jpeg_fmt { i32 876758866, i32 32, i32 1, i32 0, i32 2, i32 0, i32 0, i32 166 }, %struct.s5p_jpeg_fmt { i32 875714126, i32 24, i32 2, i32 0, i32 0, i32 0, i32 0, i32 326 }, %struct.s5p_jpeg_fmt { i32 842290766, i32 24, i32 2, i32 0, i32 0, i32 0, i32 0, i32 326 }, %struct.s5p_jpeg_fmt { i32 825644622, i32 16, i32 2, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 909203022, i32 16, i32 2, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 842094158, i32 12, i32 2, i32 0, i32 1, i32 1, i32 2, i32 326 }, %struct.s5p_jpeg_fmt { i32 842094158, i32 12, i32 2, i32 0, i32 3, i32 3, i32 2, i32 294 }, %struct.s5p_jpeg_fmt { i32 842094158, i32 12, i32 2, i32 0, i32 4, i32 4, i32 2, i32 278 }, %struct.s5p_jpeg_fmt { i32 825382478, i32 12, i32 2, i32 0, i32 3, i32 3, i32 2, i32 294 }, %struct.s5p_jpeg_fmt { i32 825382478, i32 12, i32 2, i32 0, i32 1, i32 1, i32 2, i32 358 }, %struct.s5p_jpeg_fmt { i32 842093913, i32 12, i32 3, i32 0, i32 1, i32 1, i32 2, i32 326 }, %struct.s5p_jpeg_fmt { i32 842093913, i32 12, i32 3, i32 0, i32 4, i32 4, i32 2, i32 294 }, %struct.s5p_jpeg_fmt { i32 1497715271, i32 8, i32 1, i32 0, i32 0, i32 0, i32 5, i32 326 }], [192 x i8] zeroinitializer }, align 32
@s5p_jpeg_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @s5p_jpeg_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @s5p_jpeg_buf_prepare, ptr null, ptr null, ptr @s5p_jpeg_start_streaming, ptr @s5p_jpeg_stop_streaming, ptr @s5p_jpeg_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@s5p_jpeg_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.6, i32 2487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s data will not fit into plane (%lu < %lu)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_jpeg_buf_prepare\00", [43 x i8] zeroinitializer }, align 32
@s5p_jpeg_buf_prepare._entry_ptr = internal global ptr @s5p_jpeg_buf_prepare._entry, section ".printk_index", align 4
@s5p_jpeg_buf_queue.ev_src_ch = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@s5p_jpeg_controls_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"jpeg_core:1954:(&ctx->ctrl_handler)->_lock\00", [53 x i8] zeroinitializer }, align 32
@s5p_jpeg_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @s5p_jpeg_g_volatile_ctrl, ptr @s5p_jpeg_try_ctrl, ptr @s5p_jpeg_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@exynos3250_decoded_subsampling = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 5, i32 -1, i32 -1, i32 3], [36 x i8] zeroinitializer }, align 32
@exynos4x12_decoded_subsampling = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p-jpeg encoder\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p-jpeg decoder\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@s5p_jpeg_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 1601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5p_jpeg_s_fmt\00", [17 x i8] zeroinitializer }, align 32
@s5p_jpeg_s_fmt._entry_ptr = internal global ptr @s5p_jpeg_s_fmt._entry, section ".printk_index", align 4
@s5p_jpeg_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Fourcc format (0x%08x) invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5p_jpeg_try_fmt_vid_cap\00", [39 x i8] zeroinitializer }, align 32
@s5p_jpeg_try_fmt_vid_cap._entry_ptr = internal global ptr @s5p_jpeg_try_fmt_vid_cap._entry, section ".printk_index", align 4
@subs420_fourcc_dwngrd_schema = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 842094158, i32 825382478, i32 842094158, i32 825382478, i32 842094158, i32 825382478, i32 1497715271, i32 1497715271, i32 1497715271, i32 1497715271], [56 x i8] zeroinitializer }, align 32
@subs422_fourcc_dwngrd_schema = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 909203022, i32 825644622], [24 x i8] zeroinitializer }, align 32
@s5p_jpeg_try_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.54, ptr @.str.6, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5p_jpeg_try_fmt_vid_out\00", [39 x i8] zeroinitializer }, align 32
@s5p_jpeg_try_fmt_vid_out._entry_ptr = internal global ptr @s5p_jpeg_try_fmt_vid_out._entry, section ".printk_index", align 4
@exynos3250_jpeg_drvdata = internal global { %struct.s5p_jpeg_variant, [56 x i8] } { %struct.s5p_jpeg_variant { i32 1, i32 32, i8 -128, ptr @exynos3250_jpeg_m2m_ops, ptr @exynos3250_jpeg_irq, [4 x ptr] [ptr @.str.42, ptr @.str.55, ptr null, ptr null], i32 2 }, [56 x i8] zeroinitializer }, align 32
@exynos4_jpeg_drvdata = internal global { %struct.s5p_jpeg_variant, [56 x i8] } { %struct.s5p_jpeg_variant { i32 2, i32 64, i8 96, ptr @exynos4_jpeg_m2m_ops, ptr @exynos4_jpeg_irq, [4 x ptr] [ptr @.str.42, ptr null, ptr null, ptr null], i32 1 }, [56 x i8] zeroinitializer }, align 32
@exynos5420_jpeg_drvdata = internal global { %struct.s5p_jpeg_variant, [56 x i8] } { %struct.s5p_jpeg_variant { i32 3, i32 32, i8 -64, ptr @exynos3250_jpeg_m2m_ops, ptr @exynos3250_jpeg_irq, [4 x ptr] [ptr @.str.42, ptr null, ptr null, ptr null], i32 1 }, [56 x i8] zeroinitializer }, align 32
@exynos5433_jpeg_drvdata = internal global { %struct.s5p_jpeg_variant, [56 x i8] } { %struct.s5p_jpeg_variant { i32 4, i32 64, i8 96, ptr @exynos4_jpeg_m2m_ops, ptr @exynos4_jpeg_irq, [4 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.55], i32 4 }, [56 x i8] zeroinitializer }, align 32
@exynos3250_jpeg_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @exynos3250_jpeg_device_run, ptr @s5p_jpeg_job_ready, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@hdctbl0 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@hactbl0 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", [16 x i8] zeroinitializer }, align 32
@hactblg0 = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", [62 x i8] zeroinitializer }, align 32
@exynos3250_jpeg_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 2783, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Interrupt timeout occurred.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exynos3250_jpeg_irq\00", [44 x i8] zeroinitializer }, align 32
@exynos3250_jpeg_irq._entry_ptr = internal global ptr @exynos3250_jpeg_irq._entry, section ".printk_index", align 4
@exynos3250_jpeg_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.6, i32 2794, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Syntax error or unrecoverable error occurred.\0A\00", [49 x i8] zeroinitializer }, align 32
@exynos3250_jpeg_irq._entry_ptr.60 = internal global ptr @exynos3250_jpeg_irq._entry.58, section ".printk_index", align 4
@exynos4_jpeg_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @exynos4_jpeg_device_run, ptr @s5p_jpeg_job_ready, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_xiu\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [19 x i64] [i64 17, i64 8, i64 0, i64 1, i64 192, i64 196, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 255]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 17, i64 33, i64 34, i64 51, i64 65]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 10291457, i64 10291458, i64 10291459]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [12 x i64] [i64 10, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 842290766, i64 875714126, i64 909203022, i64 1431918169, i64 1448695129, i64 1497715271]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 825382478, i64 842093913, i64 842094158]
@__sancov_gen_cov_switch_values.75 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258, i64 259]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 825382478, i64 842093913, i64 842094158]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [9 x i64] [i64 7, i64 32, i64 825382478, i64 842093913, i64 842094158, i64 842290766, i64 875714126, i64 876758866, i64 1346520914]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 876758866, i64 1346520914, i64 1380075346]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"s5p_jpeg_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3167, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3172, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"samsung_jpeg_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3126, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"s5p_jpeg_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3067, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2864, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2865, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2876, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2883, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2892, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2901, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2908, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2918, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2923, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"s5p_jpeg_fops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1025, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"s5p_jpeg_ioctl_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1993, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2935, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2941, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2948, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2953, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2965, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2971, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2980, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"s5p_jpeg_drvdata\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3074, i32 32 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"s5p_jpeg_m2m_ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2428, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3079, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"qtbl_luminance\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 347, i32 28 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"qtbl_chrominance\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 390, i32 28 }
@___asan_gen_.216 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1163, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant [14 x i8] c"sjpeg_formats\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 37, i32 28 }
@___asan_gen_.221 = private unnamed_addr constant [14 x i8] c"s5p_jpeg_qops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2591, i32 29 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2485, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [10 x i8] c"ev_src_ch\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2527, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1954, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [18 x i8] c"s5p_jpeg_ctrl_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1942, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant [31 x i8] c"exynos3250_decoded_subsampling\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 568, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant [31 x i8] c"exynos4x12_decoded_subsampling\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 561, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1252, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1257, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1260, i32 49 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1601, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1484, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [29 x i8] c"subs420_fourcc_dwngrd_schema\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 479, i32 18 }
@___asan_gen_.281 = private unnamed_addr constant [29 x i8] c"subs422_fourcc_dwngrd_schema\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 474, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1541, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [24 x i8] c"exynos3250_jpeg_drvdata\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3083, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant [21 x i8] c"exynos4_jpeg_drvdata\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3093, i32 32 }
@___asan_gen_.296 = private unnamed_addr constant [24 x i8] c"exynos5420_jpeg_drvdata\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3104, i32 32 }
@___asan_gen_.299 = private unnamed_addr constant [24 x i8] c"exynos5433_jpeg_drvdata\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3115, i32 32 }
@___asan_gen_.302 = private unnamed_addr constant [24 x i8] c"exynos3250_jpeg_m2m_ops\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2433, i32 34 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3089, i32 24 }
@___asan_gen_.308 = private unnamed_addr constant [8 x i8] c"hdctbl0\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 433, i32 28 }
@___asan_gen_.311 = private unnamed_addr constant [8 x i8] c"hactbl0\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 440, i32 28 }
@___asan_gen_.314 = private unnamed_addr constant [9 x i8] c"hactblg0\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 443, i32 28 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2783, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2794, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [21 x i8] c"exynos4_jpeg_m2m_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 2438, i32 34 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3121, i32 16 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3121, i32 24 }
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private constant [47 x i8] c"../drivers/media/platform/s5p-jpeg/jpeg-core.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 3121, i32 32 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_s5p_jpeg_driver_exit, ptr @__initcall__kmod_s5p_jpeg__317_3177_s5p_jpeg_driver_init6, ptr @exynos3250_jpeg_irq._entry, ptr @exynos3250_jpeg_irq._entry.58, ptr @exynos3250_jpeg_irq._entry_ptr, ptr @exynos3250_jpeg_irq._entry_ptr.60, ptr @s5p_jpeg_buf_prepare._entry, ptr @s5p_jpeg_buf_prepare._entry_ptr, ptr @s5p_jpeg_driver_exit, ptr @s5p_jpeg_probe._entry, ptr @s5p_jpeg_probe._entry.12, ptr @s5p_jpeg_probe._entry.15, ptr @s5p_jpeg_probe._entry.18, ptr @s5p_jpeg_probe._entry.21, ptr @s5p_jpeg_probe._entry.25, ptr @s5p_jpeg_probe._entry.28, ptr @s5p_jpeg_probe._entry.31, ptr @s5p_jpeg_probe._entry.34, ptr @s5p_jpeg_probe._entry.36, ptr @s5p_jpeg_probe._entry.39, ptr @s5p_jpeg_probe._entry.9, ptr @s5p_jpeg_probe._entry_ptr, ptr @s5p_jpeg_probe._entry_ptr.11, ptr @s5p_jpeg_probe._entry_ptr.14, ptr @s5p_jpeg_probe._entry_ptr.17, ptr @s5p_jpeg_probe._entry_ptr.20, ptr @s5p_jpeg_probe._entry_ptr.23, ptr @s5p_jpeg_probe._entry_ptr.27, ptr @s5p_jpeg_probe._entry_ptr.30, ptr @s5p_jpeg_probe._entry_ptr.32, ptr @s5p_jpeg_probe._entry_ptr.35, ptr @s5p_jpeg_probe._entry_ptr.38, ptr @s5p_jpeg_probe._entry_ptr.41, ptr @s5p_jpeg_s_fmt._entry, ptr @s5p_jpeg_s_fmt._entry_ptr, ptr @s5p_jpeg_try_fmt_vid_cap._entry, ptr @s5p_jpeg_try_fmt_vid_cap._entry_ptr, ptr @s5p_jpeg_try_fmt_vid_out._entry, ptr @s5p_jpeg_try_fmt_vid_out._entry_ptr, ptr @s5p_jpeg_driver, ptr @.str, ptr @samsung_jpeg_match, ptr @s5p_jpeg_pm_ops, ptr @s5p_jpeg_probe.__key, ptr @.str.1, ptr @s5p_jpeg_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @s5p_jpeg_fops, ptr @s5p_jpeg_ioctl_ops, ptr @.str.26, ptr @.str.29, ptr @.str.33, ptr @.str.37, ptr @.str.40, ptr @s5p_jpeg_drvdata, ptr @s5p_jpeg_m2m_ops, ptr @.str.42, ptr @qtbl_luminance, ptr @qtbl_chrominance, ptr @.str.43, ptr @sjpeg_formats, ptr @s5p_jpeg_qops, ptr @.str.44, ptr @.str.45, ptr @s5p_jpeg_buf_queue.ev_src_ch, ptr @s5p_jpeg_controls_create._key, ptr @.str.46, ptr @s5p_jpeg_ctrl_ops, ptr @exynos3250_decoded_subsampling, ptr @exynos4x12_decoded_subsampling, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @subs420_fourcc_dwngrd_schema, ptr @subs422_fourcc_dwngrd_schema, ptr @.str.54, ptr @exynos3250_jpeg_drvdata, ptr @exynos4_jpeg_drvdata, ptr @exynos5420_jpeg_drvdata, ptr @exynos5433_jpeg_drvdata, ptr @exynos3250_jpeg_m2m_ops, ptr @.str.55, ptr @hdctbl0, ptr @hactbl0, ptr @hactblg0, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @exynos4_jpeg_m2m_ops, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_jpeg_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtbl_luminance to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qtbl_chrominance to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sjpeg_formats to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_buf_queue.ev_src_ch to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_controls_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_decoded_subsampling to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4x12_decoded_subsampling to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subs420_fourcc_dwngrd_schema to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subs422_fourcc_dwngrd_schema to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_jpeg_try_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_jpeg_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_jpeg_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_jpeg_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_jpeg_drvdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_jpeg_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdctbl0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hactbl0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hactblg0 to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_jpeg_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_jpeg_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_jpeg_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_jpeg_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5p_jpeg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_jpeg_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 316, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %jpeg_get_drv_data.exit.thread330, label %if.end.i

jpeg_get_drv_data.exit.thread330:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %variant332 = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %variant332 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @s5p_jpeg_drvdata, ptr %variant332, align 4
  br label %do.body

if.end.i:                                         ; preds = %if.end
  %call.i315 = tail call ptr @of_match_node(ptr noundef nonnull @samsung_jpeg_match, ptr noundef nonnull %1) #14
  %tobool2.not.i = icmp eq ptr %call.i315, null
  br i1 %tobool2.not.i, label %jpeg_get_drv_data.exit.thread, label %jpeg_get_drv_data.exit

jpeg_get_drv_data.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %variant328 = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %variant328 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %variant328, align 4
  br label %cleanup

jpeg_get_drv_data.exit:                           ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i315, i32 0, i32 3
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %variant, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %jpeg_get_drv_data.exit.cleanup_crit_edge, label %jpeg_get_drv_data.exit.do.body_crit_edge

jpeg_get_drv_data.exit.do.body_crit_edge:         ; preds = %jpeg_get_drv_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

jpeg_get_drv_data.exit.cleanup_crit_edge:         ; preds = %jpeg_get_drv_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %jpeg_get_drv_data.exit.do.body_crit_edge, %jpeg_get_drv_data.exit.thread330
  %variant334 = phi ptr [ %variant332, %jpeg_get_drv_data.exit.thread330 ], [ %variant, %jpeg_get_drv_data.exit.do.body_crit_edge ]
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @s5p_jpeg_probe.__key) #14
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.3, ptr noundef nonnull @s5p_jpeg_probe.__key.2, i16 noundef signext 3) #14
  %dev12 = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev12, align 4
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #14
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %do.body
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #14
  %irq = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call20, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %11 = ptrtoint ptr %variant334 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant334, align 4
  %jpeg_irq = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %jpeg_irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %jpeg_irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i316 = icmp eq ptr %16, null
  br i1 %tobool.not.i316, label %if.end.i317, label %if.end26.dev_name.exit_crit_edge

if.end26.dev_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i317:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i317, %if.end26.dev_name.exit_crit_edge
  %retval.0.i318 = phi ptr [ %18, %if.end.i317 ], [ %16, %if.end26.dev_name.exit_crit_edge ]
  %call.i319 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call20, ptr noundef %14, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i318, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %tobool33.not = icmp eq i32 %call.i319, 0
  br i1 %tobool33.not, label %for.cond.preheader, label %do.end37

for.cond.preheader:                               ; preds = %dev_name.exit
  %19 = ptrtoint ptr %variant334 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %variant334, align 4
  %num_clocks336 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %num_clocks336 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_clocks336, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp42337 = icmp sgt i32 %22, 0
  br i1 %cmp42337, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end37:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %24) #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %25 = phi ptr [ %37, %for.inc.for.body_crit_edge ], [ %20, %for.cond.preheader.for.body_crit_edge ]
  %i.0338 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s5p_jpeg_variant, ptr %25, i32 0, i32 5, i32 %i.0338
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %27) #14
  %arrayidx46 = getelementptr %struct.s5p_jpeg, ptr %call.i, i32 0, i32 9, i32 %i.0338
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call45, ptr %arrayidx46, align 4
  %cmp.i320 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %do.end53, label %for.inc

do.end53:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %variant334 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant334, align 4
  %arrayidx57 = getelementptr %struct.s5p_jpeg_variant, ptr %30, i32 0, i32 5, i32 %i.0338
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %32) #17
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx46, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0338, 1
  %36 = ptrtoint ptr %variant334 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %variant334, align 4
  %num_clocks = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_clocks, align 4
  %cmp42 = icmp slt i32 %inc, %39
  br i1 %cmp42, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %v4l2_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 2
  %call63 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #17
  br label %cleanup

if.end70:                                         ; preds = %for.end
  %40 = ptrtoint ptr %variant334 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %variant334, align 4
  %m2m_ops = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %m2m_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m2m_ops, align 4
  %call72 = tail call ptr @v4l2_m2m_init(ptr noundef %43) #14
  %m2m_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call72, ptr %m2m_dev, align 4
  %cmp.i321 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %do.end78, label %if.end83

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 2, i32 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name) #17
  %45 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %m2m_dev, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %device_register_rollback

if.end83:                                         ; preds = %if.end70
  %call85 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev, i32 noundef -1) #14
  %call86 = tail call ptr @video_device_alloc() #14
  %vfd_encoder = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %vfd_encoder to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call86, ptr %vfd_encoder, align 4
  %tobool88.not = icmp eq ptr %call86, null
  br i1 %tobool88.not, label %do.end92, label %if.end98

do.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %name95 = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 2, i32 4
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name95) #17
  br label %m2m_init_rollback

if.end98:                                         ; preds = %if.end83
  %name100 = getelementptr inbounds %struct.video_device, ptr %call86, i32 0, i32 12
  %call102 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name100, i32 noundef 32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str)
  %49 = ptrtoint ptr %vfd_encoder to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vfd_encoder, align 4
  %fops = getelementptr inbounds %struct.video_device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @s5p_jpeg_fops, ptr %fops, align 4
  %52 = load ptr, ptr %vfd_encoder, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %52, i32 0, i32 24
  %53 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @s5p_jpeg_ioctl_ops, ptr %ioctl_ops, align 4
  %54 = load ptr, ptr %vfd_encoder, align 4
  %minor = getelementptr inbounds %struct.video_device, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %minor, align 8
  %56 = load ptr, ptr %vfd_encoder, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %56, i32 0, i32 23
  %57 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @video_device_release, ptr %release, align 8
  %58 = load ptr, ptr %vfd_encoder, align 4
  %lock109 = getelementptr inbounds %struct.video_device, ptr %58, i32 0, i32 26
  %59 = ptrtoint ptr %lock109 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %lock109, align 8
  %60 = load ptr, ptr %vfd_encoder, align 4
  %v4l2_dev112 = getelementptr inbounds %struct.video_device, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %v4l2_dev112 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %v4l2_dev, ptr %v4l2_dev112, align 4
  %62 = load ptr, ptr %vfd_encoder, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %62, i32 0, i32 14
  %63 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %vfl_dir, align 4
  %64 = load ptr, ptr %vfd_encoder, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 67141632, ptr %device_caps, align 8
  %66 = load ptr, ptr %vfd_encoder, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fops.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call.i322 = tail call i32 @__video_register_device(ptr noundef %66, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool117.not = icmp eq i32 %call.i322, 0
  br i1 %tobool117.not, label %if.end128, label %do.end121

do.end121:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  %name124 = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 2, i32 4
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name124) #17
  %71 = ptrtoint ptr %vfd_encoder to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vfd_encoder, align 4
  tail call void @video_device_release(ptr noundef %72) #14
  br label %m2m_init_rollback

if.end128:                                        ; preds = %if.end98
  %73 = ptrtoint ptr %vfd_encoder to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vfd_encoder, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %74, i32 0, i32 5, i32 8
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name135 = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 2, i32 4
  %76 = load ptr, ptr %vfd_encoder, align 4
  %num = getelementptr inbounds %struct.video_device, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %num, align 4
  %conv = zext i16 %78 to i32
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name135, i32 noundef %conv) #17
  %call139 = tail call ptr @video_device_alloc() #14
  %vfd_decoder = getelementptr inbounds %struct.s5p_jpeg, ptr %call.i, i32 0, i32 4
  %79 = ptrtoint ptr %vfd_decoder to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call139, ptr %vfd_decoder, align 4
  %tobool141.not = icmp eq ptr %call139, null
  br i1 %tobool141.not, label %do.end145, label %if.end151

do.end145:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name135) #17
  br label %enc_vdev_register_rollback

if.end151:                                        ; preds = %if.end128
  %name153 = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 12
  %call155 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name153, i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str)
  %80 = ptrtoint ptr %vfd_decoder to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vfd_decoder, align 4
  %fops157 = getelementptr inbounds %struct.video_device, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %fops157 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @s5p_jpeg_fops, ptr %fops157, align 4
  %83 = load ptr, ptr %vfd_decoder, align 4
  %ioctl_ops159 = getelementptr inbounds %struct.video_device, ptr %83, i32 0, i32 24
  %84 = ptrtoint ptr %ioctl_ops159 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @s5p_jpeg_ioctl_ops, ptr %ioctl_ops159, align 4
  %85 = load ptr, ptr %vfd_decoder, align 4
  %minor161 = getelementptr inbounds %struct.video_device, ptr %85, i32 0, i32 15
  %86 = ptrtoint ptr %minor161 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %minor161, align 8
  %87 = load ptr, ptr %vfd_decoder, align 4
  %release163 = getelementptr inbounds %struct.video_device, ptr %87, i32 0, i32 23
  %88 = ptrtoint ptr %release163 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @video_device_release, ptr %release163, align 8
  %89 = load ptr, ptr %vfd_decoder, align 4
  %lock166 = getelementptr inbounds %struct.video_device, ptr %89, i32 0, i32 26
  %90 = ptrtoint ptr %lock166 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i, ptr %lock166, align 8
  %91 = load ptr, ptr %vfd_decoder, align 4
  %v4l2_dev169 = getelementptr inbounds %struct.video_device, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %v4l2_dev169 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %v4l2_dev, ptr %v4l2_dev169, align 4
  %93 = load ptr, ptr %vfd_decoder, align 4
  %vfl_dir171 = getelementptr inbounds %struct.video_device, ptr %93, i32 0, i32 14
  %94 = ptrtoint ptr %vfl_dir171 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %vfl_dir171, align 4
  %95 = load ptr, ptr %vfd_decoder, align 4
  %device_caps173 = getelementptr inbounds %struct.video_device, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %device_caps173 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 67141632, ptr %device_caps173, align 8
  %97 = load ptr, ptr %vfd_decoder, align 4
  %fops.i323 = getelementptr inbounds %struct.video_device, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %fops.i323 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fops.i323, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %call.i324 = tail call i32 @__video_register_device(ptr noundef %97, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %101) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool176.not = icmp eq i32 %call.i324, 0
  br i1 %tobool176.not, label %if.end187, label %do.end180

do.end180:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name135) #17
  %102 = ptrtoint ptr %vfd_decoder to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vfd_decoder, align 4
  tail call void @video_device_release(ptr noundef %103) #14
  br label %enc_vdev_register_rollback

if.end187:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  %104 = ptrtoint ptr %vfd_decoder to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vfd_decoder, align 4
  %driver_data.i.i325 = getelementptr inbounds %struct.video_device, ptr %105, i32 0, i32 5, i32 8
  %106 = ptrtoint ptr %driver_data.i.i325 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i, ptr %driver_data.i.i325, align 4
  %107 = load ptr, ptr %vfd_decoder, align 4
  %num197 = getelementptr inbounds %struct.video_device, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %num197 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %num197, align 4
  %conv198 = zext i16 %109 to i32
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name135, i32 noundef %conv198) #17
  %driver_data.i.i326 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %110 = ptrtoint ptr %driver_data.i.i326 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %driver_data.i.i326, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #14
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name135) #17
  br label %cleanup

enc_vdev_register_rollback:                       ; preds = %do.end180, %do.end145
  %ret.0 = phi i32 [ %call.i324, %do.end180 ], [ -12, %do.end145 ]
  %111 = ptrtoint ptr %vfd_encoder to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vfd_encoder, align 4
  tail call void @video_unregister_device(ptr noundef %112) #14
  br label %m2m_init_rollback

m2m_init_rollback:                                ; preds = %enc_vdev_register_rollback, %do.end121, %do.end92
  %ret.1 = phi i32 [ %call.i322, %do.end121 ], [ %ret.0, %enc_vdev_register_rollback ], [ -12, %do.end92 ]
  %113 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %114) #14
  br label %device_register_rollback

device_register_rollback:                         ; preds = %m2m_init_rollback, %do.end78
  %ret.2 = phi i32 [ %47, %do.end78 ], [ %ret.1, %m2m_init_rollback ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #14
  br label %cleanup

cleanup:                                          ; preds = %device_register_rollback, %if.end187, %do.end68, %do.end53, %do.end37, %do.end24, %if.then16, %jpeg_get_drv_data.exit.cleanup_crit_edge, %jpeg_get_drv_data.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then16 ], [ %call20, %do.end24 ], [ %call.i319, %do.end37 ], [ %35, %do.end53 ], [ %call63, %do.end68 ], [ %ret.2, %device_register_rollback ], [ 0, %if.end187 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %jpeg_get_drv_data.exit.cleanup_crit_edge ], [ -19, %jpeg_get_drv_data.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #14
  %vfd_decoder = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %vfd_decoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfd_decoder, align 4
  tail call void @video_unregister_device(ptr noundef %5) #14
  %vfd_encoder = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vfd_encoder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfd_encoder, align 4
  tail call void @video_unregister_device(ptr noundef %7) #14
  %m2m_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %9) #14
  %v4l2_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #14
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %10 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %num_clocks = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_clocks, align 4
  %i.014 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.014)
  %cmp15 = icmp sgt i32 %i.014, -1
  br i1 %cmp15, label %if.then.for.body_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.016 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.014, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s5p_jpeg, ptr %1, i32 0, i32 9, i32 %i.016
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %17) #14
  tail call void @clk_unprepare(ptr noundef %17) #14
  %i.0 = add nsw i32 %i.016, -1
  %cmp = icmp sgt i32 %i.016, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %slock) #14
  %m2m_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 4
  %call = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %1) #14
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #14
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i84 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #14
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call5 = tail call i32 @s5p_jpeg_enc_stream_stat(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool = icmp ne i32 %call5, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enc_jpeg_too_large.0.off0 = phi i1 [ %tobool, %if.then ], [ false, %entry.if.end_crit_edge ]
  %regs6 = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 6
  %10 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs6, align 4
  %call7 = tail call i32 @s5p_jpeg_timer_stat(ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %12 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs6, align 4
  %call11 = tail call i32 @s5p_jpeg_result_stat_ok(ptr noundef %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12 = icmp ne i32 %call11, 0
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp15 = icmp ne i32 %15, 1
  %tobool12.not = xor i1 %tobool12, true
  %brmerge = select i1 %cmp15, i1 true, i1 %tobool12.not
  %tobool12.mux = select i1 %cmp15, i1 %tobool12, i1 false
  br i1 %brmerge, label %if.end.if.end22_crit_edge, label %land.rhs

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs6, align 4
  %call19 = tail call i32 @s5p_jpeg_stream_stat_ok(ptr noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20 = icmp ne i32 %call19, 0
  br label %if.end22

if.end22:                                         ; preds = %land.rhs, %if.end.if.end22_crit_edge
  %op_completed.0.in = phi i1 [ %tobool12.mux, %if.end.if.end22_crit_edge ], [ %tobool20, %land.rhs ]
  br i1 %enc_jpeg_too_large.0.off0, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs6, align 4
  tail call void @s5p_jpeg_clear_enc_stream_stat(ptr noundef %19) #14
  br label %if.end37

if.else:                                          ; preds = %if.end22
  br i1 %tobool8.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs6, align 4
  tail call void @s5p_jpeg_clear_timer_stat(ptr noundef %21) #14
  br label %if.end37

if.else29:                                        ; preds = %if.else
  br i1 %op_completed.0.in, label %if.else32, label %if.else29.if.end37_crit_edge

if.else29.if.end37_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.else32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs6, align 4
  %call34 = tail call i32 @s5p_jpeg_compressed_size(ptr noundef %23) #14
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.else29.if.end37_crit_edge, %if.then27, %if.then24
  %payload_size.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then27 ], [ %call34, %if.else32 ], [ 0, %if.else29.if.end37_crit_edge ]
  %state.0 = phi i32 [ 6, %if.then24 ], [ 6, %if.then27 ], [ 5, %if.else32 ], [ 6, %if.else29.if.end37_crit_edge ]
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i84, i32 0, i32 3
  %timecode38 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %timecode, ptr %timecode38, i32 16)
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %timestamp, align 8
  %timestamp40 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i84, i32 0, i32 5
  %27 = ptrtoint ptr %timestamp40 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %timestamp40, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i84, i32 0, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and = and i32 %29, -458753
  store i32 %and, ptr %flags, align 8
  %flags41 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags41, align 8
  %and42 = and i32 %31, 458752
  %or = or i32 %and42, %and
  store i32 %or, ptr %flags, align 8
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %state.0) #14
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp45 = icmp eq i32 %33, 0
  br i1 %cmp45, label %if.then46, label %if.end37.if.end48_crit_edge

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then46:                                        ; preds = %if.end37
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i84, i32 0, i32 4
  %34 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 0
  br i1 %cmp.not.i, label %if.then46.if.end48_crit_edge, label %if.then.i

if.then46.if.end48_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then.i:                                        ; preds = %if.then46
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i84, i32 0, i32 10, i32 0, i32 4
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %payload_size.0)
  %cmp1.i = icmp ult i32 %37, %payload_size.0
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !189

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %38 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %39, %if.then38.i ], [ %payload_size.0, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i84, i32 0, i32 10, i32 0, i32 3
  %40 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end42.i, %if.then46.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %call.i84, i32 noundef %state.0) #14
  %41 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs6, align 4
  %call50 = tail call i32 @s5p_jpeg_get_subsampling_mode(ptr noundef %42) #14
  %conv = trunc i32 %call50 to i16
  %subsampling = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call, i32 0, i32 4
  %43 = ptrtoint ptr %subsampling to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv, ptr %subsampling, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slock) #14
  %44 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs6, align 4
  tail call void @s5p_jpeg_clear_int(ptr noundef %45) #14
  %46 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %m2m_dev, align 4
  %48 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %47, ptr noundef %49) #14
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_jpeg_device_run(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #14
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #14
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i134 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #14
  %call.i135 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #14
  %6 = ptrtoint ptr %call.i135 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i135, align 4
  %call.i136 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i134, i32 noundef 0) #14
  %8 = ptrtoint ptr %call.i136 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i136, align 4
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_reset(ptr noundef %11) #14
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_poweron(ptr noundef %13) #14
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  tail call void @s5p_jpeg_proc_mode(ptr noundef %15, i32 noundef %17) #14
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp17 = icmp eq i32 %19, 0
  br i1 %cmp17, label %if.then, label %if.else58

if.then:                                          ; preds = %entry
  %out_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5
  %20 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out_q, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1346520914, i32 %23)
  %cmp19 = icmp ne i32 %23, 1346520914
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %. = zext i1 %cmp19 to i32
  tail call void @s5p_jpeg_input_raw_mode(ptr noundef %25, i32 noundef %.) #14
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %subsampling = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 4
  %28 = ptrtoint ptr %subsampling to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsampling, align 4
  %conv25 = zext i16 %29 to i32
  tail call void @s5p_jpeg_subsampling_mode(ptr noundef %27, i32 noundef %conv25) #14
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %restart_interval = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 3
  %32 = ptrtoint ptr %restart_interval to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %restart_interval, align 2
  %conv27 = zext i16 %33 to i32
  tail call void @s5p_jpeg_dri(ptr noundef %31, i32 noundef %conv27) #14
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %w = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %w, align 4
  tail call void @s5p_jpeg_x(ptr noundef %35, i32 noundef %37) #14
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %h, align 4
  tail call void @s5p_jpeg_y(ptr noundef %39, i32 noundef %41) #14
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_imgadr(ptr noundef %43, i32 noundef %7) #14
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_jpgadr(ptr noundef %45, i32 noundef %9) #14
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %size = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6, i32 8
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 4
  tail call void @s5p_jpeg_enc_stream_int(ptr noundef %47, i32 noundef %49) #14
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %51, i32 noundef 1, i32 noundef 1, i32 noundef 77) #14
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %53, i32 noundef 1, i32 noundef 2, i32 noundef 151) #14
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %55, i32 noundef 1, i32 noundef 3, i32 noundef 30) #14
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %57, i32 noundef 2, i32 noundef 1, i32 noundef 44) #14
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %59, i32 noundef 2, i32 noundef 2, i32 noundef 87) #14
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %61, i32 noundef 2, i32 noundef 3, i32 noundef 131) #14
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %63, i32 noundef 3, i32 noundef 1, i32 noundef 131) #14
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %65, i32 noundef 3, i32 noundef 2, i32 noundef 110) #14
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %67, i32 noundef 3, i32 noundef 3, i32 noundef 19) #14
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %compr_quality = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 2
  %70 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %compr_quality, align 4
  %conv45 = zext i16 %71 to i32
  %arrayidx.i = getelementptr [4 x [64 x i8]], ptr @qtbl_luminance, i32 0, i32 %conv45
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 1024
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %i.01.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !190
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 %i.01.i.i
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %73 to i32
  %74 = shl nuw i32 %conv.i.i, 24
  %mul.i.i = shl i32 %i.01.i.i, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %74) #14, !srcloc !191
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %s5p_jpeg_set_qtbl_lum.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

s5p_jpeg_set_qtbl_lum.exit:                       ; preds = %do.body.i.i
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %77 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %compr_quality, align 4
  %conv48 = zext i16 %78 to i32
  %arrayidx.i137 = getelementptr [4 x [64 x i8]], ptr @qtbl_chrominance, i32 0, i32 %conv48
  %add.ptr.i.i138 = getelementptr i8, ptr %76, i32 1280
  br label %do.body.i.i146

do.body.i.i146:                                   ; preds = %do.body.i.i146.do.body.i.i146_crit_edge, %s5p_jpeg_set_qtbl_lum.exit
  %i.01.i.i139 = phi i32 [ 0, %s5p_jpeg_set_qtbl_lum.exit ], [ %inc.i.i144, %do.body.i.i146.do.body.i.i146_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !190
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i140 = getelementptr i8, ptr %arrayidx.i137, i32 %i.01.i.i139
  %79 = ptrtoint ptr %arrayidx.i.i140 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i140, align 1
  %conv.i.i141 = zext i8 %80 to i32
  %81 = shl nuw i32 %conv.i.i141, 24
  %mul.i.i142 = shl i32 %i.01.i.i139, 2
  %add.ptr1.i.i143 = getelementptr i8, ptr %add.ptr.i.i138, i32 %mul.i.i142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i143, i32 %81) #14, !srcloc !191
  %inc.i.i144 = add nuw nsw i32 %i.01.i.i139, 1
  %exitcond.not.i.i145 = icmp eq i32 %inc.i.i144, 64
  br i1 %exitcond.not.i.i145, label %s5p_jpeg_set_qtbl_chr.exit, label %do.body.i.i146.do.body.i.i146_crit_edge

do.body.i.i146.do.body.i.i146_crit_edge:          ; preds = %do.body.i.i146
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i146

s5p_jpeg_set_qtbl_chr.exit:                       ; preds = %do.body.i.i146
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_qtbl(ptr noundef %83, i32 noundef 1, i32 noundef 0) #14
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_qtbl(ptr noundef %85, i32 noundef 2, i32 noundef 1) #14
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_qtbl(ptr noundef %87, i32 noundef 3, i32 noundef 1) #14
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_htbl_ac(ptr noundef %89, i32 noundef 1) #14
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_htbl_dc(ptr noundef %91, i32 noundef 1) #14
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_htbl_ac(ptr noundef %93, i32 noundef 2) #14
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_htbl_dc(ptr noundef %95, i32 noundef 2) #14
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_htbl_ac(ptr noundef %97, i32 noundef 3) #14
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_htbl_dc(ptr noundef %99, i32 noundef 3) #14
  br label %if.end74

if.else58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_rst_int_enable(ptr noundef %101, i1 noundef zeroext true) #14
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_data_num_int_enable(ptr noundef %103, i1 noundef zeroext true) #14
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_final_mcu_num_int_enable(ptr noundef %105, i1 noundef zeroext true) #14
  %cap_q62 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6
  %106 = ptrtoint ptr %cap_q62 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cap_q62, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %109)
  %cmp65 = icmp ne i32 %109, 1448695129
  %110 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs, align 4
  %.148 = zext i1 %cmp65 to i32
  tail call void @s5p_jpeg_outform_raw(ptr noundef %111, i32 noundef %.148) #14
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_jpgadr(ptr noundef %113, i32 noundef %7) #14
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_imgadr(ptr noundef %115, i32 noundef %9) #14
  br label %if.end74

if.end74:                                         ; preds = %if.else58, %s5p_jpeg_set_qtbl_chr.exit
  %116 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs, align 4
  tail call void @s5p_jpeg_start(ptr noundef %117) #14
  %118 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %priv, align 4
  %slock77 = getelementptr inbounds %struct.s5p_jpeg, ptr %119, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock77, i32 noundef %call4) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_jpeg_job_ready(ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %hdr_parsed = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %hdr_parsed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr_parsed, align 4, !range !192
  %6 = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_poweron(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_proc_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_input_raw_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_subsampling_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_dri(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_x(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_y(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_imgadr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_jpgadr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_enc_stream_int(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_coef(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_qtbl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_htbl_ac(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_htbl_dc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_rst_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_data_num_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_final_mcu_num_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_outform_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_enc_stream_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_timer_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_result_stat_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_stream_stat_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_clear_enc_stream_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_clear_timer_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_compressed_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_get_subsampling_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_clear_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #14
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call ptr @video_devdata(ptr noundef %file) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 620) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.free_crit_edge

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free

if.end6:                                          ; preds = %if.end
  %fh = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 9
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call1) #14
  %ctrl_handler = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 12
  %ctrl_handler8 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %ctrl_handler8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl_handler, ptr %ctrl_handler8, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #14
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %vfd_encoder = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vfd_encoder to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfd_encoder, align 4
  %cmp = icmp eq ptr %call1, %7
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mode, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then12
  %k.025.i = phi i32 [ 0, %if.then12 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1346520914, i32 %10)
  %cmp5.i = icmp eq i32 %10, 1346520914
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i, i32 7
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %variant.i, align 4
  %fmt_ver_flag.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %fmt_ver_flag.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt_ver_flag.i, align 4
  %and8.i = and i32 %16, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true6.i.for.inc.i_crit_edge, label %land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge

land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.inc.i.s5p_jpeg_find_format.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.s5p_jpeg_find_format.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit

s5p_jpeg_find_format.exit:                        ; preds = %for.inc.i.s5p_jpeg_find_format.exit_crit_edge, %land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge
  %retval.2.i = phi ptr [ null, %for.inc.i.s5p_jpeg_find_format.exit_crit_edge ], [ %arrayidx.i, %land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge ]
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.inc.i93.for.body.i81_crit_edge, %s5p_jpeg_find_format.exit
  %k.025.i78 = phi i32 [ 0, %s5p_jpeg_find_format.exit ], [ %inc.i91, %for.inc.i93.for.body.i81_crit_edge ]
  %arrayidx.i79 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i78
  %17 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %18)
  %cmp5.i80 = icmp eq i32 %18, 1195724874
  br i1 %cmp5.i80, label %land.lhs.true.i85, label %for.body.i81.for.inc.i93_crit_edge

for.body.i81.for.inc.i93_crit_edge:               ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i93

land.lhs.true.i85:                                ; preds = %for.body.i81
  %flags.i82 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i78, i32 7
  %19 = ptrtoint ptr %flags.i82 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i82, align 4
  %and.i83 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.for.inc.i93_crit_edge, label %land.lhs.true6.i90

land.lhs.true.i85.for.inc.i93_crit_edge:          ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i93

land.lhs.true6.i90:                               ; preds = %land.lhs.true.i85
  %21 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %variant.i, align 4
  %fmt_ver_flag.i87 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %fmt_ver_flag.i87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt_ver_flag.i87, align 4
  %and8.i88 = and i32 %24, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i88)
  %tobool9.not.i89 = icmp eq i32 %and8.i88, 0
  br i1 %tobool9.not.i89, label %land.lhs.true6.i90.for.inc.i93_crit_edge, label %land.lhs.true6.i90.if.end18_crit_edge

land.lhs.true6.i90.if.end18_crit_edge:            ; preds = %land.lhs.true6.i90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

land.lhs.true6.i90.for.inc.i93_crit_edge:         ; preds = %land.lhs.true6.i90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i93

for.inc.i93:                                      ; preds = %land.lhs.true6.i90.for.inc.i93_crit_edge, %land.lhs.true.i85.for.inc.i93_crit_edge, %for.body.i81.for.inc.i93_crit_edge
  %inc.i91 = add nuw nsw i32 %k.025.i78, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, 26
  br i1 %exitcond.not.i92, label %for.inc.i93.if.end18_crit_edge, label %for.inc.i93.for.body.i81_crit_edge

for.inc.i93.for.body.i81_crit_edge:               ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i81

for.inc.i93.if.end18_crit_edge:                   ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else:                                          ; preds = %if.end6
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %mode, align 4
  %variant.i107 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  br label %for.body.i102

for.body.i102:                                    ; preds = %for.inc.i114.for.body.i102_crit_edge, %if.else
  %k.025.i99 = phi i32 [ 0, %if.else ], [ %inc.i112, %for.inc.i114.for.body.i102_crit_edge ]
  %arrayidx.i100 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i99
  %26 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %27)
  %cmp5.i101 = icmp eq i32 %27, 1195724874
  br i1 %cmp5.i101, label %land.lhs.true.i106, label %for.body.i102.for.inc.i114_crit_edge

for.body.i102.for.inc.i114_crit_edge:             ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i114

land.lhs.true.i106:                               ; preds = %for.body.i102
  %flags.i103 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i99, i32 7
  %28 = ptrtoint ptr %flags.i103 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i103, align 4
  %and.i104 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i105 = icmp eq i32 %and.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.for.inc.i114_crit_edge, label %land.lhs.true6.i111

land.lhs.true.i106.for.inc.i114_crit_edge:        ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i114

land.lhs.true6.i111:                              ; preds = %land.lhs.true.i106
  %30 = ptrtoint ptr %variant.i107 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %variant.i107, align 4
  %fmt_ver_flag.i108 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %fmt_ver_flag.i108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt_ver_flag.i108, align 4
  %and8.i109 = and i32 %33, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i109)
  %tobool9.not.i110 = icmp eq i32 %and8.i109, 0
  br i1 %tobool9.not.i110, label %land.lhs.true6.i111.for.inc.i114_crit_edge, label %land.lhs.true6.i111.s5p_jpeg_find_format.exit116_crit_edge

land.lhs.true6.i111.s5p_jpeg_find_format.exit116_crit_edge: ; preds = %land.lhs.true6.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit116

land.lhs.true6.i111.for.inc.i114_crit_edge:       ; preds = %land.lhs.true6.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i114

for.inc.i114:                                     ; preds = %land.lhs.true6.i111.for.inc.i114_crit_edge, %land.lhs.true.i106.for.inc.i114_crit_edge, %for.body.i102.for.inc.i114_crit_edge
  %inc.i112 = add nuw nsw i32 %k.025.i99, 1
  %exitcond.not.i113 = icmp eq i32 %inc.i112, 26
  br i1 %exitcond.not.i113, label %for.inc.i114.s5p_jpeg_find_format.exit116_crit_edge, label %for.inc.i114.for.body.i102_crit_edge

for.inc.i114.for.body.i102_crit_edge:             ; preds = %for.inc.i114
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i102

for.inc.i114.s5p_jpeg_find_format.exit116_crit_edge: ; preds = %for.inc.i114
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit116

s5p_jpeg_find_format.exit116:                     ; preds = %for.inc.i114.s5p_jpeg_find_format.exit116_crit_edge, %land.lhs.true6.i111.s5p_jpeg_find_format.exit116_crit_edge
  %retval.2.i115 = phi ptr [ null, %for.inc.i114.s5p_jpeg_find_format.exit116_crit_edge ], [ %arrayidx.i100, %land.lhs.true6.i111.s5p_jpeg_find_format.exit116_crit_edge ]
  br label %for.body.i123

for.body.i123:                                    ; preds = %for.inc.i135.for.body.i123_crit_edge, %s5p_jpeg_find_format.exit116
  %k.025.i120 = phi i32 [ 0, %s5p_jpeg_find_format.exit116 ], [ %inc.i133, %for.inc.i135.for.body.i123_crit_edge ]
  %arrayidx.i121 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i120
  %34 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %35)
  %cmp5.i122 = icmp eq i32 %35, 1448695129
  br i1 %cmp5.i122, label %land.lhs.true.i127, label %for.body.i123.for.inc.i135_crit_edge

for.body.i123.for.inc.i135_crit_edge:             ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i135

land.lhs.true.i127:                               ; preds = %for.body.i123
  %flags.i124 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i120, i32 7
  %36 = ptrtoint ptr %flags.i124 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i124, align 4
  %and.i125 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.not.i126 = icmp eq i32 %and.i125, 0
  br i1 %tobool.not.i126, label %land.lhs.true.i127.for.inc.i135_crit_edge, label %land.lhs.true6.i132

land.lhs.true.i127.for.inc.i135_crit_edge:        ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i135

land.lhs.true6.i132:                              ; preds = %land.lhs.true.i127
  %38 = ptrtoint ptr %variant.i107 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %variant.i107, align 4
  %fmt_ver_flag.i129 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %fmt_ver_flag.i129 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fmt_ver_flag.i129, align 4
  %and8.i130 = and i32 %41, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i130)
  %tobool9.not.i131 = icmp eq i32 %and8.i130, 0
  br i1 %tobool9.not.i131, label %land.lhs.true6.i132.for.inc.i135_crit_edge, label %land.lhs.true6.i132.s5p_jpeg_find_format.exit137_crit_edge

land.lhs.true6.i132.s5p_jpeg_find_format.exit137_crit_edge: ; preds = %land.lhs.true6.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit137

land.lhs.true6.i132.for.inc.i135_crit_edge:       ; preds = %land.lhs.true6.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i135

for.inc.i135:                                     ; preds = %land.lhs.true6.i132.for.inc.i135_crit_edge, %land.lhs.true.i127.for.inc.i135_crit_edge, %for.body.i123.for.inc.i135_crit_edge
  %inc.i133 = add nuw nsw i32 %k.025.i120, 1
  %exitcond.not.i134 = icmp eq i32 %inc.i133, 26
  br i1 %exitcond.not.i134, label %for.inc.i135.s5p_jpeg_find_format.exit137_crit_edge, label %for.inc.i135.for.body.i123_crit_edge

for.inc.i135.for.body.i123_crit_edge:             ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i123

for.inc.i135.s5p_jpeg_find_format.exit137_crit_edge: ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit137

s5p_jpeg_find_format.exit137:                     ; preds = %for.inc.i135.s5p_jpeg_find_format.exit137_crit_edge, %land.lhs.true6.i132.s5p_jpeg_find_format.exit137_crit_edge
  %retval.2.i136 = phi ptr [ null, %for.inc.i135.s5p_jpeg_find_format.exit137_crit_edge ], [ %arrayidx.i121, %land.lhs.true6.i132.s5p_jpeg_find_format.exit137_crit_edge ]
  %scale_factor = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %scale_factor to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %scale_factor, align 8
  br label %if.end18

if.end18:                                         ; preds = %s5p_jpeg_find_format.exit137, %for.inc.i93.if.end18_crit_edge, %land.lhs.true6.i90.if.end18_crit_edge
  %out_fmt.0 = phi ptr [ %retval.2.i115, %s5p_jpeg_find_format.exit137 ], [ %retval.2.i, %land.lhs.true6.i90.if.end18_crit_edge ], [ %retval.2.i, %for.inc.i93.if.end18_crit_edge ]
  %cap_fmt.0 = phi ptr [ %retval.2.i136, %s5p_jpeg_find_format.exit137 ], [ null, %for.inc.i93.if.end18_crit_edge ], [ %arrayidx.i79, %land.lhs.true6.i90.if.end18_crit_edge ]
  %m2m_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m2m_dev, align 4
  %call19 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %44, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #14
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 9, i32 10
  %45 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call19, ptr %m2m_ctx, align 8
  %cmp.i138 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %call19 to i32
  br label %error

if.end28:                                         ; preds = %if.end18
  %out_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %out_q to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %out_fmt.0, ptr %out_q, align 8
  %cap_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %cap_q to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cap_fmt.0, ptr %cap_q, align 4
  %call.i139 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 3, ptr noundef nonnull @s5p_jpeg_controls_create._key, ptr noundef nonnull @.str.46) #14
  %mode.i140 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %mode.i140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i141 = icmp eq i32 %50, 0
  br i1 %cmp.i141, label %if.then.i, label %if.end28.if.end7.i_crit_edge

if.end28.if.end7.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5p_jpeg_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 3) #14
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @s5p_jpeg_ctrl_ops, i32 noundef 10291458, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #14
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %variant.i142 = getelementptr inbounds %struct.s5p_jpeg, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %variant.i142 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %variant.i142, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp5.i143 = icmp eq i32 %56, 0
  %spec.select.i = select i1 %cmp5.i143, i32 -7, i32 -40
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i, %if.end28.if.end7.i_crit_edge
  %mask.0.i = phi i32 [ -40, %if.end28.if.end7.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %conv.i = zext i32 %mask.0.i to i64
  %call9.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @s5p_jpeg_ctrl_ops, i32 noundef 10291457, i8 noundef zeroext 5, i64 noundef %conv.i, i8 noundef zeroext 1) #14
  %error.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call7.i.i, i32 0, i32 12, i32 9
  %57 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i144 = icmp eq i32 %58, 0
  br i1 %tobool.not.i144, label %if.end14.i, label %s5p_jpeg_controls_create.exit

if.end14.i:                                       ; preds = %if.end7.i
  %59 = ptrtoint ptr %mode.i140 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp16.i = icmp eq i32 %60, 1
  br i1 %cmp16.i, label %if.then18.i, label %if.end14.i.if.end19.i_crit_edge

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i145 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call9.i, i32 0, i32 20
  %61 = ptrtoint ptr %flags.i145 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i145, align 4
  %or.i = or i32 %62, 132
  store i32 %or.i, ptr %flags.i145, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end19.i_crit_edge
  %call21.i = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %s5p_jpeg_controls_create.exit.thread148, label %if.end19.i.if.end33_crit_edge

if.end19.i.if.end33_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

s5p_jpeg_controls_create.exit.thread148:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #14
  br label %error

s5p_jpeg_controls_create.exit:                    ; preds = %if.end7.i
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp31 = icmp slt i32 %58, 0
  br i1 %cmp31, label %s5p_jpeg_controls_create.exit.error_crit_edge, label %s5p_jpeg_controls_create.exit.if.end33_crit_edge

s5p_jpeg_controls_create.exit.if.end33_crit_edge: ; preds = %s5p_jpeg_controls_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

s5p_jpeg_controls_create.exit.error_crit_edge:    ; preds = %s5p_jpeg_controls_create.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end33:                                         ; preds = %s5p_jpeg_controls_create.exit.if.end33_crit_edge, %if.end19.i.if.end33_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #14
  br label %cleanup

error:                                            ; preds = %s5p_jpeg_controls_create.exit.error_crit_edge, %s5p_jpeg_controls_create.exit.thread148, %if.then24
  %ret.0 = phi i32 [ %46, %if.then24 ], [ %58, %s5p_jpeg_controls_create.exit.error_crit_edge ], [ %call21.i, %s5p_jpeg_controls_create.exit.thread148 ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #14
  tail call void @v4l2_fh_exit(ptr noundef %fh) #14
  tail call void @mutex_unlock(ptr noundef %1) #14
  br label %free

free:                                             ; preds = %error, %if.end.free_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error ], [ -512, %if.end.free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free ], [ 0, %if.end33 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_release(ptr noundef %file) #2 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 -236
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #14
  %m2m_ctx = getelementptr i8, ptr %3, i32 188
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #14
  %ctrl_handler = getelementptr i8, ptr %3, i32 196
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #14
  tail call void @v4l2_fh_del(ptr noundef %3) #14
  tail call void @v4l2_fh_exit(ptr noundef %3) #14
  tail call void @kfree(ptr noundef %add.ptr.i) #14
  tail call void @mutex_unlock(ptr noundef %1) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @s5p_jpeg_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %lock1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %lock1, align 4
  %10 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.s5p_jpeg, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev3, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %17 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 744, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %18 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @s5p_jpeg_qops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %19 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags10, align 4
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %lock13, align 4
  %24 = load ptr, ptr %priv, align 4
  %dev15 = getelementptr inbounds %struct.s5p_jpeg, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev15, align 4
  %dev16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev16, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  switch i32 %5, label %entry.do.body3_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then2.i
  ]

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %out_q.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %1, i32 0, i32 5
  br label %get_q_data.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cap_q.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %1, i32 0, i32 6
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.then2.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.then2.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %get_q_data.exit.do.body3_crit_edge, label %do.end8, !prof !193

get_q_data.exit.do.body3_crit_edge:               ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body3

do.body3:                                         ; preds = %get_q_data.exit.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2458, 0\0A.popsection", ""() #14, !srcloc !194
  unreachable

do.end8:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  %size9 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 8
  %7 = ptrtoint ptr %size9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size9, align 4
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp10 = icmp eq i32 %10, 1
  %spec.select = select i1 %cmp10, i32 1, i32 %3
  %11 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %nbuffers, align 4
  %12 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %nplanes, align 4
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %5, label %entry.do.body4_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then2.i
  ]

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %out_q.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5
  br label %get_q_data.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cap_q.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 6
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.then2.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.then2.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %get_q_data.exit.do.body4_crit_edge, label %do.end9, !prof !193

get_q_data.exit.do.body4_crit_edge:               ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body4

do.body4:                                         ; preds = %get_q_data.exit.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2482, 0\0A.popsection", ""() #14, !srcloc !195
  unreachable

do.end9:                                          ; preds = %get_q_data.exit
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %do.end9
  %size = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 8
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit36_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit36_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_plane_size.exit36

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %do.end9
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  %size44 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 8
  %13 = ptrtoint ptr %size44 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp1145 = icmp ult i32 %12, %14
  br i1 %cmp1145, label %vb2_plane_size.exit.thread.vb2_plane_size.exit36_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit36_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_plane_size.exit36

vb2_plane_size.exit36:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit36_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit36_crit_edge
  %15 = phi i32 [ %10, %vb2_plane_size.exit.vb2_plane_size.exit36_crit_edge ], [ %14, %vb2_plane_size.exit.thread.vb2_plane_size.exit36_crit_edge ]
  %retval.0.i35 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit36_crit_edge ], [ %12, %vb2_plane_size.exit.thread.vb2_plane_size.exit36_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i35, i32 noundef %15) #17
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #16
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit36, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit36 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #14, !srcloc !197
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_jpeg_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %state = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @s5p_jpeg_set_capture_queue_data(ptr noundef %1)
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.s5p_jpeg, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_jpeg_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  %dht.i = alloca [4 x i32], align 4
  %dht_len.i = alloca [4 x i32], align 4
  %dqt.i = alloca [4 x i32], align 4
  %dqt_len.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then:                                          ; preds = %land.lhs.true
  %fh = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 9
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 9, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %call3 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %9, i32 noundef 1) #14
  %w = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %w, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h, align 4
  %call6 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #14
  %size = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %16 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.then.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.then.vb2_get_plane_payload.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %18 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.then.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ 0, %if.then.vb2_get_plane_payload.exit_crit_edge ]
  %20 = tail call i32 @llvm.umin.i32(i32 %15, i32 %retval.0.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dht.i) #14
  %21 = call ptr @memset(ptr %dht.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dht_len.i) #14
  %22 = call ptr @memset(ptr %dht_len.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dqt.i) #14
  %23 = call ptr @memset(ptr %dqt.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dqt_len.i) #14
  %24 = call ptr @memset(ptr %dqt_len.i, i32 255, i32 16)
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %sw.epilog.i.while.body.lr.ph.i_crit_edge, %vb2_get_plane_payload.exit
  %sof_len.0.ph557.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %sof_len.1.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %sof.0.ph556.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %sof.1.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %sos.0.ph554.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %sos.1.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %subsampling.0.ph553.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %subsampling.2.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %n_dqt.0.ph551.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %n_dqt.1.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %n_dht.0.ph549.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %n_dht.1.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %notfound.0.ph548.i = phi i32 [ 1, %vb2_get_plane_payload.exit ], [ %notfound.1.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %jpeg_buffer.sroa.21.0.ph547.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %jpeg_buffer.sroa.21.30.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %width.0.ph545.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %width.2.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  %height.0.ph544.i = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %height.2.i, %sw.epilog.i.while.body.lr.ph.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %jpeg_buffer.sroa.21.0.ph547.i, i32 %20)
  %cmp.not.i.i82 = icmp ult i32 %jpeg_buffer.sroa.21.0.ph547.i, %20
  br i1 %cmp.not.i.i82, label %while.body.lr.ph.i.get_byte.exit.i_crit_edge, label %while.body.lr.ph.i.if.then13_crit_edge

while.body.lr.ph.i.if.then13_crit_edge:           ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

while.body.lr.ph.i.get_byte.exit.i_crit_edge:     ; preds = %while.body.lr.ph.i
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %while.cond.backedge.i.get_byte.exit.i_crit_edge, %while.body.lr.ph.i.get_byte.exit.i_crit_edge
  %jpeg_buffer.sroa.21.0528.i83 = phi i32 [ %jpeg_buffer.sroa.21.0.be.i, %while.cond.backedge.i.get_byte.exit.i_crit_edge ], [ %jpeg_buffer.sroa.21.0.ph547.i, %while.body.lr.ph.i.get_byte.exit.i_crit_edge ]
  %inc.i.i = add nuw i32 %jpeg_buffer.sroa.21.0528.i83, 1
  %arrayidx.i.i = getelementptr i8, ptr %call6, i32 %jpeg_buffer.sroa.21.0528.i83
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cond.i = icmp eq i8 %26, -1
  br i1 %cond.i, label %get_byte.exit.i.do.body.i_crit_edge, label %get_byte.exit.i.while.cond.backedge.i_crit_edge

get_byte.exit.i.while.cond.backedge.i_crit_edge:  ; preds = %get_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

get_byte.exit.i.do.body.i_crit_edge:              ; preds = %get_byte.exit.i
  br label %do.body.i

while.cond.backedge.i:                            ; preds = %get_byte.exit192.i.while.cond.backedge.i_crit_edge, %get_byte.exit.i.while.cond.backedge.i_crit_edge
  %jpeg_buffer.sroa.21.0.be.i = phi i32 [ %inc.i.i, %get_byte.exit.i.while.cond.backedge.i_crit_edge ], [ %inc.i187.i, %get_byte.exit192.i.while.cond.backedge.i_crit_edge ]
  %cmp.not.i.i = icmp ult i32 %jpeg_buffer.sroa.21.0.be.i, %20
  br i1 %cmp.not.i.i, label %while.cond.backedge.i.get_byte.exit.i_crit_edge, label %while.cond.backedge.i.if.then13_crit_edge

while.cond.backedge.i.if.then13_crit_edge:        ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

while.cond.backedge.i.get_byte.exit.i_crit_edge:  ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_byte.exit.i

do.body.i:                                        ; preds = %get_byte.exit192.i.do.body.i_crit_edge, %get_byte.exit.i.do.body.i_crit_edge
  %jpeg_buffer.sroa.21.2.i = phi i32 [ %inc.i187.i, %get_byte.exit192.i.do.body.i_crit_edge ], [ %inc.i.i, %get_byte.exit.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %jpeg_buffer.sroa.21.2.i, i32 %20)
  %exitcond.not.i = icmp eq i32 %jpeg_buffer.sroa.21.2.i, %20
  br i1 %exitcond.not.i, label %do.body.i.if.then13_crit_edge, label %get_byte.exit192.i

do.body.i.if.then13_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

get_byte.exit192.i:                               ; preds = %do.body.i
  %inc.i187.i = add i32 %jpeg_buffer.sroa.21.2.i, 1
  %arrayidx.i188.i = getelementptr i8, ptr %call6, i32 %jpeg_buffer.sroa.21.2.i
  %27 = ptrtoint ptr %arrayidx.i188.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i188.i, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %28, label %sw.default.i [
    i8 -1, label %get_byte.exit192.i.do.body.i_crit_edge
    i8 -41, label %get_byte.exit192.i.sw.epilog.i_crit_edge
    i8 0, label %get_byte.exit192.i.while.cond.backedge.i_crit_edge
    i8 -64, label %sw.bb.i
    i8 -37, label %sw.bb45.i
    i8 -60, label %sw.bb59.i
    i8 -38, label %sw.bb75.i
    i8 -40, label %get_byte.exit192.i.sw.epilog.i_crit_edge173
    i8 -39, label %get_byte.exit192.i.sw.epilog.i_crit_edge174
    i8 1, label %get_byte.exit192.i.sw.epilog.i_crit_edge175
    i8 -48, label %get_byte.exit192.i.sw.epilog.i_crit_edge176
    i8 -47, label %get_byte.exit192.i.sw.epilog.i_crit_edge177
    i8 -46, label %get_byte.exit192.i.sw.epilog.i_crit_edge178
    i8 -45, label %get_byte.exit192.i.sw.epilog.i_crit_edge179
    i8 -44, label %get_byte.exit192.i.sw.epilog.i_crit_edge180
    i8 -43, label %get_byte.exit192.i.sw.epilog.i_crit_edge181
    i8 -42, label %get_byte.exit192.i.sw.epilog.i_crit_edge182
  ]

get_byte.exit192.i.sw.epilog.i_crit_edge182:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge181:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge180:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge179:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge178:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge177:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge176:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge175:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge174:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.sw.epilog.i_crit_edge173:      ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.while.cond.backedge.i_crit_edge: ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge.i

get_byte.exit192.i.sw.epilog.i_crit_edge:         ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit192.i.do.body.i_crit_edge:           ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

sw.bb.i:                                          ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i187.i, i32 %20)
  %cmp.not.i.i.i = icmp ult i32 %inc.i187.i, %20
  br i1 %cmp.not.i.i.i, label %get_byte.exit.i.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit.i.i:                                ; preds = %sw.bb.i
  %inc.i.i.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %20)
  %cmp.not.i11.i.i = icmp ult i32 %inc.i.i.i, %20
  br i1 %cmp.not.i11.i.i, label %if.end17.i, label %get_byte.exit.i.i.sw.epilog.i_crit_edge

get_byte.exit.i.i.sw.epilog.i_crit_edge:          ; preds = %get_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end17.i:                                       ; preds = %get_byte.exit.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %call6, i32 %inc.i187.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %31 to i32
  %inc.i13.i.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 3
  %arrayidx.i14.i.i = getelementptr i8, ptr %call6, i32 %inc.i.i.i
  %32 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i14.i.i, align 1
  %conv.i15.i.i = zext i8 %33 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i15.i.i
  %sub.i = add nsw i32 %or.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool18.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.then13_crit_edge, label %if.end20.i

if.end17.i.if.then13_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.end20.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i13.i.i, i32 %20)
  %cmp.not.i195.i = icmp ult i32 %inc.i13.i.i, %20
  br i1 %cmp.not.i195.i, label %get_byte.exit202.i, label %if.end20.i.sw.epilog.i_crit_edge

if.end20.i.sw.epilog.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit202.i:                               ; preds = %if.end20.i
  %inc.i197.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i197.i, i32 %20)
  %cmp.not.i.i204.i = icmp ult i32 %inc.i197.i, %20
  br i1 %cmp.not.i.i204.i, label %get_byte.exit.i208.i, label %get_byte.exit202.i.sw.epilog.i_crit_edge

get_byte.exit202.i.sw.epilog.i_crit_edge:         ; preds = %get_byte.exit202.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit.i208.i:                             ; preds = %get_byte.exit202.i
  %inc.i.i206.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i206.i, i32 %20)
  %cmp.not.i11.i207.i = icmp ult i32 %inc.i.i206.i, %20
  br i1 %cmp.not.i11.i207.i, label %if.end29.i, label %get_byte.exit.i208.i.sw.epilog.i_crit_edge

get_byte.exit.i208.i.sw.epilog.i_crit_edge:       ; preds = %get_byte.exit.i208.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end29.i:                                       ; preds = %get_byte.exit.i208.i
  %arrayidx.i.i209.i = getelementptr i8, ptr %call6, i32 %inc.i197.i
  %34 = ptrtoint ptr %arrayidx.i.i209.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i209.i, align 1
  %conv.i.i210.i = zext i8 %35 to i32
  %inc.i13.i211.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 6
  %arrayidx.i14.i212.i = getelementptr i8, ptr %call6, i32 %inc.i.i206.i
  %36 = ptrtoint ptr %arrayidx.i14.i212.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i14.i212.i, align 1
  %conv.i15.i213.i = zext i8 %37 to i32
  %shl.i214.i = shl nuw nsw i32 %conv.i.i210.i, 8
  %or.i215.i = or i32 %shl.i214.i, %conv.i15.i213.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i13.i211.i, i32 %20)
  %cmp.not.i.i220.i = icmp ult i32 %inc.i13.i211.i, %20
  br i1 %cmp.not.i.i220.i, label %get_byte.exit.i224.i, label %if.end29.i.sw.epilog.i_crit_edge

if.end29.i.sw.epilog.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit.i224.i:                             ; preds = %if.end29.i
  %inc.i.i222.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i222.i, i32 %20)
  %cmp.not.i11.i223.i = icmp ult i32 %inc.i.i222.i, %20
  br i1 %cmp.not.i11.i223.i, label %if.end33.i, label %get_byte.exit.i224.i.sw.epilog.i_crit_edge

get_byte.exit.i224.i.sw.epilog.i_crit_edge:       ; preds = %get_byte.exit.i224.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end33.i:                                       ; preds = %get_byte.exit.i224.i
  %arrayidx.i.i225.i = getelementptr i8, ptr %call6, i32 %inc.i13.i211.i
  %38 = ptrtoint ptr %arrayidx.i.i225.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i225.i, align 1
  %conv.i.i226.i = zext i8 %39 to i32
  %inc.i13.i227.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 8
  %arrayidx.i14.i228.i = getelementptr i8, ptr %call6, i32 %inc.i.i222.i
  %40 = ptrtoint ptr %arrayidx.i14.i228.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i14.i228.i, align 1
  %conv.i15.i229.i = zext i8 %41 to i32
  %shl.i230.i = shl nuw nsw i32 %conv.i.i226.i, 8
  %or.i231.i = or i32 %shl.i230.i, %conv.i15.i229.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i13.i227.i, i32 %20)
  %cmp.not.i236.i = icmp ult i32 %inc.i13.i227.i, %20
  br i1 %cmp.not.i236.i, label %get_byte.exit243.i, label %if.end33.i.sw.epilog.i_crit_edge

if.end33.i.sw.epilog.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit243.i:                               ; preds = %if.end33.i
  %inc.i238.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 9
  %arrayidx.i239.i = getelementptr i8, ptr %call6, i32 %inc.i13.i227.i
  %42 = ptrtoint ptr %arrayidx.i239.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i239.i, align 1
  %conv.i240.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cond473.i = icmp eq i8 %43, 1
  br i1 %cond473.i, label %get_byte.exit243.i.while.cond.preheader.i.i_crit_edge, label %while.body.i.preheader.i

get_byte.exit243.i.while.cond.preheader.i.i_crit_edge: ; preds = %get_byte.exit243.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader.i.i

while.body.i.preheader.i:                         ; preds = %get_byte.exit243.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i238.i, i32 %20)
  %cmp.not.i.i245.i = icmp ult i32 %inc.i238.i, %20
  %inc.i.i246.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 10
  %spec.select.i = select i1 %cmp.not.i.i245.i, i32 %inc.i.i246.i, i32 %inc.i238.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %20)
  %cmp.not.i249.i = icmp ult i32 %spec.select.i, %20
  br i1 %cmp.not.i249.i, label %if.end.i254.i, label %while.body.i.preheader.i.get_byte.exit256.i_crit_edge

while.body.i.preheader.i.get_byte.exit256.i_crit_edge: ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_byte.exit256.i

if.end.i254.i:                                    ; preds = %while.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i251.i = add nuw i32 %spec.select.i, 1
  %arrayidx.i252.i = getelementptr i8, ptr %call6, i32 %spec.select.i
  %44 = ptrtoint ptr %arrayidx.i252.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i252.i, align 1
  %conv.i253.i = zext i8 %45 to i32
  br label %get_byte.exit256.i

get_byte.exit256.i:                               ; preds = %if.end.i254.i, %while.body.i.preheader.i.get_byte.exit256.i_crit_edge
  %jpeg_buffer.sroa.21.11.i = phi i32 [ %inc.i251.i, %if.end.i254.i ], [ %spec.select.i, %while.body.i.preheader.i.get_byte.exit256.i_crit_edge ]
  %retval.0.i255.i = phi i32 [ %conv.i253.i, %if.end.i254.i ], [ -1, %while.body.i.preheader.i.get_byte.exit256.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp42.i = icmp ugt i8 %43, 3
  br i1 %cmp42.i, label %get_byte.exit256.i.if.then13_crit_edge, label %if.end44.i

get_byte.exit256.i.if.then13_crit_edge:           ; preds = %get_byte.exit256.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.end44.i:                                       ; preds = %get_byte.exit256.i
  call void @__sanitizer_cov_trace_cmp4(i32 %jpeg_buffer.sroa.21.11.i, i32 %20)
  %cmp.not.i.i262.i = icmp ult i32 %jpeg_buffer.sroa.21.11.i, %20
  %inc.i.i264.i = zext i1 %cmp.not.i.i262.i to i32
  %spec.select475.i = add nuw i32 %jpeg_buffer.sroa.21.11.i, %inc.i.i264.i
  %mul.i = shl nuw nsw i32 %conv.i240.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp.i.i = icmp eq i8 %43, 0
  br i1 %cmp.i.i, label %if.end44.i.sw.epilog.i_crit_edge, label %if.end44.i.while.cond.preheader.i.i_crit_edge

if.end44.i.while.cond.preheader.i.i_crit_edge:    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.preheader.i.i

if.end44.i.sw.epilog.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

while.cond.preheader.i.i:                         ; preds = %if.end44.i.while.cond.preheader.i.i_crit_edge, %get_byte.exit243.i.while.cond.preheader.i.i_crit_edge
  %mul459.i = phi i32 [ %mul.i, %if.end44.i.while.cond.preheader.i.i_crit_edge ], [ 2, %get_byte.exit243.i.while.cond.preheader.i.i_crit_edge ]
  %jpeg_buffer.sroa.21.14450458.i = phi i32 [ %spec.select475.i, %if.end44.i.while.cond.preheader.i.i_crit_edge ], [ %inc.i238.i, %get_byte.exit243.i.while.cond.preheader.i.i_crit_edge ]
  %subsampling.1451456.i = phi i32 [ %retval.0.i255.i, %if.end44.i.while.cond.preheader.i.i_crit_edge ], [ 51, %get_byte.exit243.i.while.cond.preheader.i.i_crit_edge ]
  br label %while.body.i276.i

while.body.i276.i:                                ; preds = %while.body.i276.i.while.body.i276.i_crit_edge, %while.cond.preheader.i.i
  %jpeg_buffer.sroa.21.15.i = phi i32 [ %jpeg_buffer.sroa.21.14450458.i, %while.cond.preheader.i.i ], [ %spec.select477.i, %while.body.i276.i.while.body.i276.i_crit_edge ]
  %len.addr.06.i272.i = phi i32 [ %mul459.i, %while.cond.preheader.i.i ], [ %dec.i274.i, %while.body.i276.i.while.body.i276.i_crit_edge ]
  %inc.i35.i273.i = phi i32 [ %jpeg_buffer.sroa.21.14450458.i, %while.cond.preheader.i.i ], [ %spec.select478.i, %while.body.i276.i.while.body.i276.i_crit_edge ]
  %dec.i274.i = add i32 %len.addr.06.i272.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i35.i273.i, i32 %20)
  %cmp.not.i.i275.i = icmp ult i32 %inc.i35.i273.i, %20
  %inc.i.i277.i = add nuw i32 %inc.i35.i273.i, 1
  %spec.select477.i = select i1 %cmp.not.i.i275.i, i32 %inc.i.i277.i, i32 %jpeg_buffer.sroa.21.15.i
  %spec.select478.i = select i1 %cmp.not.i.i275.i, i32 %inc.i.i277.i, i32 %inc.i35.i273.i
  %tobool.not.i280.i = icmp eq i32 %dec.i274.i, 0
  br i1 %tobool.not.i280.i, label %while.body.i276.i.sw.epilog.i_crit_edge, label %while.body.i276.i.while.body.i276.i_crit_edge

while.body.i276.i.while.body.i276.i_crit_edge:    ; preds = %while.body.i276.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i276.i

while.body.i276.i.sw.epilog.i_crit_edge:          ; preds = %while.body.i276.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i187.i, i32 %20)
  %cmp.not.i.i284.i = icmp ult i32 %inc.i187.i, %20
  br i1 %cmp.not.i.i284.i, label %get_byte.exit.i288.i, label %sw.bb45.i.sw.epilog.i_crit_edge

sw.bb45.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit.i288.i:                             ; preds = %sw.bb45.i
  %inc.i.i286.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i286.i, i32 %20)
  %cmp.not.i11.i287.i = icmp ult i32 %inc.i.i286.i, %20
  br i1 %cmp.not.i11.i287.i, label %if.end49.i, label %get_byte.exit.i288.i.sw.epilog.i_crit_edge

get_byte.exit.i288.i.sw.epilog.i_crit_edge:       ; preds = %get_byte.exit.i288.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end49.i:                                       ; preds = %get_byte.exit.i288.i
  %arrayidx.i.i289.i = getelementptr i8, ptr %call6, i32 %inc.i187.i
  %46 = ptrtoint ptr %arrayidx.i.i289.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i289.i, align 1
  %conv.i.i290.i = zext i8 %47 to i32
  %arrayidx.i14.i292.i = getelementptr i8, ptr %call6, i32 %inc.i.i286.i
  %48 = ptrtoint ptr %arrayidx.i14.i292.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i14.i292.i, align 1
  %conv.i15.i293.i = zext i8 %49 to i32
  %shl.i294.i = shl nuw nsw i32 %conv.i.i290.i, 8
  %or.i295.i = or i32 %shl.i294.i, %conv.i15.i293.i
  %sub50.i = add nsw i32 %or.i295.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50.i)
  %tobool51.not.i = icmp eq i32 %sub50.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %n_dqt.0.ph551.i)
  %cmp54.i = icmp sgt i32 %n_dqt.0.ph551.i, 3
  %or.cond182.i = select i1 %tobool51.not.i, i1 true, i1 %cmp54.i
  br i1 %or.cond182.i, label %if.end49.i.if.then13_crit_edge, label %if.end56.i

if.end49.i.if.then13_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.end56.i:                                       ; preds = %if.end49.i
  %inc.i13.i291.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 3
  %arrayidx.i = getelementptr [4 x i32], ptr %dqt.i, i32 0, i32 %n_dqt.0.ph551.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc.i13.i291.i, ptr %arrayidx.i, align 4
  %inc.i = add nsw i32 %n_dqt.0.ph551.i, 1
  %arrayidx58.i = getelementptr [4 x i32], ptr %dqt_len.i, i32 0, i32 %n_dqt.0.ph551.i
  %51 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub50.i, ptr %arrayidx58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i295.i)
  %cmp.i299.i = icmp ult i32 %or.i295.i, 3
  br i1 %cmp.i299.i, label %if.end56.i.sw.epilog.i_crit_edge, label %if.end56.i.while.body.i307.i_crit_edge

if.end56.i.while.body.i307.i_crit_edge:           ; preds = %if.end56.i
  br label %while.body.i307.i

if.end56.i.sw.epilog.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

while.body.i307.i:                                ; preds = %while.body.i307.i.while.body.i307.i_crit_edge, %if.end56.i.while.body.i307.i_crit_edge
  %jpeg_buffer.sroa.21.19.i = phi i32 [ %spec.select479.i, %while.body.i307.i.while.body.i307.i_crit_edge ], [ %inc.i13.i291.i, %if.end56.i.while.body.i307.i_crit_edge ]
  %len.addr.06.i303.i = phi i32 [ %dec.i305.i, %while.body.i307.i.while.body.i307.i_crit_edge ], [ %sub50.i, %if.end56.i.while.body.i307.i_crit_edge ]
  %inc.i35.i304.i = phi i32 [ %spec.select480.i, %while.body.i307.i.while.body.i307.i_crit_edge ], [ %inc.i13.i291.i, %if.end56.i.while.body.i307.i_crit_edge ]
  %dec.i305.i = add nsw i32 %len.addr.06.i303.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i35.i304.i, i32 %20)
  %cmp.not.i.i306.i = icmp ult i32 %inc.i35.i304.i, %20
  %inc.i.i308.i = add nuw i32 %inc.i35.i304.i, 1
  %spec.select479.i = select i1 %cmp.not.i.i306.i, i32 %inc.i.i308.i, i32 %jpeg_buffer.sroa.21.19.i
  %spec.select480.i = select i1 %cmp.not.i.i306.i, i32 %inc.i.i308.i, i32 %inc.i35.i304.i
  %tobool.not.i311.i = icmp eq i32 %dec.i305.i, 0
  br i1 %tobool.not.i311.i, label %while.body.i307.i.sw.epilog.i_crit_edge, label %while.body.i307.i.while.body.i307.i_crit_edge

while.body.i307.i.while.body.i307.i_crit_edge:    ; preds = %while.body.i307.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i307.i

while.body.i307.i.sw.epilog.i_crit_edge:          ; preds = %while.body.i307.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb59.i:                                        ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i187.i, i32 %20)
  %cmp.not.i.i315.i = icmp ult i32 %inc.i187.i, %20
  br i1 %cmp.not.i.i315.i, label %get_byte.exit.i319.i, label %sw.bb59.i.sw.epilog.i_crit_edge

sw.bb59.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit.i319.i:                             ; preds = %sw.bb59.i
  %inc.i.i317.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i317.i, i32 %20)
  %cmp.not.i11.i318.i = icmp ult i32 %inc.i.i317.i, %20
  br i1 %cmp.not.i11.i318.i, label %if.end63.i, label %get_byte.exit.i319.i.sw.epilog.i_crit_edge

get_byte.exit.i319.i.sw.epilog.i_crit_edge:       ; preds = %get_byte.exit.i319.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end63.i:                                       ; preds = %get_byte.exit.i319.i
  %arrayidx.i.i320.i = getelementptr i8, ptr %call6, i32 %inc.i187.i
  %52 = ptrtoint ptr %arrayidx.i.i320.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i320.i, align 1
  %conv.i.i321.i = zext i8 %53 to i32
  %arrayidx.i14.i323.i = getelementptr i8, ptr %call6, i32 %inc.i.i317.i
  %54 = ptrtoint ptr %arrayidx.i14.i323.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i14.i323.i, align 1
  %conv.i15.i324.i = zext i8 %55 to i32
  %shl.i325.i = shl nuw nsw i32 %conv.i.i321.i, 8
  %or.i326.i = or i32 %shl.i325.i, %conv.i15.i324.i
  %sub64.i = add nsw i32 %or.i326.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub64.i)
  %tobool65.not.i = icmp eq i32 %sub64.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %n_dht.0.ph549.i)
  %cmp68.i = icmp sgt i32 %n_dht.0.ph549.i, 3
  %or.cond183.i = select i1 %tobool65.not.i, i1 true, i1 %cmp68.i
  br i1 %or.cond183.i, label %if.end63.i.if.then13_crit_edge, label %if.end70.i

if.end63.i.if.then13_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.end70.i:                                       ; preds = %if.end63.i
  %inc.i13.i322.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 3
  %arrayidx72.i = getelementptr [4 x i32], ptr %dht.i, i32 0, i32 %n_dht.0.ph549.i
  %56 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %inc.i13.i322.i, ptr %arrayidx72.i, align 4
  %inc73.i = add nsw i32 %n_dht.0.ph549.i, 1
  %arrayidx74.i = getelementptr [4 x i32], ptr %dht_len.i, i32 0, i32 %n_dht.0.ph549.i
  %57 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub64.i, ptr %arrayidx74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i326.i)
  %cmp.i330.i = icmp ult i32 %or.i326.i, 3
  br i1 %cmp.i330.i, label %if.end70.i.sw.epilog.i_crit_edge, label %if.end70.i.while.body.i338.i_crit_edge

if.end70.i.while.body.i338.i_crit_edge:           ; preds = %if.end70.i
  br label %while.body.i338.i

if.end70.i.sw.epilog.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

while.body.i338.i:                                ; preds = %while.body.i338.i.while.body.i338.i_crit_edge, %if.end70.i.while.body.i338.i_crit_edge
  %jpeg_buffer.sroa.21.23.i = phi i32 [ %spec.select481.i, %while.body.i338.i.while.body.i338.i_crit_edge ], [ %inc.i13.i322.i, %if.end70.i.while.body.i338.i_crit_edge ]
  %len.addr.06.i334.i = phi i32 [ %dec.i336.i, %while.body.i338.i.while.body.i338.i_crit_edge ], [ %sub64.i, %if.end70.i.while.body.i338.i_crit_edge ]
  %inc.i35.i335.i = phi i32 [ %spec.select482.i, %while.body.i338.i.while.body.i338.i_crit_edge ], [ %inc.i13.i322.i, %if.end70.i.while.body.i338.i_crit_edge ]
  %dec.i336.i = add nsw i32 %len.addr.06.i334.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i35.i335.i, i32 %20)
  %cmp.not.i.i337.i = icmp ult i32 %inc.i35.i335.i, %20
  %inc.i.i339.i = add nuw i32 %inc.i35.i335.i, 1
  %spec.select481.i = select i1 %cmp.not.i.i337.i, i32 %inc.i.i339.i, i32 %jpeg_buffer.sroa.21.23.i
  %spec.select482.i = select i1 %cmp.not.i.i337.i, i32 %inc.i.i339.i, i32 %inc.i35.i335.i
  %tobool.not.i342.i = icmp eq i32 %dec.i336.i, 0
  br i1 %tobool.not.i342.i, label %while.body.i338.i.sw.epilog.i_crit_edge, label %while.body.i338.i.while.body.i338.i_crit_edge

while.body.i338.i.while.body.i338.i_crit_edge:    ; preds = %while.body.i338.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i338.i

while.body.i338.i.sw.epilog.i_crit_edge:          ; preds = %while.body.i338.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb75.i:                                        ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub77.i = add i32 %jpeg_buffer.sroa.21.2.i, -1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %get_byte.exit192.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i187.i, i32 %20)
  %cmp.not.i.i346.i = icmp ult i32 %inc.i187.i, %20
  br i1 %cmp.not.i.i346.i, label %get_byte.exit.i350.i, label %sw.default.i.sw.epilog.i_crit_edge

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

get_byte.exit.i350.i:                             ; preds = %sw.default.i
  %inc.i.i348.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i348.i, i32 %20)
  %cmp.not.i11.i349.i = icmp ult i32 %inc.i.i348.i, %20
  br i1 %cmp.not.i11.i349.i, label %if.end83.i, label %get_byte.exit.i350.i.sw.epilog.i_crit_edge

get_byte.exit.i350.i.sw.epilog.i_crit_edge:       ; preds = %get_byte.exit.i350.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.end83.i:                                       ; preds = %get_byte.exit.i350.i
  %arrayidx.i.i351.i = getelementptr i8, ptr %call6, i32 %inc.i187.i
  %58 = ptrtoint ptr %arrayidx.i.i351.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i351.i, align 1
  %conv.i.i352.i = zext i8 %59 to i32
  %inc.i13.i353.i = add nuw i32 %jpeg_buffer.sroa.21.2.i, 3
  %arrayidx.i14.i354.i = getelementptr i8, ptr %call6, i32 %inc.i.i348.i
  %60 = ptrtoint ptr %arrayidx.i14.i354.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i14.i354.i, align 1
  %conv.i15.i355.i = zext i8 %61 to i32
  %shl.i356.i = shl nuw nsw i32 %conv.i.i352.i, 8
  %or.i357.i = or i32 %shl.i356.i, %conv.i15.i355.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i357.i)
  %cmp.i361.i = icmp ult i32 %or.i357.i, 3
  br i1 %cmp.i361.i, label %if.end83.i.sw.epilog.i_crit_edge, label %while.body.i369.preheader.i

if.end83.i.sw.epilog.i_crit_edge:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

while.body.i369.preheader.i:                      ; preds = %if.end83.i
  %sub84.i = add nsw i32 %or.i357.i, -2
  br label %while.body.i369.i

while.body.i369.i:                                ; preds = %while.body.i369.i.while.body.i369.i_crit_edge, %while.body.i369.preheader.i
  %jpeg_buffer.sroa.21.27.i = phi i32 [ %spec.select483.i, %while.body.i369.i.while.body.i369.i_crit_edge ], [ %inc.i13.i353.i, %while.body.i369.preheader.i ]
  %len.addr.06.i365.i = phi i32 [ %dec.i367.i, %while.body.i369.i.while.body.i369.i_crit_edge ], [ %sub84.i, %while.body.i369.preheader.i ]
  %inc.i35.i366.i = phi i32 [ %spec.select484.i, %while.body.i369.i.while.body.i369.i_crit_edge ], [ %inc.i13.i353.i, %while.body.i369.preheader.i ]
  %dec.i367.i = add nsw i32 %len.addr.06.i365.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i35.i366.i, i32 %20)
  %cmp.not.i.i368.i = icmp ult i32 %inc.i35.i366.i, %20
  %inc.i.i370.i = add nuw i32 %inc.i35.i366.i, 1
  %spec.select483.i = select i1 %cmp.not.i.i368.i, i32 %inc.i.i370.i, i32 %jpeg_buffer.sroa.21.27.i
  %spec.select484.i = select i1 %cmp.not.i.i368.i, i32 %inc.i.i370.i, i32 %inc.i35.i366.i
  %tobool.not.i373.i = icmp eq i32 %dec.i367.i, 0
  br i1 %tobool.not.i373.i, label %while.body.i369.i.sw.epilog.i_crit_edge, label %while.body.i369.i.while.body.i369.i_crit_edge

while.body.i369.i.while.body.i369.i_crit_edge:    ; preds = %while.body.i369.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i369.i

while.body.i369.i.sw.epilog.i_crit_edge:          ; preds = %while.body.i369.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %while.body.i369.i.sw.epilog.i_crit_edge, %if.end83.i.sw.epilog.i_crit_edge, %get_byte.exit.i350.i.sw.epilog.i_crit_edge, %sw.default.i.sw.epilog.i_crit_edge, %sw.bb75.i, %while.body.i338.i.sw.epilog.i_crit_edge, %if.end70.i.sw.epilog.i_crit_edge, %get_byte.exit.i319.i.sw.epilog.i_crit_edge, %sw.bb59.i.sw.epilog.i_crit_edge, %while.body.i307.i.sw.epilog.i_crit_edge, %if.end56.i.sw.epilog.i_crit_edge, %get_byte.exit.i288.i.sw.epilog.i_crit_edge, %sw.bb45.i.sw.epilog.i_crit_edge, %while.body.i276.i.sw.epilog.i_crit_edge, %if.end44.i.sw.epilog.i_crit_edge, %if.end33.i.sw.epilog.i_crit_edge, %get_byte.exit.i224.i.sw.epilog.i_crit_edge, %if.end29.i.sw.epilog.i_crit_edge, %get_byte.exit.i208.i.sw.epilog.i_crit_edge, %get_byte.exit202.i.sw.epilog.i_crit_edge, %if.end20.i.sw.epilog.i_crit_edge, %get_byte.exit.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %get_byte.exit192.i.sw.epilog.i_crit_edge, %get_byte.exit192.i.sw.epilog.i_crit_edge173, %get_byte.exit192.i.sw.epilog.i_crit_edge174, %get_byte.exit192.i.sw.epilog.i_crit_edge175, %get_byte.exit192.i.sw.epilog.i_crit_edge176, %get_byte.exit192.i.sw.epilog.i_crit_edge177, %get_byte.exit192.i.sw.epilog.i_crit_edge178, %get_byte.exit192.i.sw.epilog.i_crit_edge179, %get_byte.exit192.i.sw.epilog.i_crit_edge180, %get_byte.exit192.i.sw.epilog.i_crit_edge181, %get_byte.exit192.i.sw.epilog.i_crit_edge182
  %height.2.i = phi i32 [ %height.0.ph544.i, %sw.bb75.i ], [ %or.i215.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %or.i215.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %or.i215.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %or.i215.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %height.0.ph544.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %height.0.ph544.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %or.i215.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %height.0.ph544.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %width.2.i = phi i32 [ %width.0.ph545.i, %sw.bb75.i ], [ %or.i231.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %or.i231.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %width.0.ph545.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %width.0.ph545.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %or.i231.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %width.0.ph545.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %jpeg_buffer.sroa.21.30.i = phi i32 [ %inc.i187.i, %sw.bb75.i ], [ %spec.select475.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %inc.i13.i291.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %inc.i13.i322.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %inc.i13.i353.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %inc.i187.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %inc.i.i.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %inc.i197.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %inc.i.i206.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %inc.i13.i211.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %inc.i.i222.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %inc.i13.i227.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %inc.i187.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %inc.i.i286.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %inc.i187.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %inc.i.i317.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %inc.i187.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %inc.i.i348.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %inc.i187.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %spec.select483.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %spec.select477.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %spec.select479.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %spec.select481.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %notfound.1.i = phi i32 [ %notfound.0.ph548.i, %sw.bb75.i ], [ 0, %if.end44.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %notfound.0.ph548.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %notfound.0.ph548.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ 0, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %notfound.0.ph548.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %n_dht.1.i = phi i32 [ %n_dht.0.ph549.i, %sw.bb75.i ], [ %n_dht.0.ph549.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %inc73.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %n_dht.0.ph549.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %n_dht.0.ph549.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %n_dht.0.ph549.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %inc73.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %n_dqt.1.i = phi i32 [ %n_dqt.0.ph551.i, %sw.bb75.i ], [ %n_dqt.0.ph551.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %inc.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %n_dqt.0.ph551.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %n_dqt.0.ph551.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %inc.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %n_dqt.0.ph551.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %subsampling.2.i = phi i32 [ %subsampling.0.ph553.i, %sw.bb75.i ], [ %retval.0.i255.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %subsampling.0.ph553.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %subsampling.0.ph553.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %subsampling.1451456.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %subsampling.0.ph553.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %sos.1.i = phi i32 [ %sub77.i, %sw.bb75.i ], [ %sos.0.ph554.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %sos.0.ph554.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %sos.0.ph554.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %sos.0.ph554.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %sof.1.i = phi i32 [ %sof.0.ph556.i, %sw.bb75.i ], [ %inc.i13.i.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %sof.0.ph556.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %sof.0.ph556.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %inc.i13.i.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %sof.0.ph556.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  %sof_len.1.i = phi i32 [ %sof_len.0.ph557.i, %sw.bb75.i ], [ %sub.i, %if.end44.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %if.end56.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %if.end70.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %if.end83.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %get_byte.exit.i.i.sw.epilog.i_crit_edge ], [ %sub.i, %if.end20.i.sw.epilog.i_crit_edge ], [ %sub.i, %get_byte.exit202.i.sw.epilog.i_crit_edge ], [ %sub.i, %get_byte.exit.i208.i.sw.epilog.i_crit_edge ], [ %sub.i, %if.end29.i.sw.epilog.i_crit_edge ], [ %sub.i, %get_byte.exit.i224.i.sw.epilog.i_crit_edge ], [ %sub.i, %if.end33.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %sw.bb45.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %get_byte.exit.i288.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %sw.bb59.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %get_byte.exit.i319.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %sw.default.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %get_byte.exit.i350.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge173 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge174 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge175 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge176 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge177 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge178 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge179 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge180 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge181 ], [ %sof_len.0.ph557.i, %get_byte.exit192.i.sw.epilog.i_crit_edge182 ], [ %sof_len.0.ph557.i, %while.body.i369.i.sw.epilog.i_crit_edge ], [ %sub.i, %while.body.i276.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %while.body.i307.i.sw.epilog.i_crit_edge ], [ %sof_len.0.ph557.i, %while.body.i338.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notfound.1.i)
  %tobool.not.i = icmp ne i32 %notfound.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sos.1.i)
  %tobool2.not.i = icmp eq i32 %sos.1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %sw.epilog.i.while.body.lr.ph.i_crit_edge, label %lor.lhs.false87.i

sw.epilog.i.while.body.lr.ph.i_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.lr.ph.i

lor.lhs.false87.i:                                ; preds = %sw.epilog.i
  %62 = zext i32 %subsampling.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %subsampling.2.i, label %lor.lhs.false87.i.if.then13_crit_edge [
    i32 17, label %lor.lhs.false87.i.if.end90.i_crit_edge
    i32 33, label %sw.bb2.i.i
    i32 34, label %sw.bb4.i.i
    i32 51, label %sw.bb6.i.i
    i32 65, label %sw.bb8.i.i
  ]

lor.lhs.false87.i.if.end90.i_crit_edge:           ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

lor.lhs.false87.i.if.then13_crit_edge:            ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

sw.bb2.i.i:                                       ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

sw.bb4.i.i:                                       ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

sw.bb6.i.i:                                       ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

sw.bb8.i.i:                                       ; preds = %lor.lhs.false87.i
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %variant.i.i = getelementptr inbounds %struct.s5p_jpeg, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %variant.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %68, label %sw.bb8.i.i.if.then13_crit_edge [
    i32 1, label %sw.bb8.i.i.if.end90.i_crit_edge
    i32 3, label %sw.bb8.i.i.if.end90.i_crit_edge183
    i32 4, label %sw.bb8.i.i.if.end90.i_crit_edge184
  ]

sw.bb8.i.i.if.end90.i_crit_edge184:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

sw.bb8.i.i.if.end90.i_crit_edge183:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

sw.bb8.i.i.if.end90.i_crit_edge:                  ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90.i

sw.bb8.i.i.if.then13_crit_edge:                   ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.end90.i:                                       ; preds = %sw.bb8.i.i.if.end90.i_crit_edge, %sw.bb8.i.i.if.end90.i_crit_edge183, %sw.bb8.i.i.if.end90.i_crit_edge184, %sw.bb6.i.i, %sw.bb4.i.i, %sw.bb2.i.i, %lor.lhs.false87.i.if.end90.i_crit_edge
  %.sink.i.i = phi i16 [ 1, %sw.bb2.i.i ], [ 2, %sw.bb4.i.i ], [ 5, %sw.bb6.i.i ], [ 0, %lor.lhs.false87.i.if.end90.i_crit_edge ], [ 3, %sw.bb8.i.i.if.end90.i_crit_edge ], [ 3, %sw.bb8.i.i.if.end90.i_crit_edge183 ], [ 3, %sw.bb8.i.i.if.end90.i_crit_edge184 ]
  %subsampling1.i.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %subsampling1.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %.sink.i.i, ptr %subsampling1.i.i, align 4
  %71 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %width.2.i, ptr %w, align 4
  %72 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %height.2.i, ptr %h, align 4
  %sos91.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 3
  %73 = ptrtoint ptr %sos91.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sos.1.i, ptr %sos91.i, align 4
  %dht92.i = getelementptr %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 4
  %n.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 4, i32 2
  %74 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %n_dht.1.i, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_dht.1.i)
  %tobool94.not559.i = icmp eq i32 %n_dht.1.i, 0
  br i1 %tobool94.not559.i, label %if.end90.i.while.end102.i_crit_edge, label %if.end90.i.while.body95.i_crit_edge

if.end90.i.while.body95.i_crit_edge:              ; preds = %if.end90.i
  br label %while.body95.i

if.end90.i.while.end102.i_crit_edge:              ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end102.i

while.body95.i:                                   ; preds = %while.body95.i.while.body95.i_crit_edge, %if.end90.i.while.body95.i_crit_edge
  %n_dht.2560.i = phi i32 [ %dec.i, %while.body95.i.while.body95.i_crit_edge ], [ %n_dht.1.i, %if.end90.i.while.body95.i_crit_edge ]
  %dec.i = add i32 %n_dht.2560.i, -1
  %arrayidx96.i = getelementptr [4 x i32], ptr %dht.i, i32 0, i32 %dec.i
  %75 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx96.i, align 4
  %arrayidx98.i = getelementptr [4 x i32], ptr %dht92.i, i32 0, i32 %dec.i
  %77 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx98.i, align 4
  %arrayidx99.i = getelementptr [4 x i32], ptr %dht_len.i, i32 0, i32 %dec.i
  %78 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx99.i, align 4
  %arrayidx101.i = getelementptr %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 4, i32 1, i32 %dec.i
  %80 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx101.i, align 4
  %tobool94.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool94.not.i, label %while.body95.i.while.end102.i_crit_edge, label %while.body95.i.while.body95.i_crit_edge

while.body95.i.while.body95.i_crit_edge:          ; preds = %while.body95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body95.i

while.body95.i.while.end102.i_crit_edge:          ; preds = %while.body95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end102.i

while.end102.i:                                   ; preds = %while.body95.i.while.end102.i_crit_edge, %if.end90.i.while.end102.i_crit_edge
  %dqt103.i = getelementptr %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 5
  %n104.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 5, i32 2
  %81 = ptrtoint ptr %n104.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %n_dqt.1.i, ptr %n104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_dqt.1.i)
  %tobool107.not561.i = icmp eq i32 %n_dqt.1.i, 0
  br i1 %tobool107.not561.i, label %while.end102.i.if.end_crit_edge, label %while.end102.i.while.body108.i_crit_edge

while.end102.i.while.body108.i_crit_edge:         ; preds = %while.end102.i
  br label %while.body108.i

while.end102.i.if.end_crit_edge:                  ; preds = %while.end102.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body108.i:                                  ; preds = %while.body108.i.while.body108.i_crit_edge, %while.end102.i.while.body108.i_crit_edge
  %n_dqt.2562.i = phi i32 [ %dec106.i, %while.body108.i.while.body108.i_crit_edge ], [ %n_dqt.1.i, %while.end102.i.while.body108.i_crit_edge ]
  %dec106.i = add i32 %n_dqt.2562.i, -1
  %arrayidx109.i = getelementptr [4 x i32], ptr %dqt.i, i32 0, i32 %dec106.i
  %82 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx109.i, align 4
  %arrayidx112.i = getelementptr [4 x i32], ptr %dqt103.i, i32 0, i32 %dec106.i
  %84 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx112.i, align 4
  %arrayidx113.i = getelementptr [4 x i32], ptr %dqt_len.i, i32 0, i32 %dec106.i
  %85 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx113.i, align 4
  %arrayidx116.i = getelementptr %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 5, i32 1, i32 %dec106.i
  %87 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx116.i, align 4
  %tobool107.not.i = icmp eq i32 %dec106.i, 0
  br i1 %tobool107.not.i, label %while.body108.i.if.end_crit_edge, label %while.body108.i.while.body108.i_crit_edge

while.body108.i.while.body108.i_crit_edge:        ; preds = %while.body108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body108.i

while.body108.i.if.end_crit_edge:                 ; preds = %while.body108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then13:                                        ; preds = %sw.bb8.i.i.if.then13_crit_edge, %lor.lhs.false87.i.if.then13_crit_edge, %if.end63.i.if.then13_crit_edge, %if.end49.i.if.then13_crit_edge, %get_byte.exit256.i.if.then13_crit_edge, %if.end17.i.if.then13_crit_edge, %do.body.i.if.then13_crit_edge, %while.cond.backedge.i.if.then13_crit_edge, %while.body.lr.ph.i.if.then13_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dqt_len.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dqt.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dht_len.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dht.i) #14
  %hdr_parsed61 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 10
  %88 = ptrtoint ptr %hdr_parsed61 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %hdr_parsed61, align 4
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #14
  br label %cleanup31

if.end:                                           ; preds = %while.body108.i.if.end_crit_edge, %while.end102.i.if.end_crit_edge
  %sof118.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 6
  %89 = ptrtoint ptr %sof118.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sof.1.i, ptr %sof118.i, align 4
  %sof_len119.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 5, i32 7
  %90 = ptrtoint ptr %sof_len119.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sof_len.1.i, ptr %sof_len119.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dqt_len.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dqt.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dht_len.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dht.i) #14
  %hdr_parsed = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 10
  %91 = ptrtoint ptr %hdr_parsed to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %hdr_parsed, align 4
  %92 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %11)
  %cmp16.not = icmp eq i32 %93, %11
  br i1 %cmp16.not, label %lor.lhs.false, label %if.end.if.then20_crit_edge

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end
  %94 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %13)
  %cmp19.not = icmp eq i32 %95, %13
  br i1 %cmp19.not, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then20

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end.if.then20_crit_edge
  tail call void @v4l2_event_queue_fh(ptr noundef %fh, ptr noundef nonnull @s5p_jpeg_buf_queue.ev_src_ch) #14
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call3, i32 0, i32 28
  %96 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %state = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 13
  %97 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %state, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @s5p_jpeg_set_capture_queue_data(ptr noundef %3)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then23, %lor.lhs.false.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  %m2m_ctx30 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 9, i32 10
  %98 = ptrtoint ptr %m2m_ctx30 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %m2m_ctx30, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %99, ptr noundef %vb) #14
  br label %cleanup31

cleanup31:                                        ; preds = %if.end28, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_jpeg_set_capture_queue_data(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6
  %w = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w, align 4
  %w1 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %w1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %w1, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %h, align 4
  %h3 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %h3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %h3, align 4
  %6 = ptrtoint ptr %cap_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap_q, align 4
  %h_align = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %h_align to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_align, align 4
  %v_align = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %v_align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v_align, align 4
  %shl1.i = shl nuw i32 1, %11
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant.i, align 4
  %hw3250_compat.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %hw3250_compat.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %hw3250_compat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.not.i = icmp slt i8 %bf.load.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  %and.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 1
  %or.cond1.i = select i1 %or.cond.i, i1 %cmp2.i, i1 false
  %hmax.addr.0.i = select i1 %or.cond1.i, i32 %4, i32 8192
  %wmax.addr.0.i = select i1 %or.cond1.i, i32 %1, i32 8192
  tail call void @v4l_bound_align_image(ptr noundef %w1, i32 noundef 32, i32 noundef %wmax.addr.0.i, i32 noundef %9, ptr noundef %h3, i32 noundef 32, i32 noundef %hmax.addr.0.i, i32 noundef %11, i32 noundef 0) #14
  %17 = ptrtoint ptr %w1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %w1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp5.i = icmp ult i32 %18, %1
  br i1 %cmp5.i, label %land.lhs.true6.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

land.lhs.true6.i:                                 ; preds = %entry
  %shl.i = shl nuw i32 1, %9
  %add.i = add i32 %18, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %wmax.addr.0.i)
  %cmp7.i = icmp ult i32 %add.i, %wmax.addr.0.i
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true6.i.if.end10.i_crit_edge

land.lhs.true6.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %w1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %w1, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %land.lhs.true6.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %20 = ptrtoint ptr %h3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %h3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %4)
  %cmp11.i = icmp ult i32 %21, %4
  br i1 %cmp11.i, label %land.lhs.true12.i, label %if.end10.i.jpeg_bound_align_image.exit_crit_edge

if.end10.i.jpeg_bound_align_image.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %jpeg_bound_align_image.exit

land.lhs.true12.i:                                ; preds = %if.end10.i
  %add13.i = add i32 %21, %shl1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %hmax.addr.0.i)
  %cmp14.i = icmp ult i32 %add13.i, %hmax.addr.0.i
  br i1 %cmp14.i, label %if.then15.i, label %land.lhs.true12.i.jpeg_bound_align_image.exit_crit_edge

land.lhs.true12.i.jpeg_bound_align_image.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %jpeg_bound_align_image.exit

if.then15.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %h3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add13.i, ptr %h3, align 4
  br label %jpeg_bound_align_image.exit

jpeg_bound_align_image.exit:                      ; preds = %if.then15.i, %land.lhs.true12.i.jpeg_bound_align_image.exit_crit_edge, %if.end10.i.jpeg_bound_align_image.exit_crit_edge
  %23 = ptrtoint ptr %w1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %w1, align 4
  %25 = ptrtoint ptr %h3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h3, align 4
  %mul = mul i32 %26, %24
  %27 = ptrtoint ptr %cap_q to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cap_q, align 4
  %depth = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %depth, align 4
  %mul10 = mul i32 %mul, %30
  %shr = lshr i32 %mul10, 3
  %size = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6, i32 8
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr, ptr %size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_g_volatile_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10291457, i32 %3)
  %cond = icmp eq i32 %3, 10291457
  br i1 %cond, label %do.body2, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -432
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %5, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %11, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %do.body2.sw.bb28.i_crit_edge
    i32 3, label %do.body2.sw.bb28.i_crit_edge13
    i32 2, label %sw.bb70.i
    i32 4, label %sw.bb114.i
  ]

do.body2.sw.bb28.i_crit_edge13:                   ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb28.i

do.body2.sw.bb28.i_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb28.i

sw.bb.i:                                          ; preds = %do.body2
  %subsampling.i = getelementptr i8, ptr %1, i32 -420
  %13 = ptrtoint ptr %subsampling.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsampling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp.i = icmp ugt i16 %14, 3
  br i1 %cmp.i, label %do.end.i, label %sw.bb.i.if.end.i_crit_edge, !prof !193

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 592, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.i.if.end.i_crit_edge
  %15 = ptrtoint ptr %subsampling.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsampling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %cmp22.i = icmp ugt i16 %16, 2
  %narrow.i = select i1 %cmp22.i, i16 5, i16 %16
  %spec.select.i = zext i16 %narrow.i to i32
  br label %s5p_jpeg_to_user_subsampling.exit

sw.bb28.i:                                        ; preds = %do.body2.sw.bb28.i_crit_edge, %do.body2.sw.bb28.i_crit_edge13
  %subsampling30.i = getelementptr i8, ptr %1, i32 -420
  %17 = ptrtoint ptr %subsampling30.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %subsampling30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %18)
  %cmp32.i = icmp ugt i16 %18, 6
  br i1 %cmp32.i, label %do.end49.i, label %sw.bb28.i.if.end55.i_crit_edge, !prof !193

sw.bb28.i.if.end55.i_crit_edge:                   ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

do.end49.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 598, i32 noundef 9, ptr noundef null) #14
  %19 = ptrtoint ptr %subsampling30.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %.pr.i = load i16, ptr %subsampling30.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end49.i, %sw.bb28.i.if.end55.i_crit_edge
  %20 = phi i16 [ %.pr.i, %do.end49.i ], [ %18, %sw.bb28.i.if.end55.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %20)
  %cmp65.i = icmp ugt i16 %20, 3
  br i1 %cmp65.i, label %if.end55.i.s5p_jpeg_to_user_subsampling.exit_crit_edge, label %if.end68.i

if.end55.i.s5p_jpeg_to_user_subsampling.exit_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_to_user_subsampling.exit

if.end68.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv64.i = zext i16 %20 to i32
  %arrayidx.i = getelementptr [7 x i32], ptr @exynos3250_decoded_subsampling, i32 0, i32 %conv64.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  br label %s5p_jpeg_to_user_subsampling.exit

sw.bb70.i:                                        ; preds = %do.body2
  %subsampling72.i = getelementptr i8, ptr %1, i32 -420
  %23 = ptrtoint ptr %subsampling72.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %subsampling72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %24)
  %cmp74.i = icmp ugt i16 %24, 3
  br i1 %cmp74.i, label %do.end91.i, label %sw.bb70.i.if.end97.i_crit_edge, !prof !193

sw.bb70.i.if.end97.i_crit_edge:                   ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

do.end91.i:                                       ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 603, i32 noundef 9, ptr noundef null) #14
  %25 = ptrtoint ptr %subsampling72.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %.pr166.i = load i16, ptr %subsampling72.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %do.end91.i, %sw.bb70.i.if.end97.i_crit_edge
  %26 = phi i16 [ %.pr166.i, %do.end91.i ], [ %24, %sw.bb70.i.if.end97.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %cmp107.i = icmp ugt i16 %26, 2
  br i1 %cmp107.i, label %if.end97.i.s5p_jpeg_to_user_subsampling.exit_crit_edge, label %if.end110.i

if.end97.i.s5p_jpeg_to_user_subsampling.exit_crit_edge: ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_to_user_subsampling.exit

if.end110.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv106.i = zext i16 %26 to i32
  %arrayidx113.i = getelementptr [4 x i32], ptr @exynos4x12_decoded_subsampling, i32 0, i32 %conv106.i
  %27 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx113.i, align 4
  br label %s5p_jpeg_to_user_subsampling.exit

sw.bb114.i:                                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %subsampling115.i = getelementptr i8, ptr %1, i32 -420
  %29 = ptrtoint ptr %subsampling115.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subsampling115.i, align 4
  %conv116.i = zext i16 %30 to i32
  br label %s5p_jpeg_to_user_subsampling.exit

sw.default.i:                                     ; preds = %do.body2
  %subsampling118.i = getelementptr i8, ptr %1, i32 -420
  %31 = ptrtoint ptr %subsampling118.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsampling118.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %32)
  %cmp120.i = icmp ugt i16 %32, 3
  br i1 %cmp120.i, label %do.end137.i, label %sw.default.i.s5p_jpeg_to_user_subsampling.exit_crit_edge, !prof !193

sw.default.i.s5p_jpeg_to_user_subsampling.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_to_user_subsampling.exit

do.end137.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 610, i32 noundef 9, ptr noundef null) #14
  br label %s5p_jpeg_to_user_subsampling.exit

s5p_jpeg_to_user_subsampling.exit:                ; preds = %do.end137.i, %sw.default.i.s5p_jpeg_to_user_subsampling.exit_crit_edge, %sw.bb114.i, %if.end110.i, %if.end97.i.s5p_jpeg_to_user_subsampling.exit_crit_edge, %if.end68.i, %if.end55.i.s5p_jpeg_to_user_subsampling.exit_crit_edge, %if.end.i
  %retval.0.i = phi i32 [ %conv116.i, %sw.bb114.i ], [ %28, %if.end110.i ], [ %22, %if.end68.i ], [ 3, %if.end55.i.s5p_jpeg_to_user_subsampling.exit_crit_edge ], [ 2, %if.end97.i.s5p_jpeg_to_user_subsampling.exit_crit_edge ], [ 5, %do.end137.i ], [ 5, %sw.default.i.s5p_jpeg_to_user_subsampling.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i, ptr %val, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %s5p_jpeg_to_user_subsampling.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_try_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -432
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #14
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10291457, i32 %5)
  %cmp6 = icmp eq i32 %5, 10291457
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %11, label %if.then.sw.epilog.i_crit_edge [
    i32 0, label %if.then.if.end_crit_edge
    i32 1, label %if.then.sw.bb1.i_crit_edge
    i32 3, label %if.then.sw.bb1.i_crit_edge15
    i32 2, label %sw.bb2.i
  ]

if.then.sw.bb1.i_crit_edge15:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1.i

if.then.sw.bb1.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then.sw.bb1.i_crit_edge, %if.then.sw.bb1.i_crit_edge15
  %out_q.i = getelementptr i8, ptr %1, i32 -416
  %13 = ptrtoint ptr %out_q.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_q.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 876758866, i32 %16)
  %cmp.i = icmp eq i32 %16, 876758866
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.i.sw.epilog.i_crit_edge

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then
  %out_q3.i = getelementptr i8, ptr %1, i32 -416
  %18 = ptrtoint ptr %out_q3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_q3.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1497715271, i32 %21)
  %cmp6.not.i = icmp eq i32 %21, 1497715271
  br i1 %cmp6.not.i, label %sw.bb2.i.sw.epilog.i_crit_edge, label %land.lhs.true.i

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb2.i
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp7.i = icmp eq i32 %23, 5
  br i1 %cmp7.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.sw.epilog.i_crit_edge

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.epilog.i:                                      ; preds = %land.lhs.true.i.sw.epilog.i_crit_edge, %sw.bb2.i.sw.epilog.i_crit_edge, %if.then.i, %sw.bb1.i.sw.epilog.i_crit_edge, %if.then.sw.epilog.i_crit_edge
  %out_q10.i = getelementptr i8, ptr %1, i32 -416
  %24 = ptrtoint ptr %out_q10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out_q10.i, align 4
  %subsampling.i = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %subsampling.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subsampling.i, align 4
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp12.i = icmp sgt i32 %27, %29
  br i1 %cmp12.i, label %if.then13.i, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13.i, %sw.epilog.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %11, %if.then.if.end_crit_edge ], [ -22, %land.lhs.true.i.if.end_crit_edge ], [ 0, %if.then13.i ], [ 0, %sw.epilog.i.if.end_crit_edge ]
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %slock10 = getelementptr inbounds %struct.s5p_jpeg, ptr %32, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock10, i32 noundef %call3) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -432
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #14
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 10291459, label %sw.bb
    i32 10291458, label %sw.bb7
    i32 10291457, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv6 = trunc i32 %8 to i16
  %compr_quality = getelementptr i8, ptr %1, i32 -424
  %9 = ptrtoint ptr %compr_quality to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv6, ptr %compr_quality, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val8, align 4
  %conv9 = trunc i32 %11 to i16
  %restart_interval = getelementptr i8, ptr %1, i32 -422
  %12 = ptrtoint ptr %restart_interval to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv9, ptr %restart_interval, align 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val11, align 4
  %conv12 = trunc i32 %14 to i16
  %subsampling = getelementptr i8, ptr %1, i32 -420
  %15 = ptrtoint ptr %subsampling to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12, ptr %subsampling, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %slock14 = getelementptr inbounds %struct.s5p_jpeg, ptr %17, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock14, i32 noundef %call3) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -236
  %mode = getelementptr i8, ptr %priv, i32 -232
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #14
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %.str.47..str.48 = select i1 %cmp, ptr @.str.47, ptr @.str.48
  %call9 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull %.str.47..str.48, i32 noundef 32) #14
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.49, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -236
  %mode = getelementptr i8, ptr %priv, i32 -232
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant.i, align 4
  %fmt_ver_flag1.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fmt_ver_flag1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt_ver_flag1.i, align 4
  br i1 %cmp, label %entry.for.body.i_crit_edge, label %entry.for.body.i16_crit_edge

entry.for.body.i16_crit_edge:                     ; preds = %entry
  br label %for.body.i16

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.05.i = phi i32 [ %num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ %inc9.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %i.03.i, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.05.i, i32 %11)
  %cmp6.i = icmp eq i32 %num.05.i, %11
  br i1 %cmp6.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.end.i

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i32 %num.05.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %inc.i, %if.end.i ], [ %num.05.i, %for.body.i.for.inc.i_crit_edge ]
  %inc9.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 26
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i16:                                     ; preds = %for.inc.i24.for.body.i16_crit_edge, %entry.for.body.i16_crit_edge
  %num.05.i8 = phi i32 [ %num.1.i21, %for.inc.i24.for.body.i16_crit_edge ], [ 0, %entry.for.body.i16_crit_edge ]
  %i.03.i9 = phi i32 [ %inc9.i22, %for.inc.i24.for.body.i16_crit_edge ], [ 0, %entry.for.body.i16_crit_edge ]
  %flags.i10 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %i.03.i9, i32 7
  %12 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i10, align 4
  %and.i11 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  %and4.i13 = and i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i13)
  %tobool5.not.i14 = icmp eq i32 %and4.i13, 0
  %or.cond.i15 = select i1 %tobool.not.i12, i1 true, i1 %tobool5.not.i14
  br i1 %or.cond.i15, label %for.body.i16.for.inc.i24_crit_edge, label %if.then.i18

for.body.i16.for.inc.i24_crit_edge:               ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i24

if.then.i18:                                      ; preds = %for.body.i16
  %14 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.05.i8, i32 %15)
  %cmp6.i17 = icmp eq i32 %num.05.i8, %15
  br i1 %cmp6.i17, label %if.then.i18.cleanup.sink.split_crit_edge, label %if.end.i20

if.then.i18.cleanup.sink.split_crit_edge:         ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end.i20:                                       ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i19 = add i32 %num.05.i8, 1
  br label %for.inc.i24

for.inc.i24:                                      ; preds = %if.end.i20, %for.body.i16.for.inc.i24_crit_edge
  %num.1.i21 = phi i32 [ %inc.i19, %if.end.i20 ], [ %num.05.i8, %for.body.i16.for.inc.i24_crit_edge ]
  %inc9.i22 = add nuw nsw i32 %i.03.i9, 1
  %exitcond.not.i23 = icmp eq i32 %inc9.i22, 26
  br i1 %exitcond.not.i23, label %for.inc.i24.cleanup_crit_edge, label %for.inc.i24.for.body.i16_crit_edge

for.inc.i24.for.body.i16_crit_edge:               ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i16

for.inc.i24.cleanup_crit_edge:                    ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then.i18.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %i.03.i9.lcssa.sink = phi i32 [ %i.03.i, %if.then.i.cleanup.sink.split_crit_edge ], [ %i.03.i9, %if.then.i18.cleanup.sink.split_crit_edge ]
  %arrayidx13.i25 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %i.03.i9.lcssa.sink
  %16 = ptrtoint ptr %arrayidx13.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13.i25, align 4
  %pixelformat.i26 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %18 = ptrtoint ptr %pixelformat.i26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelformat.i26, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.i24.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %for.inc.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -236
  %mode = getelementptr i8, ptr %priv, i32 -232
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant.i, align 4
  %fmt_ver_flag1.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %fmt_ver_flag1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt_ver_flag1.i, align 4
  br i1 %cmp, label %entry.for.body.i_crit_edge, label %entry.for.body.i16_crit_edge

entry.for.body.i16_crit_edge:                     ; preds = %entry
  br label %for.body.i16

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.05.i = phi i32 [ %num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ %inc9.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %i.03.i, i32 7
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and4.i = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.05.i, i32 %11)
  %cmp6.i = icmp eq i32 %num.05.i, %11
  br i1 %cmp6.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.end.i

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i = add i32 %num.05.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %num.1.i = phi i32 [ %inc.i, %if.end.i ], [ %num.05.i, %for.body.i.for.inc.i_crit_edge ]
  %inc9.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 26
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i16:                                     ; preds = %for.inc.i24.for.body.i16_crit_edge, %entry.for.body.i16_crit_edge
  %num.05.i8 = phi i32 [ %num.1.i21, %for.inc.i24.for.body.i16_crit_edge ], [ 0, %entry.for.body.i16_crit_edge ]
  %i.03.i9 = phi i32 [ %inc9.i22, %for.inc.i24.for.body.i16_crit_edge ], [ 0, %entry.for.body.i16_crit_edge ]
  %flags.i10 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %i.03.i9, i32 7
  %12 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i10, align 4
  %and.i11 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  %and4.i13 = and i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i13)
  %tobool5.not.i14 = icmp eq i32 %and4.i13, 0
  %or.cond.i15 = select i1 %tobool.not.i12, i1 true, i1 %tobool5.not.i14
  br i1 %or.cond.i15, label %for.body.i16.for.inc.i24_crit_edge, label %if.then.i18

for.body.i16.for.inc.i24_crit_edge:               ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i24

if.then.i18:                                      ; preds = %for.body.i16
  %14 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.05.i8, i32 %15)
  %cmp6.i17 = icmp eq i32 %num.05.i8, %15
  br i1 %cmp6.i17, label %if.then.i18.cleanup.sink.split_crit_edge, label %if.end.i20

if.then.i18.cleanup.sink.split_crit_edge:         ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end.i20:                                       ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i19 = add i32 %num.05.i8, 1
  br label %for.inc.i24

for.inc.i24:                                      ; preds = %if.end.i20, %for.body.i16.for.inc.i24_crit_edge
  %num.1.i21 = phi i32 [ %inc.i19, %if.end.i20 ], [ %num.05.i8, %for.body.i16.for.inc.i24_crit_edge ]
  %inc9.i22 = add nuw nsw i32 %i.03.i9, 1
  %exitcond.not.i23 = icmp eq i32 %inc9.i22, 26
  br i1 %exitcond.not.i23, label %for.inc.i24.cleanup_crit_edge, label %for.inc.i24.for.body.i16_crit_edge

for.inc.i24.for.body.i16_crit_edge:               ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i16

for.inc.i24.cleanup_crit_edge:                    ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then.i18.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %i.03.i9.lcssa.sink = phi i32 [ %i.03.i, %if.then.i.cleanup.sink.split_crit_edge ], [ %i.03.i9, %if.then.i18.cleanup.sink.split_crit_edge ]
  %arrayidx13.i25 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %i.03.i9.lcssa.sink
  %16 = ptrtoint ptr %arrayidx13.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13.i25, align 4
  %pixelformat.i26 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %18 = ptrtoint ptr %pixelformat.i26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelformat.i26, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.i24.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %for.inc.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_g_fmt(ptr nocapture noundef readnone %file, ptr noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %m2m_ctx = getelementptr i8, ptr %priv, i32 188
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %if.end.do.body14_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %if.end.get_q_data.exit_crit_edge
  ]

if.end.get_q_data.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_q_data.exit

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14

land.lhs.true:                                    ; preds = %if.end
  %mode = getelementptr i8, ptr %priv, i32 -232
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.get_q_data.exit_crit_edge

land.lhs.true.get_q_data.exit_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_q_data.exit

land.lhs.true4:                                   ; preds = %land.lhs.true
  %hdr_parsed = getelementptr i8, ptr %priv, i32 192
  %9 = ptrtoint ptr %hdr_parsed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hdr_parsed, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.get_q_data.exit_crit_edge

land.lhs.true4.get_q_data.exit_crit_edge:         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_q_data.exit

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

get_q_data.exit:                                  ; preds = %land.lhs.true4.get_q_data.exit_crit_edge, %land.lhs.true.get_q_data.exit_crit_edge, %if.end.get_q_data.exit_crit_edge
  %.sink = phi i32 [ -220, %if.end.get_q_data.exit_crit_edge ], [ -120, %land.lhs.true.get_q_data.exit_crit_edge ], [ -120, %land.lhs.true4.get_q_data.exit_crit_edge ]
  %out_q.i = getelementptr i8, ptr %priv, i32 %.sink
  %cmp10 = icmp eq ptr %out_q.i, null
  br i1 %cmp10, label %get_q_data.exit.do.body14_crit_edge, label %do.end20, !prof !193

get_q_data.exit.do.body14_crit_edge:              ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body14

do.body14:                                        ; preds = %get_q_data.exit.do.body14_crit_edge, %if.end.do.body14_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1346, 0\0A.popsection", ""() #14, !srcloc !199
  unreachable

do.end20:                                         ; preds = %get_q_data.exit
  %w = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %out_q.i, i32 0, i32 1
  %11 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %w, align 4
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fmt, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %out_q.i, i32 0, i32 2
  %14 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %h, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %field, align 4
  %18 = ptrtoint ptr %out_q.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_q.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bytesperline, align 4
  %24 = load ptr, ptr %out_q.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %26)
  %cmp24.not = icmp eq i32 %26, 1195724874
  br i1 %cmp24.not, label %do.end20.if.end33_crit_edge, label %if.then25

do.end20.if.end33_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then25:                                        ; preds = %do.end20
  %27 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %w, align 4
  %colplanes = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp28 = icmp eq i32 %30, 1
  br i1 %cmp28, label %if.then29, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %depth = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %24, i32 0, i32 1
  %31 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %depth, align 4
  %mul = mul i32 %32, %28
  %shr = lshr i32 %mul, 3
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then25.if.end31_crit_edge
  %bpl.0 = phi i32 [ %shr, %if.then29 ], [ %28, %if.then25.if.end31_crit_edge ]
  %33 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bpl.0, ptr %bytesperline, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %do.end20.if.end33_crit_edge
  %size = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %out_q.i, i32 0, i32 8
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %36 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %land.lhs.true4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s5p_jpeg_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -236
  %call2 = tail call fastcc i32 @s5p_jpeg_s_fmt(ptr noundef %add.ptr.i, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %priv, i32 -236
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  %mode.i.i = getelementptr i8, ptr %priv, i32 -232
  %2 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %fmt_flag.0.i.i = select i1 %cmp.i.i, i32 2, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %k.025.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp5.i.i = icmp eq i32 %5, %1
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %flags.i.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i.i, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, %fmt_flag.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 4
  %variant.i.i = getelementptr inbounds %struct.s5p_jpeg, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant.i.i, align 4
  %fmt_ver_flag.i.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %fmt_ver_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt_ver_flag.i.i, align 4
  %and8.i.i = and i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge, label %s5p_jpeg_find_format.exit.i

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %k.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 26
  br i1 %exitcond.not.i.i, label %for.inc.i.i.s5p_jpeg_try_fmt_vid_out.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.s5p_jpeg_try_fmt_vid_out.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_try_fmt_vid_out.exit.thread

s5p_jpeg_find_format.exit.i:                      ; preds = %land.lhs.true6.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %s5p_jpeg_find_format.exit.i.s5p_jpeg_try_fmt_vid_out.exit.thread_crit_edge, label %s5p_jpeg_try_fmt_vid_out.exit

s5p_jpeg_find_format.exit.i.s5p_jpeg_try_fmt_vid_out.exit.thread_crit_edge: ; preds = %s5p_jpeg_find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_try_fmt_vid_out.exit.thread

s5p_jpeg_try_fmt_vid_out.exit.thread:             ; preds = %s5p_jpeg_find_format.exit.i.s5p_jpeg_try_fmt_vid_out.exit.thread_crit_edge, %for.inc.i.i.s5p_jpeg_try_fmt_vid_out.exit.thread_crit_edge
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 4
  %name.i = getelementptr inbounds %struct.s5p_jpeg, ptr %15, i32 0, i32 2, i32 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name.i, i32 noundef %1) #17
  br label %cleanup

s5p_jpeg_try_fmt_vid_out.exit:                    ; preds = %s5p_jpeg_find_format.exit.i
  %call6.i = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f, ptr noundef nonnull %arrayidx.i.i, ptr noundef %add.ptr.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not = icmp eq i32 %call6.i, 0
  br i1 %tobool.not, label %if.end, label %s5p_jpeg_try_fmt_vid_out.exit.cleanup_crit_edge

s5p_jpeg_try_fmt_vid_out.exit.cleanup_crit_edge:  ; preds = %s5p_jpeg_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %s5p_jpeg_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call fastcc i32 @s5p_jpeg_s_fmt(ptr noundef %add.ptr.i.i, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %s5p_jpeg_try_fmt_vid_out.exit.cleanup_crit_edge, %s5p_jpeg_try_fmt_vid_out.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call6.i, %s5p_jpeg_try_fmt_vid_out.exit.cleanup_crit_edge ], [ -22, %s5p_jpeg_try_fmt_vid_out.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -236
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %mode.i = getelementptr i8, ptr %priv, i32 -232
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %fmt_flag.0.i = select i1 %cmp.i, i32 1, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %k.025.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp5.i = icmp eq i32 %5, %1
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, %fmt_flag.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant.i, align 4
  %fmt_ver_flag.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %fmt_ver_flag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt_ver_flag.i, align 4
  %and8.i = and i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true6.i.for.inc.i_crit_edge, label %s5p_jpeg_find_format.exit

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

s5p_jpeg_find_format.exit:                        ; preds = %land.lhs.true6.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %s5p_jpeg_find_format.exit.do.end_crit_edge, label %if.end

s5p_jpeg_find_format.exit.do.end_crit_edge:       ; preds = %s5p_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %s5p_jpeg_find_format.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.s5p_jpeg, ptr %15, i32 0, i32 2, i32 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %1) #17
  br label %cleanup

if.end:                                           ; preds = %s5p_jpeg_find_format.exit
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %variant, align 4
  %hw_ex4_compat = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %hw_ex4_compat to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %hw_ex4_compat, align 4
  %21 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  %or.cond = select i1 %tobool8.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end10, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.end10:                                         ; preds = %if.end
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end27_crit_edge, label %land.lhs.true

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end10
  %subsampling = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i, i32 6
  %24 = ptrtoint ptr %subsampling to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %subsampling, align 4
  %subsampling12 = getelementptr i8, ptr %priv, i32 -224
  %26 = ptrtoint ptr %subsampling12 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %subsampling12, align 4
  %conv = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv)
  %cmp13 = icmp slt i32 %25, %conv
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %27)
  %cmp.not.i = icmp eq i16 %27, 5
  br i1 %cmp.not.i, label %if.then15.if.end24_crit_edge, label %if.then.i

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then.i:                                        ; preds = %if.then15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %29, label %if.then.i.if.end24_crit_edge [
    i32 875714126, label %if.then.i.if.end5.i_crit_edge
    i32 842290766, label %cleanup.fold.split.i.i
    i32 909203022, label %cleanup.fold.split6.i.i
    i32 825644622, label %cleanup.fold.split7.i.i
    i32 1448695129, label %cleanup.fold.split8.i.i
    i32 1431918169, label %cleanup.fold.split9.i.i
    i32 842094158, label %cleanup.fold.split10.i.i
    i32 825382478, label %cleanup.fold.split11.i.i
    i32 842093913, label %cleanup.fold.split12.i.i
    i32 1497715271, label %cleanup.fold.split13.i.i
  ]

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i.if.end24_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

cleanup.fold.split.i.i:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split6.i.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split7.i.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split8.i.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split9.i.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split10.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split11.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split12.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

cleanup.fold.split13.i.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %cleanup.fold.split13.i.i, %cleanup.fold.split12.i.i, %cleanup.fold.split11.i.i, %cleanup.fold.split10.i.i, %cleanup.fold.split9.i.i, %cleanup.fold.split8.i.i, %cleanup.fold.split7.i.i, %cleanup.fold.split6.i.i, %cleanup.fold.split.i.i, %if.then.i.if.end5.i_crit_edge
  %cmp14.i = phi i1 [ false, %if.then.i.if.end5.i_crit_edge ], [ false, %cleanup.fold.split.i.i ], [ true, %cleanup.fold.split6.i.i ], [ true, %cleanup.fold.split7.i.i ], [ true, %cleanup.fold.split8.i.i ], [ true, %cleanup.fold.split9.i.i ], [ true, %cleanup.fold.split10.i.i ], [ true, %cleanup.fold.split11.i.i ], [ true, %cleanup.fold.split12.i.i ], [ true, %cleanup.fold.split13.i.i ]
  %retval.0.i.ph.i = phi i32 [ 0, %if.then.i.if.end5.i_crit_edge ], [ 1, %cleanup.fold.split.i.i ], [ 2, %cleanup.fold.split6.i.i ], [ 3, %cleanup.fold.split7.i.i ], [ 4, %cleanup.fold.split8.i.i ], [ 5, %cleanup.fold.split9.i.i ], [ 6, %cleanup.fold.split10.i.i ], [ 7, %cleanup.fold.split11.i.i ], [ 8, %cleanup.fold.split12.i.i ], [ 9, %cleanup.fold.split13.i.i ]
  %31 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %27, label %if.end5.i.if.end24_crit_edge [
    i16 1, label %sw.bb13.i
    i16 2, label %if.end12.i
  ]

if.end5.i.if.end24_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end12.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i81 = getelementptr [10 x i32], ptr @subs420_fourcc_dwngrd_schema, i32 0, i32 %retval.0.i.ph.i
  br label %cleanup.sink.split.sink.split.i

sw.bb13.i:                                        ; preds = %if.end5.i
  br i1 %cmp14.i, label %sw.bb13.i.if.end24_crit_edge, label %if.end17.i

sw.bb13.i.if.end24_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end17.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx18.i = getelementptr [2 x i32], ptr @subs422_fourcc_dwngrd_schema, i32 0, i32 %retval.0.i.ph.i
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.end17.i, %if.end12.i
  %arrayidx18.sink.i = phi ptr [ %arrayidx18.i, %if.end17.i ], [ %arrayidx.i81, %if.end12.i ]
  %32 = ptrtoint ptr %arrayidx18.sink.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx18.sink.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %cleanup.sink.split.sink.split.i, %sw.bb13.i.if.end24_crit_edge, %if.end5.i.if.end24_crit_edge, %if.then.i.if.end24_crit_edge, %if.then15.if.end24_crit_edge
  %storemerge = phi i32 [ 1497715271, %if.then15.if.end24_crit_edge ], [ 1497715271, %if.end5.i.if.end24_crit_edge ], [ %33, %cleanup.sink.split.sink.split.i ], [ 1497715271, %sw.bb13.i.if.end24_crit_edge ], [ 1497715271, %if.then.i.if.end24_crit_edge ]
  %34 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge, ptr %pixelformat, align 4
  %35 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i83 = icmp eq i32 %36, 0
  %fmt_flag.0.i84 = select i1 %cmp.i83, i32 1, i32 4
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.inc.i100.for.body.i88_crit_edge, %if.end24
  %k.025.i85 = phi i32 [ 0, %if.end24 ], [ %inc.i98, %for.inc.i100.for.body.i88_crit_edge ]
  %arrayidx.i86 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i85
  %37 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %storemerge)
  %cmp5.i87 = icmp eq i32 %38, %storemerge
  br i1 %cmp5.i87, label %land.lhs.true.i92, label %for.body.i88.for.inc.i100_crit_edge

for.body.i88.for.inc.i100_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i100

land.lhs.true.i92:                                ; preds = %for.body.i88
  %flags.i89 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i85, i32 7
  %39 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i89, align 4
  %and.i90 = and i32 %40, %fmt_flag.0.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %land.lhs.true.i92.for.inc.i100_crit_edge, label %land.lhs.true6.i97

land.lhs.true.i92.for.inc.i100_crit_edge:         ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i100

land.lhs.true6.i97:                               ; preds = %land.lhs.true.i92
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  %variant.i93 = getelementptr inbounds %struct.s5p_jpeg, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %variant.i93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %variant.i93, align 4
  %fmt_ver_flag.i94 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %fmt_ver_flag.i94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fmt_ver_flag.i94, align 4
  %and8.i95 = and i32 %46, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i95)
  %tobool9.not.i96 = icmp eq i32 %and8.i95, 0
  br i1 %tobool9.not.i96, label %land.lhs.true6.i97.for.inc.i100_crit_edge, label %land.lhs.true6.i97.if.end27_crit_edge

land.lhs.true6.i97.if.end27_crit_edge:            ; preds = %land.lhs.true6.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

land.lhs.true6.i97.for.inc.i100_crit_edge:        ; preds = %land.lhs.true6.i97
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i100

for.inc.i100:                                     ; preds = %land.lhs.true6.i97.for.inc.i100_crit_edge, %land.lhs.true.i92.for.inc.i100_crit_edge, %for.body.i88.for.inc.i100_crit_edge
  %inc.i98 = add nuw nsw i32 %k.025.i85, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 26
  br i1 %exitcond.not.i99, label %for.inc.i100.if.end27_crit_edge, label %for.inc.i100.for.body.i88_crit_edge

for.inc.i100.for.body.i88_crit_edge:              ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i88

for.inc.i100.if.end27_crit_edge:                  ; preds = %for.inc.i100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %for.inc.i100.if.end27_crit_edge, %land.lhs.true6.i97.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end10.if.end27_crit_edge
  %fmt1.0 = phi ptr [ %arrayidx.i, %land.lhs.true.if.end27_crit_edge ], [ %arrayidx.i, %if.end10.if.end27_crit_edge ], [ %arrayidx.i86, %land.lhs.true6.i97.if.end27_crit_edge ], [ null, %for.inc.i100.if.end27_crit_edge ]
  %subsampling28 = getelementptr i8, ptr %priv, i32 -224
  %47 = ptrtoint ptr %subsampling28 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %subsampling28, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %48)
  %cmp30 = icmp eq i16 %48, 2
  br i1 %cmp30, label %land.lhs.true32, label %if.end27.exit_crit_edge

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

land.lhs.true32:                                  ; preds = %if.end27
  %w = getelementptr i8, ptr %priv, i32 -216
  %49 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %w, align 4
  %and33 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true32.exit_crit_edge, label %land.lhs.true35

land.lhs.true32.exit_crit_edge:                   ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %51 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pixelformat, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %52, label %land.lhs.true35.exit_crit_edge [
    i32 842094158, label %land.lhs.true35.if.then47_crit_edge
    i32 825382478, label %land.lhs.true35.if.then47_crit_edge140
    i32 842093913, label %land.lhs.true35.if.then47_crit_edge141
  ]

land.lhs.true35.if.then47_crit_edge141:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

land.lhs.true35.if.then47_crit_edge140:           ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

land.lhs.true35.if.then47_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then47

land.lhs.true35.exit_crit_edge:                   ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

if.then47:                                        ; preds = %land.lhs.true35.if.then47_crit_edge, %land.lhs.true35.if.then47_crit_edge140, %land.lhs.true35.if.then47_crit_edge141
  %54 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1346520914, ptr %pixelformat, align 4
  %55 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i104 = icmp eq i32 %56, 0
  %fmt_flag.0.i105 = select i1 %cmp.i104, i32 1, i32 4
  br label %for.body.i109

for.body.i109:                                    ; preds = %for.inc.i121.for.body.i109_crit_edge, %if.then47
  %k.025.i106 = phi i32 [ 0, %if.then47 ], [ %inc.i119, %for.inc.i121.for.body.i109_crit_edge ]
  %arrayidx.i107 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i106
  %57 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1346520914, i32 %58)
  %cmp5.i108 = icmp eq i32 %58, 1346520914
  br i1 %cmp5.i108, label %land.lhs.true.i113, label %for.body.i109.for.inc.i121_crit_edge

for.body.i109.for.inc.i121_crit_edge:             ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i121

land.lhs.true.i113:                               ; preds = %for.body.i109
  %flags.i110 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i106, i32 7
  %59 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i110, align 4
  %and.i111 = and i32 %60, %fmt_flag.0.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool.not.i112 = icmp eq i32 %and.i111, 0
  br i1 %tobool.not.i112, label %land.lhs.true.i113.for.inc.i121_crit_edge, label %land.lhs.true6.i118

land.lhs.true.i113.for.inc.i121_crit_edge:        ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i121

land.lhs.true6.i118:                              ; preds = %land.lhs.true.i113
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  %variant.i114 = getelementptr inbounds %struct.s5p_jpeg, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %variant.i114 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %variant.i114, align 4
  %fmt_ver_flag.i115 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %fmt_ver_flag.i115 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fmt_ver_flag.i115, align 4
  %and8.i116 = and i32 %66, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i116)
  %tobool9.not.i117 = icmp eq i32 %and8.i116, 0
  br i1 %tobool9.not.i117, label %land.lhs.true6.i118.for.inc.i121_crit_edge, label %land.lhs.true6.i118.exit_crit_edge

land.lhs.true6.i118.exit_crit_edge:               ; preds = %land.lhs.true6.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

land.lhs.true6.i118.for.inc.i121_crit_edge:       ; preds = %land.lhs.true6.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i121

for.inc.i121:                                     ; preds = %land.lhs.true6.i118.for.inc.i121_crit_edge, %land.lhs.true.i113.for.inc.i121_crit_edge, %for.body.i109.for.inc.i121_crit_edge
  %inc.i119 = add nuw nsw i32 %k.025.i106, 1
  %exitcond.not.i120 = icmp eq i32 %inc.i119, 26
  br i1 %exitcond.not.i120, label %for.inc.i121.exit_crit_edge, label %for.inc.i121.for.body.i109_crit_edge

for.inc.i121.for.body.i109_crit_edge:             ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i109

for.inc.i121.exit_crit_edge:                      ; preds = %for.inc.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

exit:                                             ; preds = %for.inc.i121.exit_crit_edge, %land.lhs.true6.i118.exit_crit_edge, %land.lhs.true35.exit_crit_edge, %land.lhs.true32.exit_crit_edge, %if.end27.exit_crit_edge, %if.end.exit_crit_edge
  %fmt1.1 = phi ptr [ %fmt1.0, %land.lhs.true32.exit_crit_edge ], [ %fmt1.0, %if.end27.exit_crit_edge ], [ %arrayidx.i, %if.end.exit_crit_edge ], [ %fmt1.0, %land.lhs.true35.exit_crit_edge ], [ %arrayidx.i107, %land.lhs.true6.i118.exit_crit_edge ], [ null, %for.inc.i121.exit_crit_edge ]
  %call52 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f, ptr noundef %fmt1.1, ptr noundef %add.ptr.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ %call52, %exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %priv, i32 -236
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %mode.i = getelementptr i8, ptr %priv, i32 -232
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %fmt_flag.0.i = select i1 %cmp.i, i32 2, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %k.025.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp5.i = icmp eq i32 %5, %1
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, %fmt_flag.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant.i, align 4
  %fmt_ver_flag.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %fmt_ver_flag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt_ver_flag.i, align 4
  %and8.i = and i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true6.i.for.inc.i_crit_edge, label %s5p_jpeg_find_format.exit

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

s5p_jpeg_find_format.exit:                        ; preds = %land.lhs.true6.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %s5p_jpeg_find_format.exit.do.end_crit_edge, label %if.end

s5p_jpeg_find_format.exit.do.end_crit_edge:       ; preds = %s5p_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %s5p_jpeg_find_format.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %name = getelementptr inbounds %struct.s5p_jpeg, ptr %15, i32 0, i32 2, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %1) #17
  br label %cleanup

if.end:                                           ; preds = %s5p_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f, ptr noundef nonnull %arrayidx.i, ptr noundef %add.ptr.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %do.end ]
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_jpeg_g_selection(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %s) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge38
    i32 1, label %if.end.sw.bb_crit_edge39
    i32 257, label %if.end.sw.bb_crit_edge40
    i32 256, label %if.end.sw.bb7_crit_edge
    i32 258, label %if.end.sw.bb7_crit_edge41
    i32 259, label %if.end.sw.bb7_crit_edge42
  ]

if.end.sw.bb7_crit_edge42:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end.sw.bb7_crit_edge41:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

if.end.sw.bb_crit_edge40:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge39:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge38:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge38, %if.end.sw.bb_crit_edge39, %if.end.sw.bb_crit_edge40
  %w = getelementptr i8, ptr %priv, i32 -216
  %5 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %w, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %width, align 4
  %h = getelementptr i8, ptr %priv, i32 -212
  %8 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height, align 4
  %11 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %r, align 4
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge41, %if.end.sw.bb7_crit_edge42
  %crop_rect = getelementptr i8, ptr %priv, i32 -16
  %width8 = getelementptr i8, ptr %priv, i32 -8
  %12 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width8, align 4
  %r9 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %width10 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %width10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %width10, align 4
  %height12 = getelementptr i8, ptr %priv, i32 -4
  %15 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height12, align 4
  %height14 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %height14, align 4
  %18 = ptrtoint ptr %crop_rect to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crop_rect, align 4
  %20 = ptrtoint ptr %r9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %r9, align 4
  %top20 = getelementptr i8, ptr %priv, i32 -12
  %21 = ptrtoint ptr %top20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %top20, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb7, %sw.bb
  %.sink = phi i32 [ 0, %sw.bb ], [ %22, %sw.bb7 ]
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %top, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5p_jpeg_s_selection(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %s) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -236
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 256, label %if.then2
    i32 0, label %if.then11
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %mode = getelementptr i8, ptr %1, i32 -232
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp3.not = icmp eq i32 %8, 1
  br i1 %cmp3.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 4
  %hw3250_compat = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %hw3250_compat to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %hw3250_compat, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.then6

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %if.end5
  %w.i = getelementptr i8, ptr %1, i32 -216
  %14 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %w.i, align 4
  %width.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i, align 4
  %div.i = udiv i32 %15, %17
  %h.i = getelementptr i8, ptr %1, i32 -212
  %18 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %div2.i = udiv i32 %19, %21
  %22 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 %div2.i) #14
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 1) #14
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp15.not.i = icmp ugt i32 %24, 1
  br i1 %cmp15.not.i, label %for.cond.i, label %if.then6.exynos3250_jpeg_try_downscale.exit_crit_edge

if.then6.exynos3250_jpeg_try_downscale.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos3250_jpeg_try_downscale.exit

for.cond.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp15.not.1.not.i = icmp eq i32 %24, 2
  br i1 %cmp15.not.1.not.i, label %for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge, label %for.cond.1.i

for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos3250_jpeg_try_downscale.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp15.not.2.i = icmp ugt i32 %24, 4
  %spec.select.i = select i1 %cmp15.not.2.i, i32 8, i32 4
  br label %exynos3250_jpeg_try_downscale.exit

exynos3250_jpeg_try_downscale.exit:               ; preds = %for.cond.1.i, %for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge, %if.then6.exynos3250_jpeg_try_downscale.exit_crit_edge
  %shl.lcssa.i = phi i32 [ 1, %if.then6.exynos3250_jpeg_try_downscale.exit_crit_edge ], [ 2, %for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge ], [ %spec.select.i, %for.cond.1.i ]
  %scale_factor16.i = getelementptr i8, ptr %1, i32 -20
  %25 = ptrtoint ptr %scale_factor16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl.lcssa.i, ptr %scale_factor16.i, align 4
  %div20.i = udiv i32 %15, %shl.lcssa.i
  %and.i = and i32 %div20.i, -2
  %26 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i, ptr %width.i, align 4
  %27 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %h.i, align 4
  %29 = load i32, ptr %scale_factor16.i, align 4
  %div25.i = udiv i32 %28, %29
  %and26.i = and i32 %div25.i, -2
  %30 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and26.i, ptr %height.i, align 4
  %crop_rect.i = getelementptr i8, ptr %1, i32 -16
  %width29.i = getelementptr i8, ptr %1, i32 -8
  %31 = ptrtoint ptr %width29.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %width29.i, align 4
  %32 = load i32, ptr %height.i, align 4
  %height32.i = getelementptr i8, ptr %1, i32 -4
  %33 = ptrtoint ptr %height32.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %height32.i, align 4
  %34 = ptrtoint ptr %crop_rect.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %crop_rect.i, align 4
  br label %cleanup.sink.split

if.then11:                                        ; preds = %if.end
  %mode12 = getelementptr i8, ptr %1, i32 -232
  %35 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp13.not = icmp eq i32 %36, 0
  br i1 %cmp13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  %variant17 = getelementptr inbounds %struct.s5p_jpeg, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %variant17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %variant17, align 4
  %hw3250_compat18 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %hw3250_compat18 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load19 = load i8, ptr %hw3250_compat18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool22.not = icmp sgt i8 %bf.load19, -1
  br i1 %tobool22.not, label %if.end15.cleanup_crit_edge, label %if.then23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %if.end15
  %cap_q.i = getelementptr i8, ptr %1, i32 -120
  %42 = ptrtoint ptr %cap_q.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cap_q.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %45, label %sw.default.i [
    i32 842094158, label %if.then23.sw.epilog.i_crit_edge
    i32 825382478, label %if.then23.sw.epilog.i_crit_edge45
    i32 842093913, label %sw.bb1.i
  ]

if.then23.sw.epilog.i_crit_edge45:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

if.then23.sw.epilog.i_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb1.i, %if.then23.sw.epilog.i_crit_edge, %if.then23.sw.epilog.i_crit_edge45
  %w_step.0.i = phi i32 [ -1, %sw.default.i ], [ -2, %sw.bb1.i ], [ -1, %if.then23.sw.epilog.i_crit_edge ], [ -1, %if.then23.sw.epilog.i_crit_edge45 ]
  %h_step.0.i = phi i32 [ -1, %sw.default.i ], [ -2, %sw.bb1.i ], [ -2, %if.then23.sw.epilog.i_crit_edge ], [ -2, %if.then23.sw.epilog.i_crit_edge45 ]
  %w.i39 = getelementptr i8, ptr %1, i32 -216
  %47 = ptrtoint ptr %w.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %w.i39, align 4
  %h.i40 = getelementptr i8, ptr %1, i32 -212
  %49 = ptrtoint ptr %h.i40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %h.i40, align 4
  %width3.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %width3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width3.i, align 4
  %and.i41 = and i32 %52, %w_step.0.i
  store i32 %and.i41, ptr %width3.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %height5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height5.i, align 4
  %and8.i = and i32 %54, %h_step.0.i
  store i32 %and8.i, ptr %height5.i, align 4
  %55 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %r, align 4
  %and11.i = and i32 %56, -2
  store i32 %and11.i, ptr %r, align 4
  %top13.i = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %top13.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %top13.i, align 4
  %and14.i = and i32 %58, -2
  store i32 %and14.i, ptr %top13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and11.i)
  %cmp.i.i = icmp sgt i32 %and11.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and14.i)
  %cmp3.i.i = icmp sgt i32 %and14.i, -1
  %or.cond.i = select i1 %cmp.i.i, i1 %cmp3.i.i, i1 false
  %add.i.i = add i32 %and11.i, %and.i41
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %48)
  %cmp8.i.i = icmp ule i32 %add.i.i, %48
  %or.cond49.i = select i1 %or.cond.i, i1 %cmp8.i.i, i1 false
  %add12.i.i = add i32 %and14.i, %and8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i, i32 %50)
  %cmp16.i.i = icmp ule i32 %add12.i.i, %50
  %or.cond50.i = select i1 %or.cond49.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond50.i, label %if.end.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %crop_rect.i42 = getelementptr i8, ptr %1, i32 -16
  %59 = ptrtoint ptr %crop_rect.i42 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and11.i, ptr %crop_rect.i42, align 4
  %60 = ptrtoint ptr %top13.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %top13.i, align 4
  %top20.i = getelementptr i8, ptr %1, i32 -12
  %62 = ptrtoint ptr %top20.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %top20.i, align 4
  %63 = ptrtoint ptr %width3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %width3.i, align 4
  %width23.i = getelementptr i8, ptr %1, i32 -8
  %65 = ptrtoint ptr %width23.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %width23.i, align 4
  %66 = ptrtoint ptr %height5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height5.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i, %exynos3250_jpeg_try_downscale.exit
  %.sink44 = phi i32 [ -4, %if.end.i ], [ -12, %exynos3250_jpeg_try_downscale.exit ]
  %.sink = phi i32 [ %67, %if.end.i ], [ 0, %exynos3250_jpeg_try_downscale.exit ]
  %height26.i = getelementptr i8, ptr %1, i32 %.sink44
  %68 = ptrtoint ptr %height26.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink, ptr %height26.i, align 4
  %crop_altered.i43 = getelementptr i8, ptr %1, i32 193
  %69 = ptrtoint ptr %crop_altered.i43 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %crop_altered.i43, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_subscribe_event(ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %fh, ptr noundef %sub) #14
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5p_jpeg_s_fmt(ptr noundef %ct, ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  %w.i = alloca i32, align 4
  %h.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 9, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %5, label %if.end.do.body6_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then2.i
  ]

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %out_q.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 5
  br label %get_q_data.exit

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %cap_q.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 6
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %if.then2.i, %if.then.i
  %retval.0.i = phi ptr [ %out_q.i, %if.then.i ], [ %cap_q.i, %if.then2.i ]
  %cmp = icmp eq ptr %retval.0.i, null
  br i1 %cmp, label %get_q_data.exit.do.body6_crit_edge, label %do.end12, !prof !193

get_q_data.exit.do.body6_crit_edge:               ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6

do.body6:                                         ; preds = %get_q_data.exit.do.body6_crit_edge, %if.end.do.body6_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1598, 0\0A.popsection", ""() #14, !srcloc !200
  unreachable

do.end12:                                         ; preds = %get_q_data.exit
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ct, align 4
  %name = getelementptr inbounds %struct.s5p_jpeg, ptr %10, i32 0, i32 2, i32 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, ptr noundef nonnull @.str.51) #17
  br label %cleanup

if.end19:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond = icmp eq i32 %5, 2
  %. = select i1 %cond, i32 2, i32 1
  %.237 = select i1 %cond, i32 8, i32 4
  %pixelformat217233 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %mode.i219230 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 1
  %11 = ptrtoint ptr %mode.i219230 to i32
  call void @__asan_load4_noabort(i32 %11)
  %cmp.i198222228.in = load i32, ptr %mode.i219230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.i198222228.in)
  %cmp.i198222228 = icmp eq i32 %cmp.i198222228.in, 0
  %12 = ptrtoint ptr %pixelformat217233 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat217233, align 4
  %fmt_flag.0.i = select i1 %cmp.i198222228, i32 %., i32 %.237
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19
  %k.025.i = phi i32 [ 0, %if.end19 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp5.i = icmp eq i32 %15, %13
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %flags.i = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %k.025.i, i32 7
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, %fmt_flag.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ct, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant.i, align 4
  %fmt_ver_flag.i = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %fmt_ver_flag.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt_ver_flag.i, align 4
  %and8.i = and i32 %23, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true6.i.for.inc.i_crit_edge, label %land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge

land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %k.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.inc.i.s5p_jpeg_find_format.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.s5p_jpeg_find_format.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %s5p_jpeg_find_format.exit

s5p_jpeg_find_format.exit:                        ; preds = %for.inc.i.s5p_jpeg_find_format.exit_crit_edge, %land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge
  %retval.2.i = phi ptr [ null, %for.inc.i.s5p_jpeg_find_format.exit_crit_edge ], [ %arrayidx.i, %land.lhs.true6.i.s5p_jpeg_find_format.exit_crit_edge ]
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.2.i, ptr %retval.0.i, align 4
  %25 = ptrtoint ptr %mode.i219230 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i219230, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %26, label %s5p_jpeg_find_format.exit.if.end50_crit_edge [
    i32 0, label %s5p_jpeg_find_format.exit.if.then49_crit_edge
    i32 1, label %land.lhs.true
  ]

s5p_jpeg_find_format.exit.if.then49_crit_edge:    ; preds = %s5p_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

s5p_jpeg_find_format.exit.if.end50_crit_edge:     ; preds = %s5p_jpeg_find_format.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

land.lhs.true:                                    ; preds = %s5p_jpeg_find_format.exit
  %28 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %retval.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %29)
  %cmp48.not = icmp eq i32 %29, 1195724874
  br i1 %cmp48.not, label %land.lhs.true.if.end50_crit_edge, label %land.lhs.true.if.then49_crit_edge

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then49:                                        ; preds = %land.lhs.true.if.then49_crit_edge, %s5p_jpeg_find_format.exit.if.then49_crit_edge
  %30 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmt, align 4
  %w = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %w, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %h, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true.if.end50_crit_edge, %s5p_jpeg_find_format.exit.if.end50_crit_edge
  %36 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %retval.0.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %39)
  %cmp53.not = icmp eq i32 %39, 1195724874
  br i1 %cmp53.not, label %if.else72, label %if.then54

if.then54:                                        ; preds = %if.end50
  %40 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ct, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %variant, align 4
  %hw_ex4_compat = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %hw_ex4_compat to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %hw_ex4_compat, align 4
  %45 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool56.not = icmp ne i8 %45, 0
  %46 = and i1 %cond, %tobool56.not
  br i1 %46, label %land.lhs.true59, label %if.then54.if.else_crit_edge

if.then54.if.else_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true59:                                  ; preds = %if.then54
  %47 = ptrtoint ptr %mode.i219230 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode.i219230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp61 = icmp eq i32 %48, 0
  br i1 %cmp61, label %if.then62, label %land.lhs.true59.if.else_crit_edge

land.lhs.true59.if.else_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then62:                                        ; preds = %land.lhs.true59
  %depth = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %37, i32 0, i32 1
  %49 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %depth, align 4
  %51 = ptrtoint ptr %pixelformat217233 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pixelformat217233, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w.i) #14
  %53 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fmt, align 4
  %55 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %w.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h.i) #14
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height.i, align 4
  %58 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %h.i, align 4
  %59 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %52, label %if.else.i [
    i32 876758866, label %if.then62.if.end.i_crit_edge
    i32 1346520914, label %if.then62.if.end.i_crit_edge238
    i32 875714126, label %if.then62.if.end.i_crit_edge239
    i32 842290766, label %if.then62.if.end.i_crit_edge240
    i32 842094158, label %if.then62.if.end.i_crit_edge241
    i32 825382478, label %if.then62.if.end.i_crit_edge242
    i32 842093913, label %if.then62.if.end.i_crit_edge243
  ]

if.then62.if.end.i_crit_edge243:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then62.if.end.i_crit_edge242:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then62.if.end.i_crit_edge241:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then62.if.end.i_crit_edge240:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then62.if.end.i_crit_edge239:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then62.if.end.i_crit_edge238:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then62.if.end.i_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.else.i:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then62.if.end.i_crit_edge, %if.then62.if.end.i_crit_edge238, %if.then62.if.end.i_crit_edge239, %if.then62.if.end.i_crit_edge240, %if.then62.if.end.i_crit_edge241, %if.then62.if.end.i_crit_edge242, %if.then62.if.end.i_crit_edge243
  %wh_align.0.i = phi i32 [ 1, %if.else.i ], [ 4, %if.then62.if.end.i_crit_edge ], [ 4, %if.then62.if.end.i_crit_edge238 ], [ 4, %if.then62.if.end.i_crit_edge239 ], [ 4, %if.then62.if.end.i_crit_edge240 ], [ 4, %if.then62.if.end.i_crit_edge241 ], [ 4, %if.then62.if.end.i_crit_edge242 ], [ 4, %if.then62.if.end.i_crit_edge243 ]
  %shl1.i.i = shl nuw nsw i32 1, %wh_align.0.i
  call void @v4l_bound_align_image(ptr noundef nonnull %w.i, i32 noundef 32, i32 noundef 8192, i32 noundef %wh_align.0.i, ptr noundef nonnull %h.i, i32 noundef 32, i32 noundef 8192, i32 noundef %wh_align.0.i, i32 noundef 0) #14
  %60 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %w.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %54)
  %cmp5.i.i = icmp ult i32 %61, %54
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %if.end.i.if.end10.i.i_crit_edge

if.end.i.if.end10.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i
  %add.i.i = add i32 %61, %shl1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add.i.i)
  %cmp7.i.i = icmp ult i32 %add.i.i, 8192
  br i1 %cmp7.i.i, label %if.then8.i.i, label %land.lhs.true6.i.i.if.end10.i.i_crit_edge

land.lhs.true6.i.i.if.end10.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i.i, ptr %w.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i, %land.lhs.true6.i.i.if.end10.i.i_crit_edge, %if.end.i.if.end10.i.i_crit_edge
  %63 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %h.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %57)
  %cmp11.i.i = icmp ult i32 %64, %57
  br i1 %cmp11.i.i, label %land.lhs.true12.i.i, label %if.end10.i.i.exynos4_jpeg_get_output_buffer_size.exit_crit_edge

if.end10.i.i.exynos4_jpeg_get_output_buffer_size.exit_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_get_output_buffer_size.exit

land.lhs.true12.i.i:                              ; preds = %if.end10.i.i
  %add13.i.i = add i32 %64, %shl1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add13.i.i)
  %cmp14.i.i = icmp ult i32 %add13.i.i, 8192
  br i1 %cmp14.i.i, label %if.then15.i.i, label %land.lhs.true12.i.i.exynos4_jpeg_get_output_buffer_size.exit_crit_edge

land.lhs.true12.i.i.exynos4_jpeg_get_output_buffer_size.exit_crit_edge: ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_get_output_buffer_size.exit

if.then15.i.i:                                    ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add13.i.i, ptr %h.i, align 4
  br label %exynos4_jpeg_get_output_buffer_size.exit

exynos4_jpeg_get_output_buffer_size.exit:         ; preds = %if.then15.i.i, %land.lhs.true12.i.i.exynos4_jpeg_get_output_buffer_size.exit_crit_edge, %if.end10.i.i.exynos4_jpeg_get_output_buffer_size.exit_crit_edge
  %66 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ct, align 4
  %variant.i199 = getelementptr inbounds %struct.s5p_jpeg, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %variant.i199 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %variant.i199, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp13.i = icmp eq i32 %71, 2
  %spec.select.i = select i1 %cmp13.i, i32 4096, i32 0
  %72 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %w.i, align 4
  %74 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %h.i, align 4
  %mul.i = mul i32 %73, %50
  %mul16.i = mul i32 %mul.i, %75
  %shr.i = ashr i32 %mul16.i, 3
  %add.i = add nsw i32 %shr.i, %spec.select.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w.i) #14
  br label %if.end74

if.else:                                          ; preds = %land.lhs.true59.if.else_crit_edge, %if.then54.if.else_crit_edge
  %w65 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 1
  %76 = ptrtoint ptr %w65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %w65, align 4
  %h66 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 2
  %78 = ptrtoint ptr %h66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %h66, align 4
  %mul = mul i32 %79, %77
  %depth68 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %37, i32 0, i32 1
  %80 = ptrtoint ptr %depth68 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %depth68, align 4
  %mul69 = mul i32 %mul, %81
  %shr = lshr i32 %mul69, 3
  br label %if.end74

if.else72:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %82 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sizeimage, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %if.else, %exynos4_jpeg_get_output_buffer_size.exit
  %add.i.sink = phi i32 [ %add.i, %exynos4_jpeg_get_output_buffer_size.exit ], [ %shr, %if.else ], [ %83, %if.else72 ]
  %size = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %retval.0.i, i32 0, i32 8
  %84 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i.sink, ptr %size, align 4
  br i1 %cond, label %if.then76, label %if.end74.if.end83_crit_edge

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then76:                                        ; preds = %if.end74
  %ctrl_handler = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 12
  %call77 = call ptr @v4l2_ctrl_find(ptr noundef %ctrl_handler, i32 noundef 10291457) #14
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.then76.if.end82_crit_edge, label %if.then79

if.then76.if.end82_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then79:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %retval.0.i, align 4
  %subsampling = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %subsampling to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %subsampling, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call77, i32 0, i32 2
  %89 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lock.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %92, i32 noundef 0) #14
  %call.i = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call77, i32 noundef %88) #14
  %93 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %lock.i2.i, align 4
  call void @mutex_unlock(ptr noundef %96) #14
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.then76.if.end82_crit_edge
  %crop_altered = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 11
  %97 = ptrtoint ptr %crop_altered to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %crop_altered, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end74.if.end83_crit_edge
  %crop_altered84 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 11
  %98 = ptrtoint ptr %crop_altered84 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %crop_altered84, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool85.not = icmp eq i8 %99, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %if.end83.if.end102_crit_edge

if.end83.if.end102_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

land.lhs.true86:                                  ; preds = %if.end83
  %100 = ptrtoint ptr %mode.i219230 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mode.i219230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp88 = icmp ne i32 %101, 1
  %brmerge194 = or i1 %cond, %cmp88
  %brmerge194.not = xor i1 %brmerge194, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp93 = icmp eq i32 %101, 0
  %102 = and i1 %cond, %cmp93
  %or.cond = select i1 %brmerge194.not, i1 true, i1 %102
  br i1 %or.cond, label %if.then96, label %land.lhs.true86.if.end102_crit_edge

land.lhs.true86.if.end102_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.then96:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fmt, align 4
  %width98 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 8, i32 2
  %105 = ptrtoint ptr %width98 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %width98, align 4
  %height99 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %106 = ptrtoint ptr %height99 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %height99, align 4
  %height101 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 8, i32 3
  %108 = ptrtoint ptr %height101 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %height101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then96, %land.lhs.true86.if.end102_crit_edge, %if.end83.if.end102_crit_edge
  %109 = ptrtoint ptr %mode.i219230 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mode.i219230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp104 = icmp ne i32 %110, 1
  %brmerge197 = or i1 %cond, %cmp104
  br i1 %brmerge197, label %if.end102.cleanup_crit_edge, label %land.lhs.true107

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true107:                                 ; preds = %if.end102
  %111 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ct, align 4
  %variant109 = getelementptr inbounds %struct.s5p_jpeg, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %variant109 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %variant109, align 4
  %hw3250_compat = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %hw3250_compat to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load110 = load i8, ptr %hw3250_compat, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load110)
  %tobool113.not = icmp sgt i8 %bf.load110, -1
  br i1 %tobool113.not, label %land.lhs.true107.cleanup_crit_edge, label %land.lhs.true114

land.lhs.true107.cleanup_crit_edge:               ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true114:                                 ; preds = %land.lhs.true107
  %116 = ptrtoint ptr %pixelformat217233 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pixelformat217233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %117)
  %cmp116 = icmp eq i32 %117, 842093913
  br i1 %cmp116, label %land.lhs.true117, label %land.lhs.true114.cleanup_crit_edge

land.lhs.true114.cleanup_crit_edge:               ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true117:                                 ; preds = %land.lhs.true114
  %scale_factor = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 7
  %118 = ptrtoint ptr %scale_factor to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %scale_factor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp118 = icmp ugt i32 %119, 2
  br i1 %cmp118, label %if.then119, label %land.lhs.true117.cleanup_crit_edge

land.lhs.true117.cleanup_crit_edge:               ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then119:                                       ; preds = %land.lhs.true117
  %w120 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 5, i32 1
  %120 = ptrtoint ptr %w120 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %w120, align 4
  %div192 = lshr i32 %121, 1
  %h123 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 5, i32 2
  %122 = ptrtoint ptr %h123 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %h123, align 4
  %div124193 = lshr i32 %123, 1
  %div.i = udiv i32 %121, %div192
  %div2.i = udiv i32 %123, %div124193
  %124 = call i32 @llvm.smax.i32(i32 %div.i, i32 %div2.i) #14
  %125 = call i32 @llvm.smax.i32(i32 %124, i32 1) #14
  %126 = call i32 @llvm.umin.i32(i32 %125, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp15.not.i = icmp ugt i32 %126, 1
  br i1 %cmp15.not.i, label %for.cond.i, label %if.then119.exynos3250_jpeg_try_downscale.exit_crit_edge

if.then119.exynos3250_jpeg_try_downscale.exit_crit_edge: ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos3250_jpeg_try_downscale.exit

for.cond.i:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp15.not.1.not.i = icmp eq i32 %126, 2
  br i1 %cmp15.not.1.not.i, label %for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge, label %for.cond.1.i

for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos3250_jpeg_try_downscale.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %126)
  %cmp15.not.2.i = icmp ugt i32 %126, 4
  %spec.select.i203 = select i1 %cmp15.not.2.i, i32 8, i32 4
  br label %exynos3250_jpeg_try_downscale.exit

exynos3250_jpeg_try_downscale.exit:               ; preds = %for.cond.1.i, %for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge, %if.then119.exynos3250_jpeg_try_downscale.exit_crit_edge
  %shl.lcssa.i = phi i32 [ 1, %if.then119.exynos3250_jpeg_try_downscale.exit_crit_edge ], [ 2, %for.cond.i.exynos3250_jpeg_try_downscale.exit_crit_edge ], [ %spec.select.i203, %for.cond.1.i ]
  %127 = ptrtoint ptr %scale_factor to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %shl.lcssa.i, ptr %scale_factor, align 4
  %div20.i = udiv i32 %121, %shl.lcssa.i
  %and.i204 = and i32 %div20.i, -2
  %div25.i = udiv i32 %123, %shl.lcssa.i
  %and26.i = and i32 %div25.i, -2
  %crop_rect.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 8
  %width29.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 8, i32 2
  %128 = ptrtoint ptr %width29.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %and.i204, ptr %width29.i, align 4
  %height32.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 8, i32 3
  %129 = ptrtoint ptr %height32.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %and26.i, ptr %height32.i, align 4
  %130 = ptrtoint ptr %crop_rect.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %crop_rect.i, align 4
  %top.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ct, i32 0, i32 8, i32 1
  %131 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %top.i, align 4
  %132 = ptrtoint ptr %crop_altered84 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %crop_altered84, align 1
  br label %cleanup

cleanup:                                          ; preds = %exynos3250_jpeg_try_downscale.exit, %land.lhs.true117.cleanup_crit_edge, %land.lhs.true114.cleanup_crit_edge, %land.lhs.true107.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end17 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ], [ 0, %exynos3250_jpeg_try_downscale.exit ], [ 0, %land.lhs.true117.cleanup_crit_edge ], [ 0, %land.lhs.true114.cleanup_crit_edge ], [ 0, %land.lhs.true107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_try_fmt(ptr noundef %f, ptr nocapture noundef readonly %fmt, ptr nocapture noundef readonly %ctx, i32 noundef %q_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 1, label %entry.if.end6_crit_edge
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %field, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %q_type)
  %cmp7 = icmp eq i32 %q_type, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end6
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt1, align 4
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 32, i32 noundef 8192, i32 noundef 0, ptr noundef %height, i32 noundef 32, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #14
  %8 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp5.i = icmp ult i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %9)
  %cmp7.i = icmp ult i32 %9, 8191
  %or.cond = and i1 %cmp5.i, %cmp7.i
  br i1 %or.cond, label %if.then8.i, label %if.then8.if.end10.i_crit_edge

if.then8.if.end10.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %add.i = add nuw nsw i32 %9, 1
  %10 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %fmt1, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.then8.if.end10.i_crit_edge
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp11.i = icmp ult i32 %12, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %12)
  %cmp14.i = icmp ult i32 %12, 8191
  %or.cond96 = and i1 %cmp11.i, %cmp14.i
  br i1 %or.cond96, label %if.then15.i, label %if.end10.i.if.end12_crit_edge

if.end10.i.if.end12_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  %add13.i = add nuw nsw i32 %12, 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add13.i, ptr %height, align 4
  br label %if.end12

if.else9:                                         ; preds = %if.end6
  %h_align = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %fmt, i32 0, i32 4
  %14 = ptrtoint ptr %h_align to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %h_align, align 4
  %height11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %v_align = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %fmt, i32 0, i32 5
  %16 = ptrtoint ptr %v_align to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v_align, align 4
  %18 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt1, align 4
  %20 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height11, align 4
  %shl1.i = shl nuw i32 1, %17
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %variant.i76 = getelementptr inbounds %struct.s5p_jpeg, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %variant.i76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant.i76, align 4
  %hw3250_compat.i77 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %hw3250_compat.i77 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i78 = load i8, ptr %hw3250_compat.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i78)
  %tobool.not.i79 = icmp slt i8 %bf.load.i78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  %or.cond.i = and i1 %cmp.i, %tobool.not.i79
  %and.i80 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i80)
  %cmp2.i81 = icmp eq i32 %and.i80, 1
  %or.cond1.i = select i1 %or.cond.i, i1 %cmp2.i81, i1 false
  %hmax.addr.0.i = select i1 %or.cond1.i, i32 %21, i32 8192
  %wmax.addr.0.i = select i1 %or.cond1.i, i32 %19, i32 8192
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 32, i32 noundef %wmax.addr.0.i, i32 noundef %15, ptr noundef %height11, i32 noundef 32, i32 noundef %hmax.addr.0.i, i32 noundef %17, i32 noundef 0) #14
  %27 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %19)
  %cmp5.i82 = icmp ult i32 %28, %19
  br i1 %cmp5.i82, label %land.lhs.true6.i85, label %if.else9.if.end10.i88_crit_edge

if.else9.if.end10.i88_crit_edge:                  ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i88

land.lhs.true6.i85:                               ; preds = %if.else9
  %shl.i = shl nuw i32 1, %15
  %add.i83 = add i32 %28, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i83, i32 %wmax.addr.0.i)
  %cmp7.i84 = icmp ult i32 %add.i83, %wmax.addr.0.i
  br i1 %cmp7.i84, label %if.then8.i86, label %land.lhs.true6.i85.if.end10.i88_crit_edge

land.lhs.true6.i85.if.end10.i88_crit_edge:        ; preds = %land.lhs.true6.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i88

if.then8.i86:                                     ; preds = %land.lhs.true6.i85
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i83, ptr %fmt1, align 4
  br label %if.end10.i88

if.end10.i88:                                     ; preds = %if.then8.i86, %land.lhs.true6.i85.if.end10.i88_crit_edge, %if.else9.if.end10.i88_crit_edge
  %30 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %21)
  %cmp11.i87 = icmp ult i32 %31, %21
  br i1 %cmp11.i87, label %land.lhs.true12.i91, label %if.end10.i88.if.end12_crit_edge

if.end10.i88.if.end12_crit_edge:                  ; preds = %if.end10.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

land.lhs.true12.i91:                              ; preds = %if.end10.i88
  %add13.i89 = add i32 %31, %shl1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i89, i32 %hmax.addr.0.i)
  %cmp14.i90 = icmp ult i32 %add13.i89, %hmax.addr.0.i
  br i1 %cmp14.i90, label %if.then15.i92, label %land.lhs.true12.i91.if.end12_crit_edge

land.lhs.true12.i91.if.end12_crit_edge:           ; preds = %land.lhs.true12.i91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then15.i92:                                    ; preds = %land.lhs.true12.i91
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %height11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add13.i89, ptr %height11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then15.i92, %land.lhs.true12.i91.if.end12_crit_edge, %if.end10.i88.if.end12_crit_edge, %if.then15.i, %if.end10.i.if.end12_crit_edge
  %33 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195724874, i32 %34)
  %cmp13 = icmp eq i32 %34, 1195724874
  br i1 %cmp13, label %if.then14, label %if.else19

if.then14:                                        ; preds = %if.end12
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %35 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp15 = icmp eq i32 %36, 0
  br i1 %cmp15, label %if.then16, label %if.then14.if.end18_crit_edge

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4096, ptr %sizeimage, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then14.if.end18_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bytesperline, align 4
  br label %cleanup

if.else19:                                        ; preds = %if.end12
  %bytesperline20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %39 = ptrtoint ptr %bytesperline20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bytesperline20, align 4
  %colplanes = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %fmt, i32 0, i32 2
  %41 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp21 = icmp sgt i32 %42, 1
  br i1 %cmp21, label %if.end26.thread, label %if.end26

if.end26.thread:                                  ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fmt1, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %40, i32 %44)
  br label %if.end35

if.end26:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp28 = icmp eq i32 %42, 1
  br i1 %cmp28, label %land.lhs.true29, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true29:                                  ; preds = %if.end26
  %shl = shl i32 %40, 3
  %depth = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %fmt, i32 0, i32 1
  %46 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %depth, align 4
  %div = udiv i32 %shl, %47
  %48 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %49)
  %cmp31 = icmp ult i32 %div, %49
  br i1 %cmp31, label %if.then32, label %land.lhs.true29.if.end35_crit_edge

land.lhs.true29.if.end35_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #16
  %mul = mul i32 %49, %47
  %shr = lshr i32 %mul, 3
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true29.if.end35_crit_edge, %if.end26.if.end35_crit_edge, %if.end26.thread
  %bpl.1 = phi i32 [ %shr, %if.then32 ], [ %40, %land.lhs.true29.if.end35_crit_edge ], [ %40, %if.end26.if.end35_crit_edge ], [ %45, %if.end26.thread ]
  %50 = ptrtoint ptr %bytesperline20 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bpl.1, ptr %bytesperline20, align 4
  %51 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmt1, align 4
  %height38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %height38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height38, align 4
  %mul39 = mul i32 %54, %52
  %depth40 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %fmt, i32 0, i32 1
  %55 = ptrtoint ptr %depth40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %depth40, align 4
  %mul41 = mul i32 %mul39, %56
  %shr42 = lshr i32 %mul41, 3
  %sizeimage43 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %57 = ptrtoint ptr %sizeimage43 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr42, ptr %sizeimage43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end35 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos3250_jpeg_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %slock) #14
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @exynos3250_jpeg_get_timer_status(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not = icmp sgt i32 %call, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_clear_timer_status(ptr noundef %3) #14
  %dev = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.56) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call3 = tail call i32 @exynos3250_jpeg_get_int_status(ptr noundef %7) #14
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_clear_int_status(ptr noundef %9, i32 noundef %call3) #14
  %irq_status5 = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 12
  %10 = ptrtoint ptr %irq_status5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status5, align 4
  %or = or i32 %11, %call3
  store i32 %or, ptr %irq_status5, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 11
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp = icmp ne i32 %15, 3
  %and6 = and i32 %call3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = or i1 %tobool7.not, %cmp
  br i1 %or.cond, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev12 = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 10
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.59) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %m2m_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %dev_id, i32 0, i32 5
  %18 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_dev, align 4
  %call14 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %19) #14
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.exit_unlock_crit_edge, label %if.end17

if.end13.exit_unlock_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock

if.end17:                                         ; preds = %if.end13
  %and18 = and i32 %call3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end24_crit_edge, label %land.lhs.true20

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end17
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call14, i32 0, i32 1
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp21 = icmp eq i32 %21, 1
  br i1 %cmp21, label %if.then22, label %land.lhs.true20.if.end24_crit_edge

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_rstart(ptr noundef %23) #14
  br label %exit_unlock

if.end24:                                         ; preds = %land.lhs.true20.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %24 = ptrtoint ptr %irq_status5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_status5, align 4
  %and26 = and i32 %25, 3616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %call30 = tail call i32 @exynos3250_jpeg_compressed_size(ptr noundef %27) #14
  br label %if.end36

if.else:                                          ; preds = %if.end24
  %brmerge.demorgan = and i1 %tobool.not, %or.cond
  br i1 %brmerge.demorgan, label %if.else.exit_unlock_crit_edge, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.else.exit_unlock_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then28
  %payload_size.0 = phi i32 [ %call30, %if.then28 ], [ 0, %if.else.if.end36_crit_edge ]
  %state.0 = phi i32 [ 5, %if.then28 ], [ 6, %if.else.if.end36_crit_edge ]
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call14, i32 0, i32 9, i32 10
  %28 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %29, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #14
  %30 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %31, i32 0, i32 7
  %call.i96 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #14
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i96, i32 0, i32 3
  %timecode41 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %timecode, ptr %timecode41, i32 16)
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %timestamp, align 8
  %timestamp43 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i96, i32 0, i32 5
  %35 = ptrtoint ptr %timestamp43 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %timestamp43, align 8
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %state.0) #14
  %mode44 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call14, i32 0, i32 1
  %36 = ptrtoint ptr %mode44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp45 = icmp eq i32 %37, 0
  br i1 %cmp45, label %if.then46, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then46:                                        ; preds = %if.end36
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i96, i32 0, i32 4
  %38 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %if.then46.if.end48_crit_edge, label %if.then.i

if.then46.if.end48_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then.i:                                        ; preds = %if.then46
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i96, i32 0, i32 10, i32 0, i32 4
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %payload_size.0)
  %cmp1.i = icmp ult i32 %41, %payload_size.0
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !189

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %43, %if.then38.i ], [ %payload_size.0, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i96, i32 0, i32 10, i32 0, i32 3
  %44 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end42.i, %if.then46.if.end48_crit_edge, %if.end36.if.end48_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %call.i96, i32 noundef %state.0) #14
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %call50 = tail call i32 @exynos3250_jpeg_get_subsampling_mode(ptr noundef %46) #14
  %conv = trunc i32 %call50 to i16
  %subsampling = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call14, i32 0, i32 4
  %47 = ptrtoint ptr %subsampling to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv, ptr %subsampling, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slock) #14
  %48 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %m2m_dev, align 4
  %50 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %49, ptr noundef %51) #14
  br label %cleanup

exit_unlock:                                      ; preds = %if.else.exit_unlock_crit_edge, %if.then22, %if.end13.exit_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #14
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %if.end48
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos3250_jpeg_device_run(ptr noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #14
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_reset(ptr noundef %3) #14
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_set_dma_num(ptr noundef %5) #14
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_poweron(ptr noundef %7) #14
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_clk_set(ptr noundef %9) #14
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  tail call void @exynos3250_jpeg_proc_mode(ptr noundef %11, i32 noundef %13) #14
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %out_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5
  %18 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_q, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void @exynos3250_jpeg_input_raw_fmt(ptr noundef %17, i32 noundef %21) #14
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %restart_interval = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 3
  %24 = ptrtoint ptr %restart_interval to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %restart_interval, align 2
  %conv16 = zext i16 %25 to i32
  tail call void @exynos3250_jpeg_dri(ptr noundef %23, i32 noundef %conv16) #14
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %compr_quality = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 2
  %28 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %compr_quality, align 4
  %conv18 = zext i16 %29 to i32
  %arrayidx.i = getelementptr [4 x [64 x i8]], ptr @qtbl_luminance, i32 0, i32 %conv18
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 1024
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %i.01.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !190
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 %i.01.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  %32 = shl nuw i32 %conv.i.i, 24
  %mul.i.i = shl i32 %i.01.i.i, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %32) #14, !srcloc !191
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %s5p_jpeg_set_qtbl_lum.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

s5p_jpeg_set_qtbl_lum.exit:                       ; preds = %do.body.i.i
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %35 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %compr_quality, align 4
  %conv21 = zext i16 %36 to i32
  %arrayidx.i160 = getelementptr [4 x [64 x i8]], ptr @qtbl_chrominance, i32 0, i32 %conv21
  %add.ptr.i.i161 = getelementptr i8, ptr %34, i32 1280
  br label %do.body.i.i169

do.body.i.i169:                                   ; preds = %do.body.i.i169.do.body.i.i169_crit_edge, %s5p_jpeg_set_qtbl_lum.exit
  %i.01.i.i162 = phi i32 [ 0, %s5p_jpeg_set_qtbl_lum.exit ], [ %inc.i.i167, %do.body.i.i169.do.body.i.i169_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !190
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i163 = getelementptr i8, ptr %arrayidx.i160, i32 %i.01.i.i162
  %37 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i163, align 1
  %conv.i.i164 = zext i8 %38 to i32
  %39 = shl nuw i32 %conv.i.i164, 24
  %mul.i.i165 = shl i32 %i.01.i.i162, 2
  %add.ptr1.i.i166 = getelementptr i8, ptr %add.ptr.i.i161, i32 %mul.i.i165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i166, i32 %39) #14, !srcloc !191
  %inc.i.i167 = add nuw nsw i32 %i.01.i.i162, 1
  %exitcond.not.i.i168 = icmp eq i32 %inc.i.i167, 64
  br i1 %exitcond.not.i.i168, label %s5p_jpeg_set_qtbl_chr.exit, label %do.body.i.i169.do.body.i.i169_crit_edge

do.body.i.i169.do.body.i.i169_crit_edge:          ; preds = %do.body.i.i169
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i169

s5p_jpeg_set_qtbl_chr.exit:                       ; preds = %do.body.i.i169
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_qtbl(ptr noundef %41, i32 noundef 1, i32 noundef 0) #14
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_qtbl(ptr noundef %43, i32 noundef 2, i32 noundef 1) #14
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_qtbl(ptr noundef %45, i32 noundef 3, i32 noundef 1) #14
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant, align 4
  %htbl_reinit = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %htbl_reinit to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %htbl_reinit, align 4
  %49 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %s5p_jpeg_set_qtbl_chr.exit.if.end_crit_edge, label %if.then25

s5p_jpeg_set_qtbl_chr.exit.if.end_crit_edge:      ; preds = %s5p_jpeg_set_qtbl_chr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then25:                                        ; preds = %s5p_jpeg_set_qtbl_chr.exit
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr.i.i170 = getelementptr i8, ptr %51, i32 2048
  br label %do.body.i.i177

do.body.i.i177:                                   ; preds = %do.body.i.i177.do.body.i.i177_crit_edge, %if.then25
  %i.06.i.i = phi i32 [ 0, %if.then25 ], [ %inc.i.i175, %do.body.i.i177.do.body.i.i177_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i171 = getelementptr i8, ptr @hdctbl0, i32 %i.06.i.i
  %52 = ptrtoint ptr %arrayidx.i.i171 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i171, align 1
  %conv.i.i172 = zext i8 %53 to i32
  %54 = shl nuw i32 %conv.i.i172, 24
  %mul.i.i173 = shl i32 %i.06.i.i, 2
  %add.ptr1.i.i174 = getelementptr i8, ptr %add.ptr.i.i170, i32 %mul.i.i173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i174, i32 %54) #14, !srcloc !191
  %inc.i.i175 = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i176 = icmp eq i32 %inc.i.i175, 16
  br i1 %exitcond.not.i.i176, label %s5p_jpeg_set_hdctbl.exit, label %do.body.i.i177.do.body.i.i177_crit_edge

do.body.i.i177.do.body.i.i177_crit_edge:          ; preds = %do.body.i.i177
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i177

s5p_jpeg_set_hdctbl.exit:                         ; preds = %do.body.i.i177
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  tail call fastcc void @s5p_jpeg_set_hdctblg(ptr noundef %56)
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %58, i32 2176
  br label %do.body.i.i186

do.body.i.i186:                                   ; preds = %do.body.i.i186.do.body.i.i186_crit_edge, %s5p_jpeg_set_hdctbl.exit
  %i.06.i.i179 = phi i32 [ 0, %s5p_jpeg_set_hdctbl.exit ], [ %inc.i.i184, %do.body.i.i186.do.body.i.i186_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i180 = getelementptr i8, ptr @hactbl0, i32 %i.06.i.i179
  %59 = ptrtoint ptr %arrayidx.i.i180 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i180, align 1
  %conv.i.i181 = zext i8 %60 to i32
  %61 = shl nuw i32 %conv.i.i181, 24
  %mul.i.i182 = shl i32 %i.06.i.i179, 2
  %add.ptr1.i.i183 = getelementptr i8, ptr %add.ptr.i.i178, i32 %mul.i.i182
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i183, i32 %61) #14, !srcloc !191
  %inc.i.i184 = add nuw nsw i32 %i.06.i.i179, 1
  %exitcond.not.i.i185 = icmp eq i32 %inc.i.i184, 16
  br i1 %exitcond.not.i.i185, label %s5p_jpeg_set_hactbl.exit, label %do.body.i.i186.do.body.i.i186_crit_edge

do.body.i.i186.do.body.i.i186_crit_edge:          ; preds = %do.body.i.i186
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i186

s5p_jpeg_set_hactbl.exit:                         ; preds = %do.body.i.i186
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr.i.i187 = getelementptr i8, ptr %63, i32 2240
  br label %do.body.i.i195

do.body.i.i195:                                   ; preds = %do.body.i.i195.do.body.i.i195_crit_edge, %s5p_jpeg_set_hactbl.exit
  %i.06.i.i188 = phi i32 [ 0, %s5p_jpeg_set_hactbl.exit ], [ %inc.i.i193, %do.body.i.i195.do.body.i.i195_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i189 = getelementptr i8, ptr @hactblg0, i32 %i.06.i.i188
  %64 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.i189, align 1
  %conv.i.i190 = zext i8 %65 to i32
  %66 = shl nuw i32 %conv.i.i190, 24
  %mul.i.i191 = shl i32 %i.06.i.i188, 2
  %add.ptr1.i.i192 = getelementptr i8, ptr %add.ptr.i.i187, i32 %mul.i.i191
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i192, i32 %66) #14, !srcloc !191
  %inc.i.i193 = add nuw nsw i32 %i.06.i.i188, 1
  %exitcond.not.i.i194 = icmp eq i32 %inc.i.i193, 162
  br i1 %exitcond.not.i.i194, label %do.body.i.i195.if.end_crit_edge, label %do.body.i.i195.do.body.i.i195_crit_edge

do.body.i.i195.do.body.i.i195_crit_edge:          ; preds = %do.body.i.i195
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i195

do.body.i.i195.if.end_crit_edge:                  ; preds = %do.body.i.i195
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body.i.i195.if.end_crit_edge, %s5p_jpeg_set_qtbl_chr.exit.if.end_crit_edge
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_htbl_ac(ptr noundef %68, i32 noundef 1) #14
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_htbl_dc(ptr noundef %70, i32 noundef 1) #14
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_htbl_ac(ptr noundef %72, i32 noundef 2) #14
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_htbl_dc(ptr noundef %74, i32 noundef 2) #14
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_htbl_ac(ptr noundef %76, i32 noundef 3) #14
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_htbl_dc(ptr noundef %78, i32 noundef 3) #14
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %crop_rect = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 8
  %width = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 8, i32 2
  %81 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %width, align 4
  tail call void @exynos3250_jpeg_set_x(ptr noundef %80, i32 noundef %82) #14
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %height = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 8, i32 3
  %85 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %height, align 4
  tail call void @exynos3250_jpeg_set_y(ptr noundef %84, i32 noundef %86) #14
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 4
  %89 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %out_q, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %w = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 1
  %93 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %w, align 4
  tail call void @exynos3250_jpeg_stride(ptr noundef %88, i32 noundef %92, i32 noundef %94) #14
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 4
  %97 = ptrtoint ptr %crop_rect to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %crop_rect, align 4
  %top = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 8, i32 1
  %99 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %top, align 4
  tail call void @exynos3250_jpeg_offset(ptr noundef %96, i32 noundef %98, i32 noundef %100) #14
  tail call fastcc void @exynos3250_jpeg_set_img_addr(ptr noundef %priv)
  %101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv, align 4
  %103 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i = icmp eq i32 %104, 0
  %m2m_ctx.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 9, i32 10
  %105 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %106, i32 0, i32 8
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %106, i32 0, i32 7
  %out_q_ctx.i.sink.i = select i1 %cmp.i, ptr %cap_q_ctx.i.i, ptr %out_q_ctx.i.i
  %call.i9.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.sink.i) #14
  %call.i10.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i9.i, i32 noundef 0) #14
  %107 = ptrtoint ptr %call.i10.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call.i10.i, align 4
  %regs.i = getelementptr inbounds %struct.s5p_jpeg, ptr %102, i32 0, i32 6
  %109 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i, align 4
  tail call void @exynos3250_jpeg_jpgadr(ptr noundef %110, i32 noundef %108) #14
  %111 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs, align 4
  %subsampling = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 4
  %113 = ptrtoint ptr %subsampling to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %subsampling, align 4
  %conv48 = zext i16 %114 to i32
  tail call void @exynos3250_jpeg_subsampling_mode(ptr noundef %112, i32 noundef %conv48) #14
  %115 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs, align 4
  %size = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6, i32 8
  %117 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size, align 4
  tail call void @exynos3250_jpeg_enc_stream_bound(ptr noundef %116, i32 noundef %118) #14
  %119 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %out_q, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %122, label %if.end.if.end84_crit_edge [
    i32 1346520914, label %if.end.if.then66_crit_edge
    i32 1380075346, label %if.end.if.then66_crit_edge205
    i32 876758866, label %if.end.if.then66_crit_edge206
  ]

if.end.if.then66_crit_edge206:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then66

if.end.if.then66_crit_edge205:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then66

if.end.if.then66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then66

if.end.if.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.then66:                                        ; preds = %if.end.if.then66_crit_edge, %if.end.if.then66_crit_edge205, %if.end.if.then66_crit_edge206
  %124 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_set_y16(ptr noundef %125, i1 noundef zeroext true) #14
  br label %if.end84

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @exynos3250_jpeg_set_img_addr(ptr noundef %priv)
  %126 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %priv, align 4
  %128 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp.i197 = icmp eq i32 %129, 0
  %m2m_ctx.i198 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 9, i32 10
  %130 = ptrtoint ptr %m2m_ctx.i198 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %m2m_ctx.i198, align 4
  %out_q_ctx.i.i199 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %131, i32 0, i32 8
  %cap_q_ctx.i.i200 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %131, i32 0, i32 7
  %out_q_ctx.i.sink.i201 = select i1 %cmp.i197, ptr %cap_q_ctx.i.i200, ptr %out_q_ctx.i.i199
  %call.i9.i202 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.sink.i201) #14
  %call.i10.i203 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i9.i202, i32 noundef 0) #14
  %132 = ptrtoint ptr %call.i10.i203 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %call.i10.i203, align 4
  %regs.i204 = getelementptr inbounds %struct.s5p_jpeg, ptr %127, i32 0, i32 6
  %134 = ptrtoint ptr %regs.i204 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i204, align 4
  tail call void @exynos3250_jpeg_jpgadr(ptr noundef %135, i32 noundef %133) #14
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %cap_q70 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6
  %138 = ptrtoint ptr %cap_q70 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cap_q70, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %w74 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6, i32 1
  %142 = ptrtoint ptr %w74 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %w74, align 4
  tail call void @exynos3250_jpeg_stride(ptr noundef %137, i32 noundef %141, i32 noundef %143) #14
  %144 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_offset(ptr noundef %145, i32 noundef 0, i32 noundef 0) #14
  %146 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs, align 4
  %scale_factor = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 7
  %148 = ptrtoint ptr %scale_factor to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %scale_factor, align 4
  tail call void @exynos3250_jpeg_dec_scaling_ratio(ptr noundef %147, i32 noundef %149) #14
  %150 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs, align 4
  %size79 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 8
  %152 = ptrtoint ptr %size79 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %size79, align 4
  tail call void @exynos3250_jpeg_dec_stream_size(ptr noundef %151, i32 noundef %153) #14
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs, align 4
  %156 = ptrtoint ptr %cap_q70 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cap_q70, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %157, align 4
  tail call void @exynos3250_jpeg_output_raw_fmt(ptr noundef %155, i32 noundef %159) #14
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then66, %if.end.if.end84_crit_edge
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_interrupts_enable(ptr noundef %161) #14
  %162 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs, align 4
  %164 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mode, align 4
  tail call void @exynos3250_jpeg_coef(ptr noundef %163, i32 noundef %165) #14
  %166 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_set_timer(ptr noundef %167, i32 noundef 268435456) #14
  %irq_status = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 12
  %168 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %irq_status, align 4
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  tail call void @exynos3250_jpeg_start(ptr noundef %170) #14
  %171 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %priv, align 4
  %slock91 = getelementptr inbounds %struct.s5p_jpeg, ptr %172, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock91, i32 noundef %call4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_dma_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_poweron(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_clk_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_proc_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_input_raw_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_dri(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_qtbl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_jpeg_set_hdctblg(ptr noundef %regs) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %regs, i32 2112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.1 = getelementptr i8, ptr %regs, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 16777216) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.2 = getelementptr i8, ptr %regs, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.2, i32 33554432) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.3 = getelementptr i8, ptr %regs, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.3, i32 50331648) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.4 = getelementptr i8, ptr %regs, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.4, i32 67108864) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.5 = getelementptr i8, ptr %regs, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.5, i32 83886080) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.6 = getelementptr i8, ptr %regs, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.6, i32 100663296) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.7 = getelementptr i8, ptr %regs, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.7, i32 117440512) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.8 = getelementptr i8, ptr %regs, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.8, i32 134217728) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.9 = getelementptr i8, ptr %regs, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.9, i32 150994944) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.10 = getelementptr i8, ptr %regs, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.10, i32 167772160) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %add.ptr1.i.11 = getelementptr i8, ptr %regs, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.11, i32 184549376) #14, !srcloc !191
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_htbl_ac(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_htbl_dc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_x(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_y(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_stride(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos3250_jpeg_set_img_addr(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %jpeg_addr = alloca %struct.s5p_jpeg_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %jpeg_addr) #14
  %2 = getelementptr inbounds i8, ptr %jpeg_addr, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %w = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %w, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h, align 4
  %mul = mul i32 %7, %5
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 9, i32 10
  %10 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #14
  %out_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cap_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6
  %m2m_ctx5 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 9, i32 10
  %12 = ptrtoint ptr %m2m_ctx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx5, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 7
  %call.i46 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fmt.0.in = phi ptr [ %out_q, %if.then ], [ %cap_q, %if.else ]
  %vb.0 = phi ptr [ %call.i, %if.then ], [ %call.i46, %if.else ]
  %14 = ptrtoint ptr %fmt.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %fmt.0 = load ptr, ptr %fmt.0.in, align 4
  %call.i47 = tail call ptr @vb2_plane_cookie(ptr noundef %vb.0, i32 noundef 0) #14
  %15 = ptrtoint ptr %call.i47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i47, align 4
  %17 = ptrtoint ptr %jpeg_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %jpeg_addr, align 4
  %colplanes = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %fmt.0, i32 0, i32 2
  %18 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %colplanes, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %19, label %if.end.if.end31_crit_edge [
    i32 2, label %if.then11
    i32 3, label %if.then16
  ]

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %16, %mul
  %cb = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %jpeg_addr, i32 0, i32 1
  %21 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %cb, align 4
  br label %if.end31

if.then16:                                        ; preds = %if.end
  %add18 = add i32 %16, %mul
  %cb19 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %jpeg_addr, i32 0, i32 1
  %22 = ptrtoint ptr %cb19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add18, ptr %cb19, align 4
  %23 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %24)
  %cmp20 = icmp eq i32 %24, 842093913
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %div45 = lshr i32 %mul, 2
  %add23 = add i32 %add18, %div45
  %cr = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %jpeg_addr, i32 0, i32 2
  %25 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add23, ptr %cr, align 4
  br label %if.end31

if.else24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %div2644 = lshr i32 %mul, 1
  %add27 = add i32 %add18, %div2644
  %cr28 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %jpeg_addr, i32 0, i32 2
  %26 = ptrtoint ptr %cr28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add27, ptr %cr28, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.then21, %if.then11, %if.end.if.end31_crit_edge
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  call void @exynos3250_jpeg_imgadr(ptr noundef %28, ptr noundef nonnull %jpeg_addr) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %jpeg_addr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_subsampling_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_enc_stream_bound(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_y16(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_dec_scaling_ratio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_dec_stream_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_output_raw_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_interrupts_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_coef(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_imgadr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_jpgadr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_get_timer_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_clear_timer_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_get_int_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_clear_int_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_rstart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_compressed_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_get_subsampling_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4_jpeg_irq(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %slock) #14
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void @exynos4_jpeg_set_sys_int_enable(ptr noundef %1, i32 noundef 0) #14
  %m2m_dev = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  %call = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %3) #14
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call, i32 0, i32 9, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #14
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i61 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #14
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call6 = tail call i32 @exynos4_jpeg_get_int_status(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end25.critedge, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %call6, 31
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and, label %sw.default [
    i32 1, label %if.end25.critedge64
    i32 2, label %if.then18.critedge
    i32 4, label %if.then.if.end_crit_edge
    i32 8, label %sw.bb11
    i32 16, label %sw.bb13
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.bb11:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.bb13:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb13, %sw.bb11, %if.then.if.end_crit_edge
  %.sink = phi i32 [ 3, %sw.bb11 ], [ 4, %sw.bb13 ], [ 5, %sw.default ], [ 2, %if.then.if.end_crit_edge ]
  %irq_ret = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 8
  %11 = ptrtoint ptr %irq_ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %irq_ret, align 4
  br label %if.end25

if.then18.critedge:                               ; preds = %if.then
  %irq_ret.c66 = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 8
  %12 = ptrtoint ptr %irq_ret.c66 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %irq_ret.c66, align 4
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19 = icmp eq i32 %14, 0
  br i1 %cmp19, label %if.then20, label %if.then18.critedge.if.end25_crit_edge

if.then18.critedge.if.end25_crit_edge:            ; preds = %if.then18.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then20:                                        ; preds = %if.then18.critedge
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %call22 = tail call i32 @exynos4_jpeg_get_stream_size(ptr noundef %16) #14
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i61, i32 0, i32 4
  %17 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %if.then20.if.end25_crit_edge, label %if.then.i

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then.i:                                        ; preds = %if.then20
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i61, i32 0, i32 10, i32 0, i32 4
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %call22)
  %cmp1.i = icmp ult i32 %20, %call22
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !189

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 1163, i32 noundef 9, ptr noundef null) #14
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %22, %if.then38.i ], [ %call22, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i61, i32 0, i32 10, i32 0, i32 3
  %23 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %if.end25

if.end25.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %irq_ret.c = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 8
  %24 = ptrtoint ptr %irq_ret.c to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %irq_ret.c, align 4
  br label %if.end25

if.end25.critedge64:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %irq_ret.c65 = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 8
  %25 = ptrtoint ptr %irq_ret.c65 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %irq_ret.c65, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.critedge64, %if.end25.critedge, %if.end42.i, %if.then20.if.end25_crit_edge, %if.then18.critedge.if.end25_crit_edge, %if.end
  %.sink63 = phi i32 [ 5, %if.end42.i ], [ 5, %if.then20.if.end25_crit_edge ], [ 5, %if.then18.critedge.if.end25_crit_edge ], [ 6, %if.end ], [ 6, %if.end25.critedge ], [ 6, %if.end25.critedge64 ]
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %.sink63) #14
  tail call void @vb2_buffer_done(ptr noundef %call.i61, i32 noundef %.sink63) #14
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %priv, i32 0, i32 11
  %26 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp26 = icmp eq i32 %29, 2
  br i1 %cmp26, label %if.then27, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %call29 = tail call i32 @exynos4_jpeg_get_frame_fmt(ptr noundef %31) #14
  %conv = trunc i32 %call29 to i16
  %subsampling = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %call, i32 0, i32 4
  %32 = ptrtoint ptr %subsampling to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %subsampling, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  tail call void @exynos4_jpeg_set_enc_dec_mode(ptr noundef %34, i32 noundef -1) #14
  tail call void @_raw_spin_unlock(ptr noundef %slock) #14
  %35 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m2m_dev, align 4
  %37 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %36, ptr noundef %38) #14
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos4_jpeg_device_run(ptr noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #14
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void @exynos4_jpeg_sw_reset(ptr noundef %5) #14
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  tail call void @exynos4_jpeg_set_interrupt(ptr noundef %7, i32 noundef %11) #14
  br i1 %cmp6, label %if.then, label %if.else41

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void @exynos4_jpeg_set_huf_table_enable(ptr noundef %13, i32 noundef 1) #14
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 66817) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i.1.i = getelementptr i8, ptr %15, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.1.i, i32 16843009) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i.2.i = getelementptr i8, ptr %15, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.2.i, i32 16777216) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i.3.i = getelementptr i8, ptr %15, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.3.i, i32 0) #14, !srcloc !191
  %add.ptr.i8.i = getelementptr i8, ptr %15, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 66817) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i27.1.i = getelementptr i8, ptr %15, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i27.1.i, i32 16843009) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i27.2.i = getelementptr i8, ptr %15, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i27.2.i, i32 16777216) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i27.3.i = getelementptr i8, ptr %15, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i27.3.i, i32 0) #14, !srcloc !191
  %add.ptr.i32.i = getelementptr i8, ptr %15, i32 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 66051) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i51.1.i = getelementptr i8, ptr %15, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i51.1.i, i32 67438087) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i51.2.i = getelementptr i8, ptr %15, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i51.2.i, i32 134810123) #14, !srcloc !191
  %add.ptr.i56.i = getelementptr i8, ptr %15, i32 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 66051) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i75.1.i = getelementptr i8, ptr %15, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i75.1.i, i32 67438087) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i75.2.i = getelementptr i8, ptr %15, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i75.2.i, i32 134810123) #14, !srcloc !191
  %add.ptr.i80.i = getelementptr i8, ptr %15, i32 576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 131331) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i99.1.i = getelementptr i8, ptr %15, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i99.1.i, i32 50463747) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i99.2.i = getelementptr i8, ptr %15, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i99.2.i, i32 84214788) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i99.3.i = getelementptr i8, ptr %15, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i99.3.i, i32 381) #14, !srcloc !191
  %add.ptr.i104.i = getelementptr i8, ptr %15, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 131331) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i123.1.i = getelementptr i8, ptr %15, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i123.1.i, i32 50463747) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i123.2.i = getelementptr i8, ptr %15, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i123.2.i, i32 84214788) #14, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %add.ptr13.i123.3.i = getelementptr i8, ptr %15, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i123.3.i, i32 381) #14, !srcloc !191
  %add.ptr.i128.i = getelementptr i8, ptr %15, i32 592
  br label %for.body.i150.i

for.body.i150.i:                                  ; preds = %for.body.i150.i.for.body.i150.i_crit_edge, %if.then
  %i.025.i129.i = phi i32 [ 0, %if.then ], [ %add14.i148.i, %for.body.i150.i.for.body.i150.i_crit_edge ]
  %arrayidx.i130.i = getelementptr i8, ptr @hactblg0, i32 %i.025.i129.i
  %16 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i130.i, align 1
  %conv.i131.i = zext i8 %17 to i32
  %add.i132.i = or i32 %i.025.i129.i, 1
  %arrayidx1.i133.i = getelementptr i8, ptr @hactblg0, i32 %add.i132.i
  %18 = ptrtoint ptr %arrayidx1.i133.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i133.i, align 1
  %conv2.i134.i = zext i8 %19 to i32
  %shl.i135.i = shl nuw nsw i32 %conv2.i134.i, 8
  %or.i136.i = or i32 %shl.i135.i, %conv.i131.i
  %add3.i137.i = or i32 %i.025.i129.i, 2
  %arrayidx4.i138.i = getelementptr i8, ptr @hactblg0, i32 %add3.i137.i
  %20 = ptrtoint ptr %arrayidx4.i138.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i138.i, align 1
  %conv5.i139.i = zext i8 %21 to i32
  %shl6.i140.i = shl nuw nsw i32 %conv5.i139.i, 16
  %or7.i141.i = or i32 %or.i136.i, %shl6.i140.i
  %add8.i142.i = or i32 %i.025.i129.i, 3
  %arrayidx9.i143.i = getelementptr i8, ptr @hactblg0, i32 %add8.i142.i
  %22 = ptrtoint ptr %arrayidx9.i143.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9.i143.i, align 1
  %conv10.i144.i = zext i8 %23 to i32
  %shl11.i145.i = shl nuw i32 %conv10.i144.i, 24
  %or12.i146.i = or i32 %or7.i141.i, %shl11.i145.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %or12.i146.i) #14
  %add.ptr13.i147.i = getelementptr i8, ptr %add.ptr.i128.i, i32 %i.025.i129.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i147.i, i32 %24) #14, !srcloc !191
  %add14.i148.i = add nuw nsw i32 %i.025.i129.i, 4
  %cmp.i149.i = icmp ult i32 %i.025.i129.i, 158
  br i1 %cmp.i149.i, label %for.body.i150.i.for.body.i150.i_crit_edge, label %exynos4_jpeg_set_tbl.exit151.i

for.body.i150.i.for.body.i150.i_crit_edge:        ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i150.i

exynos4_jpeg_set_tbl.exit151.i:                   ; preds = %for.body.i150.i
  %add.ptr.i152.i = getelementptr i8, ptr %15, i32 784
  br label %for.body.i174.i

for.body.i174.i:                                  ; preds = %for.body.i174.i.for.body.i174.i_crit_edge, %exynos4_jpeg_set_tbl.exit151.i
  %i.025.i153.i = phi i32 [ 0, %exynos4_jpeg_set_tbl.exit151.i ], [ %add14.i172.i, %for.body.i174.i.for.body.i174.i_crit_edge ]
  %arrayidx.i154.i = getelementptr i8, ptr @hactblg0, i32 %i.025.i153.i
  %25 = ptrtoint ptr %arrayidx.i154.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i154.i, align 1
  %conv.i155.i = zext i8 %26 to i32
  %add.i156.i = or i32 %i.025.i153.i, 1
  %arrayidx1.i157.i = getelementptr i8, ptr @hactblg0, i32 %add.i156.i
  %27 = ptrtoint ptr %arrayidx1.i157.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.i157.i, align 1
  %conv2.i158.i = zext i8 %28 to i32
  %shl.i159.i = shl nuw nsw i32 %conv2.i158.i, 8
  %or.i160.i = or i32 %shl.i159.i, %conv.i155.i
  %add3.i161.i = or i32 %i.025.i153.i, 2
  %arrayidx4.i162.i = getelementptr i8, ptr @hactblg0, i32 %add3.i161.i
  %29 = ptrtoint ptr %arrayidx4.i162.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i162.i, align 1
  %conv5.i163.i = zext i8 %30 to i32
  %shl6.i164.i = shl nuw nsw i32 %conv5.i163.i, 16
  %or7.i165.i = or i32 %or.i160.i, %shl6.i164.i
  %add8.i166.i = or i32 %i.025.i153.i, 3
  %arrayidx9.i167.i = getelementptr i8, ptr @hactblg0, i32 %add8.i166.i
  %31 = ptrtoint ptr %arrayidx9.i167.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx9.i167.i, align 1
  %conv10.i168.i = zext i8 %32 to i32
  %shl11.i169.i = shl nuw i32 %conv10.i168.i, 24
  %or12.i170.i = or i32 %or7.i165.i, %shl11.i169.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %or12.i170.i) #14
  %add.ptr13.i171.i = getelementptr i8, ptr %add.ptr.i152.i, i32 %i.025.i153.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i171.i, i32 %33) #14, !srcloc !191
  %add14.i172.i = add nuw nsw i32 %i.025.i153.i, 4
  %cmp.i173.i = icmp ult i32 %i.025.i153.i, 158
  br i1 %cmp.i173.i, label %for.body.i174.i.for.body.i174.i_crit_edge, label %exynos4_jpeg_set_huff_tbl.exit

for.body.i174.i.for.body.i174.i_crit_edge:        ; preds = %for.body.i174.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i174.i

exynos4_jpeg_set_huff_tbl.exit:                   ; preds = %for.body.i174.i
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %compr_quality = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 2
  %36 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %compr_quality, align 4
  %conv12 = zext i16 %37 to i32
  %arrayidx.i = getelementptr [4 x [64 x i8]], ptr @qtbl_luminance, i32 0, i32 %conv12
  %add.ptr.i.i139 = getelementptr i8, ptr %35, i32 256
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %exynos4_jpeg_set_huff_tbl.exit
  %i.025.i.i = phi i32 [ 0, %exynos4_jpeg_set_huff_tbl.exit ], [ %add14.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 %i.025.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %39 to i32
  %add.i.i = or i32 %i.025.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %arrayidx.i, i32 %add.i.i
  %40 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %41 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %add3.i.i = or i32 %i.025.i.i, 2
  %arrayidx4.i.i = getelementptr i8, ptr %arrayidx.i, i32 %add3.i.i
  %42 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %43 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 16
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %add8.i.i = or i32 %i.025.i.i, 3
  %arrayidx9.i.i = getelementptr i8, ptr %arrayidx.i, i32 %add8.i.i
  %44 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = zext i8 %45 to i32
  %shl11.i.i = shl nuw i32 %conv10.i.i, 24
  %or12.i.i = or i32 %or7.i.i, %shl11.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %46 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i) #14
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr.i.i139, i32 %i.025.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %46) #14, !srcloc !191
  %add14.i.i = add nuw nsw i32 %i.025.i.i, 4
  %cmp.i.i = icmp ult i32 %i.025.i.i, 60
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %exynos4_jpeg_set_qtbl_lum.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

exynos4_jpeg_set_qtbl_lum.exit:                   ; preds = %for.body.i.i
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %49 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %compr_quality, align 4
  %conv15 = zext i16 %50 to i32
  %arrayidx.i140 = getelementptr [4 x [64 x i8]], ptr @qtbl_chrominance, i32 0, i32 %conv15
  %add.ptr.i.i141 = getelementptr i8, ptr %48, i32 320
  br label %for.body.i.i163

for.body.i.i163:                                  ; preds = %for.body.i.i163.for.body.i.i163_crit_edge, %exynos4_jpeg_set_qtbl_lum.exit
  %i.025.i.i142 = phi i32 [ 0, %exynos4_jpeg_set_qtbl_lum.exit ], [ %add14.i.i161, %for.body.i.i163.for.body.i.i163_crit_edge ]
  %arrayidx.i.i143 = getelementptr i8, ptr %arrayidx.i140, i32 %i.025.i.i142
  %51 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i143, align 1
  %conv.i.i144 = zext i8 %52 to i32
  %add.i.i145 = or i32 %i.025.i.i142, 1
  %arrayidx1.i.i146 = getelementptr i8, ptr %arrayidx.i140, i32 %add.i.i145
  %53 = ptrtoint ptr %arrayidx1.i.i146 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx1.i.i146, align 1
  %conv2.i.i147 = zext i8 %54 to i32
  %shl.i.i148 = shl nuw nsw i32 %conv2.i.i147, 8
  %or.i.i149 = or i32 %shl.i.i148, %conv.i.i144
  %add3.i.i150 = or i32 %i.025.i.i142, 2
  %arrayidx4.i.i151 = getelementptr i8, ptr %arrayidx.i140, i32 %add3.i.i150
  %55 = ptrtoint ptr %arrayidx4.i.i151 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx4.i.i151, align 1
  %conv5.i.i152 = zext i8 %56 to i32
  %shl6.i.i153 = shl nuw nsw i32 %conv5.i.i152, 16
  %or7.i.i154 = or i32 %or.i.i149, %shl6.i.i153
  %add8.i.i155 = or i32 %i.025.i.i142, 3
  %arrayidx9.i.i156 = getelementptr i8, ptr %arrayidx.i140, i32 %add8.i.i155
  %57 = ptrtoint ptr %arrayidx9.i.i156 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx9.i.i156, align 1
  %conv10.i.i157 = zext i8 %58 to i32
  %shl11.i.i158 = shl nuw i32 %conv10.i.i157, 24
  %or12.i.i159 = or i32 %or7.i.i154, %shl11.i.i158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !202
  tail call void @arm_heavy_mb() #14
  %59 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i159) #14
  %add.ptr13.i.i160 = getelementptr i8, ptr %add.ptr.i.i141, i32 %i.025.i.i142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i160, i32 %59) #14, !srcloc !191
  %add14.i.i161 = add nuw nsw i32 %i.025.i.i142, 4
  %cmp.i.i162 = icmp ult i32 %i.025.i.i142, 60
  br i1 %cmp.i.i162, label %for.body.i.i163.for.body.i.i163_crit_edge, label %exynos4_jpeg_set_qtbl_chr.exit

for.body.i.i163.for.body.i.i163_crit_edge:        ; preds = %for.body.i.i163
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i163

exynos4_jpeg_set_qtbl_chr.exit:                   ; preds = %for.body.i.i163
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %62 = ptrtoint ptr %compr_quality to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %compr_quality, align 4
  %conv18 = zext i16 %63 to i32
  tail call void @exynos4_jpeg_set_encode_tbl_select(ptr noundef %61, i32 noundef %conv18) #14
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %w = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %w, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %h, align 4
  tail call void @exynos4_jpeg_set_stream_size(ptr noundef %65, i32 noundef %67, i32 noundef %69) #14
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 4
  %variant22 = getelementptr inbounds %struct.s5p_jpeg, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %variant22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %variant22, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp24 = icmp eq i32 %75, 2
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %subsampling = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 4
  %78 = ptrtoint ptr %subsampling to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %subsampling, align 4
  %conv28 = zext i16 %79 to i32
  %. = select i1 %cmp24, i32 2, i32 4
  tail call void @__exynos4_jpeg_set_enc_out_fmt(ptr noundef %77, i32 noundef %conv28, i32 noundef %.) #14
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %out_q34 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5
  %82 = ptrtoint ptr %out_q34 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %out_q34, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  tail call void @__exynos4_jpeg_set_img_fmt(ptr noundef %81, i32 noundef %85, i32 noundef %.) #14
  tail call fastcc void @exynos4_jpeg_set_img_addr(ptr noundef %priv)
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 4
  %88 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i = icmp eq i32 %89, 0
  %m2m_ctx.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 9, i32 10
  %90 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %91, i32 0, i32 8
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %91, i32 0, i32 7
  %out_q_ctx.i.sink.i = select i1 %cmp.i, ptr %cap_q_ctx.i.i, ptr %out_q_ctx.i.i
  %call.i18.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.sink.i) #14
  %call.i19.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i18.i, i32 noundef 0) #14
  %92 = ptrtoint ptr %call.i19.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call.i19.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_jpeg, ptr %87, i32 0, i32 11
  %94 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %variant.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %97)
  %cmp6.i = icmp eq i32 %97, 4
  br i1 %cmp6.i, label %land.lhs.true.i, label %exynos4_jpeg_set_qtbl_chr.exit.exynos4_jpeg_set_jpeg_addr.exit_crit_edge

exynos4_jpeg_set_qtbl_chr.exit.exynos4_jpeg_set_jpeg_addr.exit_crit_edge: ; preds = %exynos4_jpeg_set_qtbl_chr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_set_jpeg_addr.exit

land.lhs.true.i:                                  ; preds = %exynos4_jpeg_set_qtbl_chr.exit
  %98 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp8.i = icmp eq i32 %99, 1
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true.i.exynos4_jpeg_set_jpeg_addr.exit_crit_edge

land.lhs.true.i.exynos4_jpeg_set_jpeg_addr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_set_jpeg_addr.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %sos.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 3
  %100 = ptrtoint ptr %sos.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sos.i, align 4
  %add.i = add i32 %101, %93
  br label %exynos4_jpeg_set_jpeg_addr.exit

exynos4_jpeg_set_jpeg_addr.exit:                  ; preds = %if.then9.i, %land.lhs.true.i.exynos4_jpeg_set_jpeg_addr.exit_crit_edge, %exynos4_jpeg_set_qtbl_chr.exit.exynos4_jpeg_set_jpeg_addr.exit_crit_edge
  %jpeg_addr.0.i = phi i32 [ %add.i, %if.then9.i ], [ %93, %land.lhs.true.i.exynos4_jpeg_set_jpeg_addr.exit_crit_edge ], [ %93, %exynos4_jpeg_set_qtbl_chr.exit.exynos4_jpeg_set_jpeg_addr.exit_crit_edge ]
  %regs.i = getelementptr inbounds %struct.s5p_jpeg, ptr %87, i32 0, i32 6
  %102 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i, align 4
  tail call void @exynos4_jpeg_set_stream_buf_address(ptr noundef %103, i32 noundef %jpeg_addr.0.i) #14
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %out_q38 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5
  %106 = ptrtoint ptr %out_q38 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %out_q38, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  tail call void @exynos4_jpeg_set_encode_hoff_cnt(ptr noundef %105, i32 noundef %109) #14
  br label %if.end77

if.else41:                                        ; preds = %entry
  tail call fastcc void @exynos4_jpeg_set_img_addr(ptr noundef %priv)
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 4
  %112 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i165 = icmp eq i32 %113, 0
  %m2m_ctx.i166 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 9, i32 10
  %114 = ptrtoint ptr %m2m_ctx.i166 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %m2m_ctx.i166, align 4
  %out_q_ctx.i.i167 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %115, i32 0, i32 8
  %cap_q_ctx.i.i168 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %115, i32 0, i32 7
  %out_q_ctx.i.sink.i169 = select i1 %cmp.i165, ptr %cap_q_ctx.i.i168, ptr %out_q_ctx.i.i167
  %call.i18.i170 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.sink.i169) #14
  %call.i19.i171 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i18.i170, i32 noundef 0) #14
  %116 = ptrtoint ptr %call.i19.i171 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %call.i19.i171, align 4
  %variant.i172 = getelementptr inbounds %struct.s5p_jpeg, ptr %111, i32 0, i32 11
  %118 = ptrtoint ptr %variant.i172 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %variant.i172, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %121)
  %cmp6.i173 = icmp eq i32 %121, 4
  br i1 %cmp6.i173, label %land.lhs.true.i175, label %if.else41.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge

if.else41.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge: ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_set_jpeg_addr.exit181

land.lhs.true.i175:                               ; preds = %if.else41
  %122 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp8.i174 = icmp eq i32 %123, 1
  br i1 %cmp8.i174, label %if.then9.i178, label %land.lhs.true.i175.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge

land.lhs.true.i175.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge: ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_set_jpeg_addr.exit181

if.then9.i178:                                    ; preds = %land.lhs.true.i175
  call void @__sanitizer_cov_trace_pc() #16
  %sos.i176 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 3
  %124 = ptrtoint ptr %sos.i176 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sos.i176, align 4
  %add.i177 = add i32 %125, %117
  br label %exynos4_jpeg_set_jpeg_addr.exit181

exynos4_jpeg_set_jpeg_addr.exit181:               ; preds = %if.then9.i178, %land.lhs.true.i175.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge, %if.else41.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge
  %jpeg_addr.0.i179 = phi i32 [ %add.i177, %if.then9.i178 ], [ %117, %land.lhs.true.i175.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge ], [ %117, %if.else41.exynos4_jpeg_set_jpeg_addr.exit181_crit_edge ]
  %regs.i180 = getelementptr inbounds %struct.s5p_jpeg, ptr %111, i32 0, i32 6
  %126 = ptrtoint ptr %regs.i180 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i180, align 4
  tail call void @exynos4_jpeg_set_stream_buf_address(ptr noundef %127, i32 noundef %jpeg_addr.0.i179) #14
  %128 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %variant, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %131)
  %cmp48 = icmp eq i32 %131, 4
  br i1 %cmp48, label %if.then50, label %if.else65

if.then50:                                        ; preds = %exynos4_jpeg_set_jpeg_addr.exit181
  %132 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %priv, align 4
  %134 = ptrtoint ptr %m2m_ctx.i166 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %m2m_ctx.i166, align 4
  %out_q_ctx.i.i183 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %135, i32 0, i32 8
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i183) #14
  %n2.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 4, i32 2
  %136 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %n2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp200.not.i = icmp eq i32 %137, 0
  br i1 %cmp200.not.i, label %if.then50.exynos4_jpeg_parse_huff_tbl.exit_crit_edge, label %for.body.lr.ph.i

if.then50.exynos4_jpeg_parse_huff_tbl.exit_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_huff_tbl.exit

for.body.lr.ph.i:                                 ; preds = %if.then50
  %dht.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 4
  %regs.i184 = getelementptr inbounds %struct.s5p_jpeg, ptr %133, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc85.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.0201.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc86.i, %for.inc85.i.for.body.i_crit_edge ]
  %arrayidx.i185 = getelementptr %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 4, i32 1, i32 %j.0201.i
  %138 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i185, align 4
  %call5.i = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp11198.not.i = icmp eq i32 %139, 0
  br i1 %cmp11198.not.i, label %for.body.i.for.inc85.i_crit_edge, label %get_byte.exit.lr.ph.i

for.body.i.for.inc85.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc85.i

get_byte.exit.lr.ph.i:                            ; preds = %for.body.i
  %arrayidx8.i = getelementptr [4 x i32], ptr %dht.i, i32 0, i32 %j.0201.i
  %140 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx8.i, align 4
  %142 = ptrtoint ptr %call5.i to i32
  %add.i186 = add i32 %141, %142
  %143 = inttoptr i32 %add.i186 to ptr
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %cleanup.i.get_byte.exit.i_crit_edge, %get_byte.exit.lr.ph.i
  %jpeg_buffer.sroa.8.0199.i = phi i32 [ 0, %get_byte.exit.lr.ph.i ], [ %jpeg_buffer.sroa.8.4.lcssa211.i, %cleanup.i.get_byte.exit.i_crit_edge ]
  %arrayidx.i.i187 = getelementptr i8, ptr %143, i32 %jpeg_buffer.sroa.8.0199.i
  %144 = ptrtoint ptr %arrayidx.i.i187 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i.i187, align 1
  %conv.i = and i8 %145, 15
  %jpeg_buffer.sroa.8.2187.i = add nuw i32 %jpeg_buffer.sroa.8.0199.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %145)
  %tobool.not.i.i.i = icmp ult i8 %145, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool7.not.i.i.i = icmp eq i8 %conv.i, 0
  %spec.select.i.i = select i1 %tobool7.not.i.i.i, i32 576, i32 768
  %spec.select1.i.i = select i1 %tobool7.not.i.i.i, i32 512, i32 544
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %spec.select1.i.i, i32 %spec.select.i.i
  br label %for.body19.i

for.cond37.preheader.i:                           ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add36.i)
  %cmp38192.i = icmp sgt i32 %add36.i, 0
  br i1 %cmp38192.i, label %for.body40.lr.ph.i, label %for.cond37.preheader.i.cleanup.i_crit_edge

for.cond37.preheader.i.cleanup.i_crit_edge:       ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

for.body40.lr.ph.i:                               ; preds = %for.cond37.preheader.i
  %spec.select.i154.i = select i1 %tobool7.not.i.i.i, i32 592, i32 784
  %spec.select1.i155.i = select i1 %tobool7.not.i.i.i, i32 528, i32 560
  %retval.0.i.i156.i = select i1 %tobool.not.i.i.i, i32 %spec.select1.i155.i, i32 %spec.select.i154.i
  %146 = tail call i32 @llvm.usub.sat.i32(i32 %139, i32 %jpeg_buffer.sroa.8.2.i) #14
  br label %for.body40.i

for.body19.i:                                     ; preds = %if.end35.i.for.body19.i_crit_edge, %get_byte.exit.i
  %jpeg_buffer.sroa.8.2191.i = phi i32 [ %jpeg_buffer.sroa.8.2187.i, %get_byte.exit.i ], [ %jpeg_buffer.sroa.8.2.i, %if.end35.i.for.body19.i_crit_edge ]
  %n.0190.i = phi i32 [ 0, %get_byte.exit.i ], [ %add36.i, %if.end35.i.for.body19.i_crit_edge ]
  %i.0189.i = phi i32 [ 0, %get_byte.exit.i ], [ %add25.i, %if.end35.i.for.body19.i_crit_edge ]
  %word.1188.i = phi i32 [ 0, %get_byte.exit.i ], [ %word.2.i, %if.end35.i.for.body19.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %jpeg_buffer.sroa.8.2191.i, i32 %139)
  %cmp.not.i135.i = icmp ult i32 %jpeg_buffer.sroa.8.2191.i, %139
  br i1 %cmp.not.i135.i, label %get_byte.exit142.i, label %for.body19.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge

for.body19.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge: ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_huff_tbl.exit

get_byte.exit142.i:                               ; preds = %for.body19.i
  %arrayidx.i138.i = getelementptr i8, ptr %143, i32 %jpeg_buffer.sroa.8.2191.i
  %147 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i138.i, align 1
  %conv.i139.i = zext i8 %148 to i32
  %rem.i = shl i32 %i.0189.i, 3
  %mul.i = and i32 %rem.i, 24
  %shl.i = shl nuw i32 %conv.i139.i, %mul.i
  %or.i = or i32 %shl.i, %word.1188.i
  %add25.i = add nuw nsw i32 %i.0189.i, 1
  %149 = and i32 %add25.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp27.i = icmp eq i32 %149, 0
  br i1 %cmp27.i, label %do.body.i, label %get_byte.exit142.i.if.end35.i_crit_edge

get_byte.exit142.i.if.end35.i_crit_edge:          ; preds = %get_byte.exit142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

do.body.i:                                        ; preds = %get_byte.exit142.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !203
  tail call void @arm_heavy_mb() #14
  %150 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  %151 = ptrtoint ptr %regs.i184 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i184, align 4
  %add.ptr.i = getelementptr i8, ptr %152, i32 %retval.0.i.i.i
  %div179.i = and i32 %i.0189.i, 2147483644
  %add.ptr34.i = getelementptr i8, ptr %add.ptr.i, i32 %div179.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %150) #14, !srcloc !191
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.body.i, %get_byte.exit142.i.if.end35.i_crit_edge
  %word.2.i = phi i32 [ 0, %do.body.i ], [ %or.i, %get_byte.exit142.i.if.end35.i_crit_edge ]
  %add36.i = add i32 %n.0190.i, %conv.i139.i
  %jpeg_buffer.sroa.8.2.i = add nuw i32 %jpeg_buffer.sroa.8.2191.i, 1
  %exitcond.not.i = icmp eq i32 %add25.i, 16
  br i1 %exitcond.not.i, label %for.cond37.preheader.i, label %if.end35.i.for.body19.i_crit_edge

if.end35.i.for.body19.i_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i

for.body40.i:                                     ; preds = %for.inc67.i.for.body40.i_crit_edge, %for.body40.lr.ph.i
  %i.1195.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %add50.i, %for.inc67.i.for.body40.i_crit_edge ]
  %word.3194.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %word.4.i, %for.inc67.i.for.body40.i_crit_edge ]
  %jpeg_buffer.sroa.8.4193.i = phi i32 [ %jpeg_buffer.sroa.8.2.i, %for.body40.lr.ph.i ], [ %inc.i146.i, %for.inc67.i.for.body40.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1195.i, i32 %146)
  %exitcond204.not.i = icmp eq i32 %i.1195.i, %146
  br i1 %exitcond204.not.i, label %for.body40.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge, label %get_byte.exit151.i

for.body40.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge: ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_huff_tbl.exit

get_byte.exit151.i:                               ; preds = %for.body40.i
  %inc.i146.i = add nuw i32 %jpeg_buffer.sroa.8.4193.i, 1
  %arrayidx.i147.i = getelementptr i8, ptr %143, i32 %jpeg_buffer.sroa.8.4193.i
  %153 = ptrtoint ptr %arrayidx.i147.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i147.i, align 1
  %conv.i148.i = zext i8 %154 to i32
  %rem46.urem.i = shl i32 %i.1195.i, 3
  %mul47.i = and i32 %rem46.urem.i, 24
  %shl48.i = shl nuw i32 %conv.i148.i, %mul47.i
  %or49.i = or i32 %shl48.i, %word.3194.i
  %add50.i = add nuw nsw i32 %i.1195.i, 1
  %155 = and i32 %add50.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp52.i = icmp eq i32 %155, 0
  br i1 %cmp52.i, label %do.body55.i, label %get_byte.exit151.i.for.inc67.i_crit_edge

get_byte.exit151.i.for.inc67.i_crit_edge:         ; preds = %get_byte.exit151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc67.i

do.body55.i:                                      ; preds = %get_byte.exit151.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !204
  tail call void @arm_heavy_mb() #14
  %156 = tail call i32 @llvm.bswap.i32(i32 %or49.i) #14
  %157 = ptrtoint ptr %regs.i184 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i184, align 4
  %add.ptr62.i = getelementptr i8, ptr %158, i32 %retval.0.i.i156.i
  %div63.udiv206.i = and i32 %i.1195.i, 2147483644
  %add.ptr65.i = getelementptr i8, ptr %add.ptr62.i, i32 %div63.udiv206.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %156) #14, !srcloc !191
  br label %for.inc67.i

for.inc67.i:                                      ; preds = %do.body55.i, %get_byte.exit151.i.for.inc67.i_crit_edge
  %word.4.i = phi i32 [ 0, %do.body55.i ], [ %or49.i, %get_byte.exit151.i.for.inc67.i_crit_edge ]
  %exitcond205.not.i = icmp eq i32 %add50.i, %add36.i
  br i1 %exitcond205.not.i, label %for.end69.i, label %for.inc67.i.for.body40.i_crit_edge

for.inc67.i.for.body40.i_crit_edge:               ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body40.i

for.end69.i:                                      ; preds = %for.inc67.i
  %159 = and i32 %add36.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not.i = icmp eq i32 %159, 0
  br i1 %tobool.not.i, label %for.end69.i.cleanup.i_crit_edge, label %do.body72.i

for.end69.i.cleanup.i_crit_edge:                  ; preds = %for.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

do.body72.i:                                      ; preds = %for.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !205
  tail call void @arm_heavy_mb() #14
  %160 = tail call i32 @llvm.bswap.i32(i32 %word.4.i) #14
  %161 = ptrtoint ptr %regs.i184 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i184, align 4
  %add.ptr79.i = getelementptr i8, ptr %162, i32 %retval.0.i.i156.i
  %div80.i = sdiv i32 %add36.i, 4
  %mul81.i = shl nsw i32 %div80.i, 2
  %add.ptr82.i = getelementptr i8, ptr %add.ptr79.i, i32 %mul81.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %160) #14, !srcloc !191
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body72.i, %for.end69.i.cleanup.i_crit_edge, %for.cond37.preheader.i.cleanup.i_crit_edge
  %jpeg_buffer.sroa.8.4.lcssa211.i = phi i32 [ %inc.i146.i, %for.end69.i.cleanup.i_crit_edge ], [ %inc.i146.i, %do.body72.i ], [ %jpeg_buffer.sroa.8.2.i, %for.cond37.preheader.i.cleanup.i_crit_edge ]
  %cmp11.i = icmp ult i32 %jpeg_buffer.sroa.8.4.lcssa211.i, %139
  br i1 %cmp11.i, label %cleanup.i.get_byte.exit.i_crit_edge, label %cleanup.i.for.inc85.i_crit_edge

cleanup.i.for.inc85.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc85.i

cleanup.i.get_byte.exit.i_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_byte.exit.i

for.inc85.i:                                      ; preds = %cleanup.i.for.inc85.i_crit_edge, %for.body.i.for.inc85.i_crit_edge
  %inc86.i = add nuw i32 %j.0201.i, 1
  %163 = ptrtoint ptr %n2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %n2.i, align 4
  %cmp.i188 = icmp ult i32 %inc86.i, %164
  br i1 %cmp.i188, label %for.inc85.i.for.body.i_crit_edge, label %for.inc85.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge

for.inc85.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge: ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_huff_tbl.exit

for.inc85.i.for.body.i_crit_edge:                 ; preds = %for.inc85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

exynos4_jpeg_parse_huff_tbl.exit:                 ; preds = %for.inc85.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge, %for.body40.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge, %for.body19.i.exynos4_jpeg_parse_huff_tbl.exit_crit_edge, %if.then50.exynos4_jpeg_parse_huff_tbl.exit_crit_edge
  %165 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %priv, align 4
  %167 = ptrtoint ptr %m2m_ctx.i166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %m2m_ctx.i166, align 4
  %out_q_ctx.i.i190 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %168, i32 0, i32 8
  %call.i.i191 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i190) #14
  %call2.i = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i.i191, i32 noundef 0) #14
  %169 = ptrtoint ptr %call2.i to i32
  %sos.i192 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 3
  %170 = ptrtoint ptr %sos.i192 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sos.i192, align 4
  %add.i193 = add i32 %171, %169
  %add3.i = add i32 %add.i193, 2
  %172 = inttoptr i32 %add3.i to ptr
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %172, align 1
  %conv.i.i.i = zext i8 %174 to i32
  %arrayidx.i14.i.i = getelementptr i8, ptr %172, i32 1
  %175 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i14.i.i, align 1
  %conv.i15.i.i = zext i8 %176 to i32
  %shl.i.i194 = shl nuw nsw i32 %conv.i.i.i, 8
  %or.i.i195 = or i32 %shl.i.i194, %conv.i15.i.i
  %sub.i = add nsw i32 %or.i.i195, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not.i.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i.not.i, label %exynos4_jpeg_parse_huff_tbl.exit.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge, label %get_byte.exit.i196

exynos4_jpeg_parse_huff_tbl.exit.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge: ; preds = %exynos4_jpeg_parse_huff_tbl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_h_tbl.exit

get_byte.exit.i196:                               ; preds = %exynos4_jpeg_parse_huff_tbl.exit
  %add7.i = add i32 %add.i193, 4
  %177 = inttoptr i32 %add7.i to ptr
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool12.not76.i = icmp ne i8 %179, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.not.i3877.i = icmp ne i32 %sub.i, 1
  %or.cond78.i = select i1 %tobool12.not76.i, i1 %cmp.not.i3877.i, i1 false
  br i1 %or.cond78.i, label %get_byte.exit45.lr.ph.i, label %get_byte.exit.i196.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge

get_byte.exit.i196.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge: ; preds = %get_byte.exit.i196
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_h_tbl.exit

get_byte.exit45.lr.ph.i:                          ; preds = %get_byte.exit.i196
  %conv.i.i197 = zext i8 %179 to i32
  %regs.i198 = getelementptr inbounds %struct.s5p_jpeg, ptr %166, i32 0, i32 6
  br label %get_byte.exit45.i

get_byte.exit45.i:                                ; preds = %get_byte.exit54.i.get_byte.exit45.i_crit_edge, %get_byte.exit45.lr.ph.i
  %dec80.in.i = phi i32 [ %conv.i.i197, %get_byte.exit45.lr.ph.i ], [ %dec80.i, %get_byte.exit54.i.get_byte.exit45.i_crit_edge ]
  %jpeg_buffer.sroa.9.179.i = phi i32 [ 1, %get_byte.exit45.lr.ph.i ], [ %inc.i49.i, %get_byte.exit54.i.get_byte.exit45.i_crit_edge ]
  %inc.i40.i = add nuw nsw i32 %jpeg_buffer.sroa.9.179.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i40.i, i32 %sub.i)
  %cmp.not.i47.i = icmp ult i32 %inc.i40.i, %sub.i
  br i1 %cmp.not.i47.i, label %get_byte.exit54.i, label %get_byte.exit45.i.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge

get_byte.exit45.i.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge: ; preds = %get_byte.exit45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_h_tbl.exit

get_byte.exit54.i:                                ; preds = %get_byte.exit45.i
  %dec80.i = add nsw i32 %dec80.in.i, -1
  %arrayidx.i41.i = getelementptr i8, ptr %177, i32 %jpeg_buffer.sroa.9.179.i
  %180 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i41.i, align 1
  %inc.i49.i = add nuw nsw i32 %jpeg_buffer.sroa.9.179.i, 2
  %arrayidx.i50.i = getelementptr i8, ptr %177, i32 %inc.i40.i
  %182 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.i50.i, align 1
  %184 = ptrtoint ptr %regs.i198 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs.i198, align 4
  %186 = lshr i8 %183, 3
  %shl.i199 = and i8 %186, 2
  %and21.i = and i8 %183, 1
  %or.i200 = or i8 %shl.i199, %and21.i
  tail call void @exynos4_jpeg_select_dec_h_tbl(ptr noundef %185, i8 noundef zeroext %181, i8 noundef zeroext %or.i200) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec80.i)
  %tobool12.not.i = icmp ne i32 %dec80.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i49.i, i32 %sub.i)
  %cmp.not.i38.i = icmp ult i32 %inc.i49.i, %sub.i
  %or.cond.i = select i1 %tobool12.not.i, i1 %cmp.not.i38.i, i1 false
  br i1 %or.cond.i, label %get_byte.exit54.i.get_byte.exit45.i_crit_edge, label %get_byte.exit54.i.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge

get_byte.exit54.i.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge: ; preds = %get_byte.exit54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_h_tbl.exit

get_byte.exit54.i.get_byte.exit45.i_crit_edge:    ; preds = %get_byte.exit54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_byte.exit45.i

exynos4_jpeg_parse_decode_h_tbl.exit:             ; preds = %get_byte.exit54.i.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge, %get_byte.exit45.i.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge, %get_byte.exit.i196.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge, %exynos4_jpeg_parse_huff_tbl.exit.exynos4_jpeg_parse_decode_h_tbl.exit_crit_edge
  %187 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv, align 4
  %189 = ptrtoint ptr %m2m_ctx.i166 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %m2m_ctx.i166, align 4
  %out_q_ctx.i.i203 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %190, i32 0, i32 8
  %call.i.i204 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i203) #14
  %n.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 5, i32 2
  %191 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %n.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp100.not.i = icmp eq i32 %192, 0
  br i1 %cmp100.not.i, label %exynos4_jpeg_parse_decode_h_tbl.exit.exynos4_jpeg_parse_q_tbl.exit_crit_edge, label %for.body.lr.ph.i206

exynos4_jpeg_parse_decode_h_tbl.exit.exynos4_jpeg_parse_q_tbl.exit_crit_edge: ; preds = %exynos4_jpeg_parse_decode_h_tbl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_q_tbl.exit

for.body.lr.ph.i206:                              ; preds = %exynos4_jpeg_parse_decode_h_tbl.exit
  %dqt.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 5
  %regs.i205 = getelementptr inbounds %struct.s5p_jpeg, ptr %188, i32 0, i32 6
  br label %for.body.i208

for.body.i208:                                    ; preds = %for.inc36.i.for.body.i208_crit_edge, %for.body.lr.ph.i206
  %j.0101.i = phi i32 [ 0, %for.body.lr.ph.i206 ], [ %inc37.i, %for.inc36.i.for.body.i208_crit_edge ]
  %arrayidx.i207 = getelementptr %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 5, i32 1, i32 %j.0101.i
  %193 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i207, align 4
  %call4.i = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i.i204, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %194)
  %cmp1098.i = icmp ugt i32 %194, 64
  br i1 %cmp1098.i, label %while.body.lr.ph.i, label %for.body.i208.for.inc36.i_crit_edge

for.body.i208.for.inc36.i_crit_edge:              ; preds = %for.body.i208
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc36.i

while.body.lr.ph.i:                               ; preds = %for.body.i208
  %arrayidx7.i = getelementptr [4 x i32], ptr %dqt.i, i32 0, i32 %j.0101.i
  %195 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx7.i, align 4
  %197 = ptrtoint ptr %call4.i to i32
  %add.i209 = add i32 %196, %197
  %198 = inttoptr i32 %add.i209 to ptr
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %for.inc.i
  %sub.i210 = sub i32 %194, %jpeg_buffer.sroa.7.2.i
  %cmp10.i = icmp ugt i32 %sub.i210, 64
  br i1 %cmp10.i, label %while.cond.loopexit.i.while.body.i_crit_edge, label %while.cond.loopexit.i.for.inc36.i_crit_edge

while.cond.loopexit.i.for.inc36.i_crit_edge:      ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc36.i

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %jpeg_buffer.sroa.7.099.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %jpeg_buffer.sroa.7.2.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %jpeg_buffer.sroa.7.099.i)
  %cmp.not.i.i = icmp ugt i32 %194, %jpeg_buffer.sroa.7.099.i
  br i1 %cmp.not.i.i, label %get_byte.exit.i214, label %while.body.i.exynos4_jpeg_parse_q_tbl.exit_crit_edge

while.body.i.exynos4_jpeg_parse_q_tbl.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_q_tbl.exit

get_byte.exit.i214:                               ; preds = %while.body.i
  %arrayidx.i.i211 = getelementptr i8, ptr %198, i32 %jpeg_buffer.sroa.7.099.i
  %199 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx.i.i211, align 1
  %conv.i.i212 = zext i8 %200 to i32
  %201 = and i32 %conv.i.i212, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i213 = icmp eq i32 %201, 0
  br i1 %tobool.not.i213, label %for.cond16.preheader.i, label %get_byte.exit.i214.exynos4_jpeg_parse_q_tbl.exit_crit_edge

get_byte.exit.i214.exynos4_jpeg_parse_q_tbl.exit_crit_edge: ; preds = %get_byte.exit.i214
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_q_tbl.exit

for.cond16.preheader.i:                           ; preds = %get_byte.exit.i214
  %jpeg_buffer.sroa.7.293.i = add nuw i32 %jpeg_buffer.sroa.7.099.i, 1
  %conv.i215 = shl nuw nsw i32 %conv.i.i212, 6
  %mul31.i = and i32 %conv.i215, 960
  %add32.i = add nuw nsw i32 %mul31.i, 256
  %202 = xor i32 %jpeg_buffer.sroa.7.099.i, -1
  %203 = add i32 %194, %202
  br label %for.body19.i217

for.body19.i217:                                  ; preds = %for.inc.i.for.body19.i217_crit_edge, %for.cond16.preheader.i
  %jpeg_buffer.sroa.7.296.i = phi i32 [ %jpeg_buffer.sroa.7.293.i, %for.cond16.preheader.i ], [ %jpeg_buffer.sroa.7.2.i, %for.inc.i.for.body19.i217_crit_edge ]
  %i.095.i = phi i32 [ 0, %for.cond16.preheader.i ], [ %add25.i222, %for.inc.i.for.body19.i217_crit_edge ]
  %word.194.i = phi i32 [ 0, %for.cond16.preheader.i ], [ %word.2.i227, %for.inc.i.for.body19.i217_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.095.i, i32 %203)
  %exitcond.not.i216 = icmp eq i32 %i.095.i, %203
  br i1 %exitcond.not.i216, label %for.body19.i217.exynos4_jpeg_parse_q_tbl.exit_crit_edge, label %get_byte.exit72.i

for.body19.i217.exynos4_jpeg_parse_q_tbl.exit_crit_edge: ; preds = %for.body19.i217
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_q_tbl.exit

get_byte.exit72.i:                                ; preds = %for.body19.i217
  %arrayidx.i68.i = getelementptr i8, ptr %198, i32 %jpeg_buffer.sroa.7.296.i
  %204 = ptrtoint ptr %arrayidx.i68.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx.i68.i, align 1
  %conv.i69.i = zext i8 %205 to i32
  %rem.i218 = shl i32 %i.095.i, 3
  %mul.i219 = and i32 %rem.i218, 24
  %shl.i220 = shl nuw i32 %conv.i69.i, %mul.i219
  %or.i221 = or i32 %shl.i220, %word.194.i
  %add25.i222 = add nuw nsw i32 %i.095.i, 1
  %206 = and i32 %add25.i222, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp27.i223 = icmp eq i32 %206, 0
  br i1 %cmp27.i223, label %do.body.i226, label %get_byte.exit72.i.for.inc.i_crit_edge

get_byte.exit72.i.for.inc.i_crit_edge:            ; preds = %get_byte.exit72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

do.body.i226:                                     ; preds = %get_byte.exit72.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !206
  tail call void @arm_heavy_mb() #14
  %207 = tail call i32 @llvm.bswap.i32(i32 %or.i221) #14
  %208 = ptrtoint ptr %regs.i205 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i205, align 4
  %add.ptr.i224 = getelementptr i8, ptr %209, i32 %add32.i
  %div89.i = and i32 %i.095.i, 2147483644
  %add.ptr34.i225 = getelementptr i8, ptr %add.ptr.i224, i32 %div89.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i225, i32 %207) #14, !srcloc !191
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i226, %get_byte.exit72.i.for.inc.i_crit_edge
  %word.2.i227 = phi i32 [ 0, %do.body.i226 ], [ %or.i221, %get_byte.exit72.i.for.inc.i_crit_edge ]
  %jpeg_buffer.sroa.7.2.i = add nuw i32 %jpeg_buffer.sroa.7.296.i, 1
  %exitcond104.not.i = icmp eq i32 %add25.i222, 64
  br i1 %exitcond104.not.i, label %while.cond.loopexit.i, label %for.inc.i.for.body19.i217_crit_edge

for.inc.i.for.body19.i217_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i217

for.inc36.i:                                      ; preds = %while.cond.loopexit.i.for.inc36.i_crit_edge, %for.body.i208.for.inc36.i_crit_edge
  %inc37.i = add nuw i32 %j.0101.i, 1
  %210 = ptrtoint ptr %n.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %n.i, align 4
  %cmp.i228 = icmp ult i32 %inc37.i, %211
  br i1 %cmp.i228, label %for.inc36.i.for.body.i208_crit_edge, label %for.inc36.i.exynos4_jpeg_parse_q_tbl.exit_crit_edge

for.inc36.i.exynos4_jpeg_parse_q_tbl.exit_crit_edge: ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_q_tbl.exit

for.inc36.i.for.body.i208_crit_edge:              ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i208

exynos4_jpeg_parse_q_tbl.exit:                    ; preds = %for.inc36.i.exynos4_jpeg_parse_q_tbl.exit_crit_edge, %for.body19.i217.exynos4_jpeg_parse_q_tbl.exit_crit_edge, %get_byte.exit.i214.exynos4_jpeg_parse_q_tbl.exit_crit_edge, %while.body.i.exynos4_jpeg_parse_q_tbl.exit_crit_edge, %exynos4_jpeg_parse_decode_h_tbl.exit.exynos4_jpeg_parse_q_tbl.exit_crit_edge
  %212 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %priv, align 4
  %214 = ptrtoint ptr %m2m_ctx.i166 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %m2m_ctx.i166, align 4
  %out_q_ctx.i.i230 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %215, i32 0, i32 8
  %call.i.i231 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i.i230) #14
  %sof_len.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 7
  %216 = ptrtoint ptr %sof_len.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %sof_len.i, align 4
  %call2.i232 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i.i231, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp.not.i.i.not.i = icmp ne i32 %217, 0
  %spec.select.i = zext i1 %cmp.not.i.i.not.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %spec.select.i)
  %cmp.not.i.i.1.i = icmp ugt i32 %217, %spec.select.i
  %inc.i.i.1.i = select i1 %cmp.not.i.i.not.i, i32 2, i32 1
  %spec.select.1.i = select i1 %cmp.not.i.i.1.i, i32 %inc.i.i.1.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.1.i, i32 %217)
  %cmp.not.i.i.2.i = icmp ult i32 %spec.select.1.i, %217
  %inc.i.i.2.i = zext i1 %cmp.not.i.i.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.i.i.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.2.i, i32 %217)
  %cmp.not.i.i.3.i = icmp ult i32 %spec.select.2.i, %217
  %inc.i.i.3.i = zext i1 %cmp.not.i.i.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.i.i.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.3.i, i32 %217)
  %cmp.not.i.i.4.i = icmp ult i32 %spec.select.3.i, %217
  %inc.i.i.4.i = zext i1 %cmp.not.i.i.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %inc.i.i.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.4.i, i32 %217)
  %cmp.not.i.i233 = icmp ult i32 %spec.select.4.i, %217
  br i1 %cmp.not.i.i233, label %get_byte.exit.i238, label %exynos4_jpeg_parse_q_tbl.exit.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge

exynos4_jpeg_parse_q_tbl.exit.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge: ; preds = %exynos4_jpeg_parse_q_tbl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_q_tbl.exit

get_byte.exit.i238:                               ; preds = %exynos4_jpeg_parse_q_tbl.exit
  %sof.i = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 6
  %218 = ptrtoint ptr %sof.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %sof.i, align 4
  %220 = ptrtoint ptr %call2.i232 to i32
  %add.i234 = add i32 %219, %220
  %221 = inttoptr i32 %add.i234 to ptr
  %arrayidx.i.i235 = getelementptr i8, ptr %221, i32 %spec.select.4.i
  %222 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx.i.i235, align 1
  %conv.i.i236 = zext i8 %223 to i32
  %regs.i237 = getelementptr inbounds %struct.s5p_jpeg, ptr %213, i32 0, i32 6
  %224 = ptrtoint ptr %regs.i237 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i237, align 4
  tail call void @exynos4_jpeg_set_dec_components(ptr noundef %225, i32 noundef %conv.i.i236) #14
  %jpeg_buffer.sroa.9.379.i = add nuw nsw i32 %spec.select.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not81.i = icmp ne i8 %223, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %jpeg_buffer.sroa.9.379.i, i32 %217)
  %cmp.not.i2982.i = icmp ult i32 %jpeg_buffer.sroa.9.379.i, %217
  %or.cond83.i = select i1 %tobool.not81.i, i1 %cmp.not.i2982.i, i1 false
  br i1 %or.cond83.i, label %get_byte.exit.i238.get_byte.exit36.i_crit_edge, label %get_byte.exit.i238.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge

get_byte.exit.i238.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge: ; preds = %get_byte.exit.i238
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_q_tbl.exit

get_byte.exit.i238.get_byte.exit36.i_crit_edge:   ; preds = %get_byte.exit.i238
  br label %get_byte.exit36.i

get_byte.exit36.i:                                ; preds = %get_byte.exit58.i.get_byte.exit36.i_crit_edge, %get_byte.exit.i238.get_byte.exit36.i_crit_edge
  %dec86.in.i = phi i32 [ %dec86.i, %get_byte.exit58.i.get_byte.exit36.i_crit_edge ], [ %conv.i.i236, %get_byte.exit.i238.get_byte.exit36.i_crit_edge ]
  %jpeg_buffer.sroa.9.385.i = phi i32 [ %jpeg_buffer.sroa.9.3.i, %get_byte.exit58.i.get_byte.exit36.i_crit_edge ], [ %jpeg_buffer.sroa.9.379.i, %get_byte.exit.i238.get_byte.exit36.i_crit_edge ]
  %jpeg_buffer.sroa.9.3.in84.i = phi i32 [ %spec.select77.i, %get_byte.exit58.i.get_byte.exit36.i_crit_edge ], [ %spec.select.4.i, %get_byte.exit.i238.get_byte.exit36.i_crit_edge ]
  %inc.i31.i = add nuw i32 %jpeg_buffer.sroa.9.3.in84.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i31.i, i32 %217)
  %cmp.not.i.i42.i = icmp ult i32 %inc.i31.i, %217
  %inc.i.i44.i = add nuw i32 %jpeg_buffer.sroa.9.3.in84.i, 3
  %spec.select77.i = select i1 %cmp.not.i.i42.i, i32 %inc.i.i44.i, i32 %inc.i31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select77.i, i32 %217)
  %cmp.not.i51.i = icmp ult i32 %spec.select77.i, %217
  br i1 %cmp.not.i51.i, label %get_byte.exit58.i, label %get_byte.exit36.i.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge

get_byte.exit36.i.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge: ; preds = %get_byte.exit36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_q_tbl.exit

get_byte.exit58.i:                                ; preds = %get_byte.exit36.i
  %dec86.i = add nsw i32 %dec86.in.i, -1
  %arrayidx.i32.i = getelementptr i8, ptr %221, i32 %jpeg_buffer.sroa.9.385.i
  %226 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.i32.i, align 1
  %arrayidx.i54.i = getelementptr i8, ptr %221, i32 %spec.select77.i
  %228 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.i54.i, align 1
  %230 = ptrtoint ptr %regs.i237 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i237, align 4
  tail call void @exynos4_jpeg_select_dec_q_tbl(ptr noundef %231, i8 noundef zeroext %227, i8 noundef zeroext %229) #14
  %jpeg_buffer.sroa.9.3.i = add nuw i32 %spec.select77.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec86.i)
  %tobool.not.i239 = icmp ne i32 %dec86.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %jpeg_buffer.sroa.9.3.i, i32 %217)
  %cmp.not.i29.i = icmp ult i32 %jpeg_buffer.sroa.9.3.i, %217
  %or.cond.i240 = select i1 %tobool.not.i239, i1 %cmp.not.i29.i, i1 false
  br i1 %or.cond.i240, label %get_byte.exit58.i.get_byte.exit36.i_crit_edge, label %get_byte.exit58.i.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge

get_byte.exit58.i.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge: ; preds = %get_byte.exit58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exynos4_jpeg_parse_decode_q_tbl.exit

get_byte.exit58.i.get_byte.exit36.i_crit_edge:    ; preds = %get_byte.exit58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_byte.exit36.i

exynos4_jpeg_parse_decode_q_tbl.exit:             ; preds = %get_byte.exit58.i.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge, %get_byte.exit36.i.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge, %get_byte.exit.i238.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge, %exynos4_jpeg_parse_q_tbl.exit.exynos4_jpeg_parse_decode_q_tbl.exit_crit_edge
  %232 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs, align 4
  tail call void @exynos4_jpeg_set_huf_table_enable(ptr noundef %233, i32 noundef 1) #14
  %234 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs, align 4
  %cap_q53 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6
  %w54 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6, i32 1
  %236 = ptrtoint ptr %w54 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %w54, align 4
  %h56 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6, i32 2
  %238 = ptrtoint ptr %h56 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %h56, align 4
  tail call void @exynos4_jpeg_set_stream_size(ptr noundef %235, i32 noundef %237, i32 noundef %239) #14
  %240 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs, align 4
  %subsampling58 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 4
  %242 = ptrtoint ptr %subsampling58 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %subsampling58, align 4
  %conv59 = zext i16 %243 to i32
  tail call void @__exynos4_jpeg_set_enc_out_fmt(ptr noundef %241, i32 noundef %conv59, i32 noundef 4) #14
  %244 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs, align 4
  %246 = ptrtoint ptr %cap_q53 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cap_q53, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %247, align 4
  tail call void @__exynos4_jpeg_set_img_fmt(ptr noundef %245, i32 noundef %249, i32 noundef 4) #14
  br label %if.end75

if.else65:                                        ; preds = %exynos4_jpeg_set_jpeg_addr.exit181
  call void @__sanitizer_cov_trace_pc() #16
  %250 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs, align 4
  %cap_q67 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 6
  %252 = ptrtoint ptr %cap_q67 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %cap_q67, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %253, align 4
  tail call void @__exynos4_jpeg_set_img_fmt(ptr noundef %251, i32 noundef %255, i32 noundef 2) #14
  br label %if.end75

if.end75:                                         ; preds = %if.else65, %exynos4_jpeg_parse_decode_q_tbl.exit
  %.sink259 = phi i32 [ 31, %if.else65 ], [ 15, %exynos4_jpeg_parse_decode_q_tbl.exit ]
  %.sink257 = phi i32 [ 5, %if.else65 ], [ 4, %exynos4_jpeg_parse_decode_q_tbl.exit ]
  %size71 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %priv, i32 0, i32 5, i32 8
  %256 = ptrtoint ptr %size71 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %size71, align 4
  %sub73 = add i32 %257, %.sink259
  %div74137 = lshr i32 %sub73, %.sink257
  %258 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs, align 4
  tail call void @exynos4_jpeg_set_dec_bitstream_size(ptr noundef %259, i32 noundef %div74137) #14
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %exynos4_jpeg_set_jpeg_addr.exit
  %regs78 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %260 = ptrtoint ptr %regs78 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs78, align 4
  tail call void @exynos4_jpeg_set_sys_int_enable(ptr noundef %261, i32 noundef 1) #14
  %262 = ptrtoint ptr %regs78 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %regs78, align 4
  %264 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %mode, align 4
  tail call void @exynos4_jpeg_set_enc_dec_mode(ptr noundef %263, i32 noundef %265) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_sw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_huf_table_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_encode_tbl_select(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_stream_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos4_jpeg_set_img_addr(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %jpeg_addr = alloca %struct.s5p_jpeg_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %jpeg_addr) #14
  %cb = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %jpeg_addr, i32 0, i32 1
  %cr = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %jpeg_addr, i32 0, i32 2
  %w = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %2 = getelementptr inbounds i8, ptr %jpeg_addr, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %4 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %w, align 4
  %h = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h, align 4
  %mul = mul i32 %7, %5
  %mode = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 9, i32 10
  %10 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #14
  %out_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 5
  %12 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out_q, align 4
  %w5 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %w5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %w5, align 4
  %rem = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then.if.end15_crit_edge, label %land.lhs.true

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then
  %h_align = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %h_align to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %h_align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6 = icmp sgt i32 %17, 0
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %h9 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %h9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h9, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cap_q = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 6
  %20 = ptrtoint ptr %cap_q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cap_q, align 4
  %m2m_ctx13 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %ctx, i32 0, i32 9, i32 10
  %22 = ptrtoint ptr %m2m_ctx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_ctx13, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 7
  %call.i58 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #14
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7, %land.lhs.true.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %fmt.0 = phi ptr [ %13, %if.then7 ], [ %13, %land.lhs.true.if.end15_crit_edge ], [ %13, %if.then.if.end15_crit_edge ], [ %21, %if.else ]
  %vb.0 = phi ptr [ %call.i, %if.then7 ], [ %call.i, %land.lhs.true.if.end15_crit_edge ], [ %call.i, %if.then.if.end15_crit_edge ], [ %call.i58, %if.else ]
  %padding_bytes.0 = phi i32 [ %19, %if.then7 ], [ 0, %land.lhs.true.if.end15_crit_edge ], [ 0, %if.then.if.end15_crit_edge ], [ 0, %if.else ]
  %call.i59 = tail call ptr @vb2_plane_cookie(ptr noundef %vb.0, i32 noundef 0) #14
  %24 = ptrtoint ptr %call.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i59, align 4
  %26 = ptrtoint ptr %jpeg_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %jpeg_addr, align 4
  %colplanes = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %fmt.0, i32 0, i32 2
  %27 = ptrtoint ptr %colplanes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %colplanes, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %28, label %if.end15.if.end40_crit_edge [
    i32 2, label %if.then18
    i32 3, label %if.then24
  ]

if.end15.if.end40_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %add = add i32 %25, %mul
  %sub = sub i32 %add, %padding_bytes.0
  %30 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %cb, align 4
  br label %if.end40

if.then24:                                        ; preds = %if.end15
  %add26 = add i32 %25, %mul
  %31 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add26, ptr %cb, align 4
  %32 = ptrtoint ptr %fmt.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %33)
  %cmp28 = icmp eq i32 %33, 842093913
  br i1 %cmp28, label %if.then29, label %if.else33

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %div57 = lshr i32 %mul, 2
  %add31 = add i32 %add26, %div57
  %34 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add31, ptr %cr, align 4
  br label %if.end40

if.else33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %div3556 = lshr i32 %mul, 1
  %add36 = add i32 %add26, %div3556
  %35 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add36, ptr %cr, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else33, %if.then29, %if.then18, %if.end15.if.end40_crit_edge
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  call void @exynos4_jpeg_set_frame_buf_address(ptr noundef %37, ptr noundef nonnull %jpeg_addr) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %jpeg_addr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_encode_hoff_cnt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_dec_bitstream_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_sys_int_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_enc_dec_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__exynos4_jpeg_set_enc_out_fmt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__exynos4_jpeg_set_img_fmt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_frame_buf_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_stream_buf_address(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_select_dec_h_tbl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_dec_components(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_select_dec_q_tbl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos4_jpeg_get_int_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos4_jpeg_get_stream_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos4_jpeg_get_frame_fmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %num_clocks = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks, align 4
  %i.04 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.04)
  %cmp5 = icmp sgt i32 %i.04, -1
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.04, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s5p_jpeg, ptr %1, i32 0, i32 9, i32 %i.06
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %7) #14
  tail call void @clk_unprepare(ptr noundef %7) #14
  %i.0 = add nsw i32 %i.06, -1
  %cmp = icmp sgt i32 %i.06, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %variant = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %num_clocks63 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_clocks63 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp64 = icmp sgt i32 %5, 0
  br i1 %cmp64, label %entry.for.body_crit_edge, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s5p_jpeg, ptr %1, i32 0, i32 9, i32 %i.065
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %7) #14
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp267.not = icmp eq i32 %i.065, 0
  br i1 %cmp267.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.while.body_crit_edge

clk_prepare_enable.exit.while.body_crit_edge:     ; preds = %clk_prepare_enable.exit
  br label %while.body

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %clk_prepare_enable.exit.while.body_crit_edge
  %dec68.in = phi i32 [ %dec68, %while.body.while.body_crit_edge ], [ %i.065, %clk_prepare_enable.exit.while.body_crit_edge ]
  %dec68 = add nsw i32 %dec68.in, -1
  %arrayidx4 = getelementptr %struct.s5p_jpeg, ptr %1, i32 0, i32 9, i32 %dec68
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %9) #14
  tail call void @clk_unprepare(ptr noundef %9) #14
  %cmp2 = icmp sgt i32 %dec68.in, 1
  br i1 %cmp2, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.065, 1
  %10 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant, align 4
  %num_clocks = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clocks, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body5_crit_edge

for.inc.do.body5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body5:                                         ; preds = %for.inc.do.body5_crit_edge, %entry.do.body5_crit_edge
  %slock = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 1
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #14
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %htbl_reinit = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %htbl_reinit to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %htbl_reinit, align 4
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %if.then13, label %do.body5.if.end17_crit_edge

do.body5.if.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then13:                                        ; preds = %do.body5
  %regs = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 2048
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then13
  %i.06.i.i = phi i32 [ 0, %if.then13 ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i = getelementptr i8, ptr @hdctbl0, i32 %i.06.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %21 to i32
  %22 = shl nuw i32 %conv.i.i, 24
  %mul.i.i = shl i32 %i.06.i.i, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %22) #14, !srcloc !191
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %s5p_jpeg_set_hdctbl.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i

s5p_jpeg_set_hdctbl.exit:                         ; preds = %do.body.i.i
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  tail call fastcc void @s5p_jpeg_set_hdctblg(ptr noundef %24)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %26, i32 2176
  br label %do.body.i.i44

do.body.i.i44:                                    ; preds = %do.body.i.i44.do.body.i.i44_crit_edge, %s5p_jpeg_set_hdctbl.exit
  %i.06.i.i37 = phi i32 [ 0, %s5p_jpeg_set_hdctbl.exit ], [ %inc.i.i42, %do.body.i.i44.do.body.i.i44_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i38 = getelementptr i8, ptr @hactbl0, i32 %i.06.i.i37
  %27 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i38, align 1
  %conv.i.i39 = zext i8 %28 to i32
  %29 = shl nuw i32 %conv.i.i39, 24
  %mul.i.i40 = shl i32 %i.06.i.i37, 2
  %add.ptr1.i.i41 = getelementptr i8, ptr %add.ptr.i.i36, i32 %mul.i.i40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i41, i32 %29) #14, !srcloc !191
  %inc.i.i42 = add nuw nsw i32 %i.06.i.i37, 1
  %exitcond.not.i.i43 = icmp eq i32 %inc.i.i42, 16
  br i1 %exitcond.not.i.i43, label %s5p_jpeg_set_hactbl.exit, label %do.body.i.i44.do.body.i.i44_crit_edge

do.body.i.i44.do.body.i.i44_crit_edge:            ; preds = %do.body.i.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i44

s5p_jpeg_set_hactbl.exit:                         ; preds = %do.body.i.i44
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %31, i32 2240
  br label %do.body.i.i53

do.body.i.i53:                                    ; preds = %do.body.i.i53.do.body.i.i53_crit_edge, %s5p_jpeg_set_hactbl.exit
  %i.06.i.i46 = phi i32 [ 0, %s5p_jpeg_set_hactbl.exit ], [ %inc.i.i51, %do.body.i.i53.do.body.i.i53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !201
  tail call void @arm_heavy_mb() #14
  %arrayidx.i.i47 = getelementptr i8, ptr @hactblg0, i32 %i.06.i.i46
  %32 = ptrtoint ptr %arrayidx.i.i47 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i47, align 1
  %conv.i.i48 = zext i8 %33 to i32
  %34 = shl nuw i32 %conv.i.i48, 24
  %mul.i.i49 = shl i32 %i.06.i.i46, 2
  %add.ptr1.i.i50 = getelementptr i8, ptr %add.ptr.i.i45, i32 %mul.i.i49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i50, i32 %34) #14, !srcloc !191
  %inc.i.i51 = add nuw nsw i32 %i.06.i.i46, 1
  %exitcond.not.i.i52 = icmp eq i32 %inc.i.i51, 162
  br i1 %exitcond.not.i.i52, label %do.body.i.i53.if.end17_crit_edge, label %do.body.i.i53.do.body.i.i53_crit_edge

do.body.i.i53.do.body.i.i53_crit_edge:            ; preds = %do.body.i.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i53

do.body.i.i53.if.end17_crit_edge:                 ; preds = %do.body.i.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %do.body.i.i53.if.end17_crit_edge, %do.body5.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call8) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %while.body.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %retval.0.i, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !98, !99, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !133, !135, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !168, !170, !172, !174, !176, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__initcall__kmod_s5p_jpeg__317_3177_s5p_jpeg_driver_init6, !1, !"__initcall__kmod_s5p_jpeg__317_3177_s5p_jpeg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3177, i32 1}
!2 = !{ptr @__exitcall_s5p_jpeg_driver_exit, !1, !"__exitcall_s5p_jpeg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author318, !4, !"__UNIQUE_ID_author318", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3179, i32 1}
!5 = !{ptr @__UNIQUE_ID_author319, !6, !"__UNIQUE_ID_author319", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3180, i32 1}
!7 = !{ptr @__UNIQUE_ID_description320, !8, !"__UNIQUE_ID_description320", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3181, i32 1}
!9 = !{ptr @__UNIQUE_ID_file321, !10, !"__UNIQUE_ID_file321", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3182, i32 1}
!11 = !{ptr @__UNIQUE_ID_license322, !10, !"__UNIQUE_ID_license322", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3172, i32 12}
!14 = !{ptr @s5p_jpeg_driver, !15, !"s5p_jpeg_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3167, i32 31}
!16 = !{ptr @s5p_jpeg_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2864, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @s5p_jpeg_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2865, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2876, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @s5p_jpeg_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @s5p_jpeg_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2883, i32 3}
!32 = !{ptr @s5p_jpeg_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @s5p_jpeg_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2892, i32 4}
!36 = !{ptr @s5p_jpeg_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @s5p_jpeg_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2901, i32 3}
!40 = !{ptr @s5p_jpeg_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @s5p_jpeg_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2908, i32 3}
!44 = !{ptr @s5p_jpeg_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @s5p_jpeg_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2918, i32 3}
!48 = !{ptr @s5p_jpeg_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @s5p_jpeg_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2923, i32 5}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2935, i32 3}
!54 = !{ptr @s5p_jpeg_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s5p_jpeg_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2941, i32 2}
!58 = !{ptr @s5p_jpeg_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s5p_jpeg_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @s5p_jpeg_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2948, i32 3}
!62 = !{ptr @s5p_jpeg_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2953, i32 5}
!65 = !{ptr @s5p_jpeg_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2965, i32 3}
!67 = !{ptr @s5p_jpeg_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2971, i32 2}
!70 = !{ptr @s5p_jpeg_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @s5p_jpeg_probe._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2980, i32 2}
!74 = !{ptr @s5p_jpeg_probe._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5p_jpeg_probe._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3079, i32 16}
!78 = !{ptr @s5p_jpeg_drvdata, !79, !"s5p_jpeg_drvdata", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3074, i32 32}
!80 = !{ptr @s5p_jpeg_m2m_ops, !81, !"s5p_jpeg_m2m_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2428, i32 34}
!82 = !{ptr @qtbl_luminance, !83, !"qtbl_luminance", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 347, i32 28}
!84 = !{ptr @qtbl_chrominance, !85, !"qtbl_chrominance", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 390, i32 28}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @s5p_jpeg_fops, !90, !"s5p_jpeg_fops", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1025, i32 42}
!91 = !{ptr @sjpeg_formats, !92, !"sjpeg_formats", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 37, i32 28}
!93 = !{ptr @s5p_jpeg_qops, !94, !"s5p_jpeg_qops", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2591, i32 29}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2485, i32 3}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @s5p_jpeg_buf_prepare._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @s5p_jpeg_buf_prepare._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @s5p_jpeg_buf_queue.ev_src_ch, !101, !"ev_src_ch", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2527, i32 34}
!102 = !{ptr @s5p_jpeg_controls_create._key, !103, !"_key", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1954, i32 2}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @s5p_jpeg_ctrl_ops, !106, !"s5p_jpeg_ctrl_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1942, i32 35}
!107 = !{ptr @exynos3250_decoded_subsampling, !108, !"exynos3250_decoded_subsampling", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 568, i32 12}
!109 = !{ptr @exynos4x12_decoded_subsampling, !110, !"exynos4x12_decoded_subsampling", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 561, i32 12}
!111 = !{ptr @s5p_jpeg_ioctl_ops, !112, !"s5p_jpeg_ioctl_ops", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1993, i32 36}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1252, i32 22}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1257, i32 22}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1260, i32 49}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1601, i32 3}
!121 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @s5p_jpeg_s_fmt._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @s5p_jpeg_s_fmt._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1484, i32 3}
!126 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @s5p_jpeg_try_fmt_vid_cap._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @s5p_jpeg_try_fmt_vid_cap._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = distinct !{null, !130, !"fourcc_to_dwngrd_schema_id", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 497, i32 18}
!131 = !{ptr @subs420_fourcc_dwngrd_schema, !132, !"subs420_fourcc_dwngrd_schema", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 479, i32 18}
!133 = !{ptr @subs422_fourcc_dwngrd_schema, !134, !"subs422_fourcc_dwngrd_schema", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 474, i32 18}
!135 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 1541, i32 3}
!137 = !{ptr @s5p_jpeg_try_fmt_vid_out._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @s5p_jpeg_try_fmt_vid_out._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @samsung_jpeg_match, !140, !"samsung_jpeg_match", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3126, i32 34}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3089, i32 24}
!143 = !{ptr @exynos3250_jpeg_drvdata, !144, !"exynos3250_jpeg_drvdata", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3083, i32 32}
!145 = !{ptr @exynos3250_jpeg_m2m_ops, !146, !"exynos3250_jpeg_m2m_ops", i1 false, i1 false}
!146 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2433, i32 34}
!147 = !{ptr @hdctbl0, !148, !"hdctbl0", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 433, i32 28}
!149 = distinct !{null, !150, !"hdctblg0", i1 false, i1 false}
!150 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 437, i32 28}
!151 = !{ptr @hactbl0, !152, !"hactbl0", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 440, i32 28}
!153 = !{ptr @hactblg0, !154, !"hactblg0", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 443, i32 28}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2783, i32 3}
!157 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @exynos3250_jpeg_irq._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @exynos3250_jpeg_irq._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2794, i32 3}
!162 = !{ptr @exynos3250_jpeg_irq._entry.58, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @exynos3250_jpeg_irq._entry_ptr.60, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @exynos4_jpeg_drvdata, !165, !"exynos4_jpeg_drvdata", i1 false, i1 false}
!165 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3093, i32 32}
!166 = !{ptr @exynos4_jpeg_m2m_ops, !167, !"exynos4_jpeg_m2m_ops", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 2438, i32 34}
!168 = !{ptr @exynos5420_jpeg_drvdata, !169, !"exynos5420_jpeg_drvdata", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3104, i32 32}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3121, i32 16}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3121, i32 24}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3121, i32 32}
!176 = !{ptr @exynos5433_jpeg_drvdata, !177, !"exynos5433_jpeg_drvdata", i1 false, i1 false}
!177 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3115, i32 32}
!178 = !{ptr @s5p_jpeg_pm_ops, !179, !"s5p_jpeg_pm_ops", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/s5p-jpeg/jpeg-core.c", i32 3067, i32 32}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"branch_weights", i32 2000, i32 1}
!190 = !{i64 2156641851}
!191 = !{i64 4361100}
!192 = !{i8 0, i8 2}
!193 = !{!"branch_weights", i32 1, i32 2000}
!194 = !{i64 2156690867, i64 2156691376, i64 2156690904, i64 2156690960, i64 2156690994, i64 2156691018, i64 2156691059, i64 2156691080, i64 2156691108, i64 2156691142}
!195 = !{i64 2156692566, i64 2156693075, i64 2156692603, i64 2156692659, i64 2156692693, i64 2156692717, i64 2156692758, i64 2156692779, i64 2156692807, i64 2156692841}
!196 = !{i64 2148323128}
!197 = !{i64 807951, i64 807976, i64 807998, i64 808014, i64 808026, i64 808046, i64 808070, i64 808086, i64 808098}
!198 = !{i64 2148323316}
!199 = !{i64 2156656598, i64 2156657107, i64 2156656635, i64 2156656691, i64 2156656725, i64 2156656749, i64 2156656790, i64 2156656811, i64 2156656839, i64 2156656873}
!200 = !{i64 2156664463, i64 2156664972, i64 2156664500, i64 2156664556, i64 2156664590, i64 2156664614, i64 2156664655, i64 2156664676, i64 2156664704, i64 2156664738}
!201 = !{i64 2156643867}
!202 = !{i64 2156646638}
!203 = !{i64 2156651821}
!204 = !{i64 2156652316}
!205 = !{i64 2156652805}
!206 = !{i64 2156653300}
