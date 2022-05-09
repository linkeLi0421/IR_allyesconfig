; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-lite.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-lite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flite_drvdata = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fimc_lite = type { ptr, ptr, %struct.exynos_video_entity, ptr, %struct.v4l2_fh, %struct.v4l2_subdev, %struct.media_pad, [3 x %struct.media_pad], ptr, %struct.v4l2_ctrl_handler, ptr, i32, %struct.mutex, %struct.spinlock, ptr, ptr, %struct.wait_queue_head, [1 x i32], %struct.flite_frame, %struct.flite_frame, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.vb2_queue, i16, i32, i32, %struct.fimc_lite_events, i8 }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.flite_frame = type { i16, i16, %struct.v4l2_rect, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.fimc_lite_events = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.flite_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i16 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }

@__param_str_debug = internal constant [23 x i8] c"exynos_fimc_lite.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype311 = internal constant [36 x i8] c"exynos_fimc_lite.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_exynos_fimc_lite__333_1672_fimc_lite_driver_init6 = internal global ptr @fimc_lite_driver_init, section ".initcall6.init", align 4
@fimc_lite_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fimc_lite_probe, ptr @fimc_lite_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @flite_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fimc_lite_driver_exit = internal global ptr @fimc_lite_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file334 = internal constant [73 x i8] c"exynos_fimc_lite.file=drivers/media/platform/exynos4-is/exynos-fimc-lite\00", section ".modinfo", align 1
@__UNIQUE_ID_license335 = internal constant [29 x i8] c"exynos_fimc_lite.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias336 = internal constant [49 x i8] c"exynos_fimc_lite.alias=platform:exynos-fimc-lite\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos-fimc-lite\00", [47 x i8] zeroinitializer }, align 32
@flite_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-fimc-lite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_lite_drvdata_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-fimc-lite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_lite_drvdata_exynos5 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@fimc_lite_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fimc_lite_suspend, ptr @fimc_lite_resume, ptr @fimc_lite_suspend, ptr @fimc_lite_resume, ptr @fimc_lite_suspend, ptr @fimc_lite_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_runtime_suspend, ptr @fimc_lite_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fimc-lite\00", [22 x i8] zeroinitializer }, align 32
@fimc_lite_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wrong %pOF node alias\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fimc_lite_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/exynos4-is/fimc-lite.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fimc_lite_probe._entry_ptr = internal global ptr @fimc_lite_probe._entry, section ".printk_index", align 4
@fimc_lite_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fimc->irq_queue\00", [47 x i8] zeroinitializer }, align 32
@fimc_lite_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fimc->slock\00", [19 x i8] zeroinitializer }, align 32
@fimc_lite_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fimc->lock\00", [20 x i8] zeroinitializer }, align 32
@fimc_lite_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get IRQ resource\0A\00", [36 x i8] zeroinitializer }, align 32
@fimc_lite_probe._entry_ptr.14 = internal global ptr @fimc_lite_probe._entry.12, section ".printk_index", align 4
@fimc_lite_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to install irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@fimc_lite_probe._entry_ptr.17 = internal global ptr @fimc_lite_probe._entry.15, section ".printk_index", align 4
@fimc_lite_probe.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.3, ptr @.str.4, ptr @.str.19, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_fimc_lite\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FIMC-LITE.%d registered successfully\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flite\00", [26 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @fimc_lite_core_ops, ptr null, ptr null, ptr @fimc_lite_subdev_video_ops, ptr null, ptr null, ptr null, ptr @fimc_lite_subdev_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FIMC-LITE.%d\00", [19 x i8] zeroinitializer }, align 32
@fimc_lite_create_capture_subdev._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fimc_lite:1404:(handler)->_lock\00", [32 x i8] zeroinitializer }, align 32
@fimc_lite_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @fimc_lite_ctrl_ops, ptr null, i32 9965569, ptr @.str.35, i32 2, i64 0, i64 0, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_internal_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr @fimc_lite_subdev_registered, ptr @fimc_lite_subdev_unregistered, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr @fimc_lite_link_setup, ptr null }, [20 x i8] zeroinitializer }, align 32
@fimc_lite_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @fimc_lite_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_subdev_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr @fimc_lite_subdev_enum_mbus_code, ptr null, ptr null, ptr @fimc_lite_subdev_get_fmt, ptr @fimc_lite_subdev_set_fmt, ptr @fimc_lite_subdev_get_selection, ptr @fimc_lite_subdev_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__func__.fimc_lite_log_status = private unnamed_addr constant [21 x i8] c"fimc_lite_log_status\00", align 1
@fimc_lite_subdev_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: s_stream(0) timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fimc_lite_subdev_s_stream\00", [38 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_s_stream._entry_ptr = internal global ptr @fimc_lite_subdev_s_stream._entry, section ".printk_index", align 4
@__func__.fimc_lite_hw_init = private unnamed_addr constant [18 x i8] c"fimc_lite_hw_init\00", align 1
@fimc_lite_formats = internal constant { [7 x %struct.fimc_fmt], [56 x i8] } { [7 x %struct.fimc_fmt] [%struct.fimc_fmt { i32 8200, i32 1448695129, i32 33, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 8198, i32 1498831189, i32 35, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 8199, i32 1498765654, i32 36, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 8201, i32 1431918169, i32 34, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 12290, i32 1195528775, i32 64, i16 1, i16 0, i8 8, [3 x i8] c"\08\00\00", i16 0, i16 64 }, %struct.fimc_fmt { i32 12298, i32 808534338, i32 65, i16 1, i16 0, i8 8, [3 x i8] c"\10\00\00", i16 0, i16 64 }, %struct.fimc_fmt { i32 12305, i32 842088770, i32 66, i16 1, i16 0, i8 8, [3 x i8] c"\10\00\00", i16 0, i16 64 }], [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: pad%d: code: 0x%x, %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fimc_lite_subdev_set_fmt\00", [39 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_set_fmt._entry_ptr = internal global ptr @fimc_lite_subdev_set_fmt._entry, section ".printk_index", align 4
@fimc_lite_subdev_try_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: code: %#x (%d), %dx%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fimc_lite_subdev_try_fmt\00", [39 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_try_fmt._entry_ptr = internal global ptr @fimc_lite_subdev_try_fmt._entry, section ".printk_index", align 4
@fimc_lite_subdev_get_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s: (%d,%d) %dx%d, f_w: %d, f_h: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fimc_lite_subdev_get_selection\00", [33 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_get_selection._entry_ptr = internal global ptr @fimc_lite_subdev_get_selection._entry, section ".printk_index", align 4
@fimc_lite_subdev_set_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.4, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fimc_lite_subdev_set_selection\00", [33 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_set_selection._entry_ptr = internal global ptr @fimc_lite_subdev_set_selection._entry, section ".printk_index", align 4
@fimc_lite_try_crop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: (%d,%d)/%dx%d, sink fmt: %dx%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fimc_lite_try_crop\00", [45 x i8] zeroinitializer }, align 32
@fimc_lite_try_crop._entry_ptr = internal global ptr @fimc_lite_try_crop._entry, section ".printk_index", align 4
@fimc_lite_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fimc_lite_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Test Pattern 640x480\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc-lite.%d.capture\00", [43 x i8] zeroinitializer }, align 32
@fimc_lite_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @fimc_lite_open, ptr @fimc_lite_release }, [60 x i8] zeroinitializer }, align 32
@fimc_lite_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @fimc_lite_querycap, ptr @fimc_lite_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @fimc_lite_streamon, ptr @fimc_lite_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_g_selection, ptr @fimc_lite_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@fimc_lite_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@fimc_lite_subdev_registered._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fimc_lite_subdev_registered\00", [36 x i8] zeroinitializer }, align 32
@fimc_lite_subdev_registered._entry_ptr = internal global ptr @fimc_lite_subdev_registered._entry, section ".printk_index", align 4
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@fimc_lite_try_compose._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: (%d,%d)/%dx%d, source fmt: %dx%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fimc_lite_try_compose\00", [42 x i8] zeroinitializer }, align 32
@fimc_lite_try_compose._entry_ptr = internal global ptr @fimc_lite_try_compose._entry, section ".printk_index", align 4
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: User buffer too small (%ld < %ld)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@__func__.start_streaming = private unnamed_addr constant [16 x i8] c"start_streaming\00", align 1
@fimc_lite_link_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: %s: %s --> %s, flags: 0x%x. source_id: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fimc_lite_link_setup\00", [43 x i8] zeroinitializer }, align 32
@fimc_lite_link_setup._entry_ptr = internal global ptr @fimc_lite_link_setup._entry, section ".printk_index", align 4
@fimc_lite_link_setup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Invalid pad index\0A\00", [39 x i8] zeroinitializer }, align 32
@fimc_lite_link_setup._entry_ptr.49 = internal global ptr @fimc_lite_link_setup._entry.47, section ".printk_index", align 4
@fimc_lite_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 1618, ptr @.str.52, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Driver unloaded\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fimc_lite_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fimc_lite_remove._entry_ptr = internal global ptr @fimc_lite_remove._entry, section ".printk_index", align 4
@fimc_lite_drvdata_exynos4 = internal global { %struct.flite_drvdata, [18 x i8] } { %struct.flite_drvdata { i16 8192, i16 8192, i16 8, i16 2, i16 8, i16 1, i16 2 }, [18 x i8] zeroinitializer }, align 32
@fimc_lite_drvdata_exynos5 = internal global { %struct.flite_drvdata, [18 x i8] } { %struct.flite_drvdata { i16 8192, i16 8192, i16 8, i16 2, i16 8, i16 32, i16 3 }, [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 8198, i64 8199, i64 8201, i64 12290, i64 12298, i64 12305]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 38, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"fimc_lite_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1663, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1668, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"flite_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1650, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"fimc_lite_pm_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1622, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1468, i32 46 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1472, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1479, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1480, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1481, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1490, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1501, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1523, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1443, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant [21 x i8] c"fimc_lite_subdev_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1343, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1394, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1404, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"fimc_lite_ctrl\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1361, i32 38 }
@___asan_gen_.146 = private unnamed_addr constant [30 x i8] c"fimc_lite_subdev_internal_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1322, i32 46 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"fimc_lite_subdev_media_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1002, i32 45 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"fimc_lite_core_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1339, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"fimc_lite_subdev_video_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1335, i32 43 }
@___asan_gen_.158 = private unnamed_addr constant [25 x i8] c"fimc_lite_subdev_pad_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1327, i32 41 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1228, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"fimc_lite_formats\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 41, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 998, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1070, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 600, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1149, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1183, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 618, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"fimc_lite_ctrl_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1357, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1365, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1254, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant [15 x i8] c"fimc_lite_fops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 539, i32 42 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c"fimc_lite_ioctl_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 932, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant [15 x i8] c"fimc_lite_qops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 440, i32 29 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1299, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 653, i32 49 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 638, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 392, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1163, i32 7 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 962, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 994, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1618, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [26 x i8] c"fimc_lite_drvdata_exynos4\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1629, i32 29 }
@___asan_gen_.299 = private unnamed_addr constant [26 x i8] c"fimc_lite_drvdata_exynos5\00", align 1
@___asan_gen_.300 = private constant [49 x i8] c"../drivers/media/platform/exynos4-is/fimc-lite.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 1640, i32 29 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_alias336, ptr @__UNIQUE_ID_debugtype311, ptr @__UNIQUE_ID_file334, ptr @__UNIQUE_ID_license335, ptr @__exitcall_fimc_lite_driver_exit, ptr @__initcall__kmod_exynos_fimc_lite__333_1672_fimc_lite_driver_init6, ptr @__param_debug, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry_ptr, ptr @fimc_lite_driver_exit, ptr @fimc_lite_link_setup._entry, ptr @fimc_lite_link_setup._entry.47, ptr @fimc_lite_link_setup._entry_ptr, ptr @fimc_lite_link_setup._entry_ptr.49, ptr @fimc_lite_probe._entry, ptr @fimc_lite_probe._entry.12, ptr @fimc_lite_probe._entry.15, ptr @fimc_lite_probe._entry_ptr, ptr @fimc_lite_probe._entry_ptr.14, ptr @fimc_lite_probe._entry_ptr.17, ptr @fimc_lite_remove._entry, ptr @fimc_lite_remove._entry_ptr, ptr @fimc_lite_subdev_get_selection._entry, ptr @fimc_lite_subdev_get_selection._entry_ptr, ptr @fimc_lite_subdev_registered._entry, ptr @fimc_lite_subdev_registered._entry_ptr, ptr @fimc_lite_subdev_s_stream._entry, ptr @fimc_lite_subdev_s_stream._entry_ptr, ptr @fimc_lite_subdev_set_fmt._entry, ptr @fimc_lite_subdev_set_fmt._entry_ptr, ptr @fimc_lite_subdev_set_selection._entry, ptr @fimc_lite_subdev_set_selection._entry_ptr, ptr @fimc_lite_subdev_try_fmt._entry, ptr @fimc_lite_subdev_try_fmt._entry_ptr, ptr @fimc_lite_try_compose._entry, ptr @fimc_lite_try_compose._entry_ptr, ptr @fimc_lite_try_crop._entry, ptr @fimc_lite_try_crop._entry_ptr, ptr @debug, ptr @fimc_lite_driver, ptr @.str, ptr @flite_of_match, ptr @fimc_lite_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fimc_lite_probe.__key, ptr @.str.7, ptr @fimc_lite_probe.__key.8, ptr @.str.9, ptr @fimc_lite_probe.__key.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @fimc_lite_subdev_ops, ptr @.str.21, ptr @fimc_lite_create_capture_subdev._key, ptr @.str.22, ptr @fimc_lite_ctrl, ptr @fimc_lite_subdev_internal_ops, ptr @fimc_lite_subdev_media_ops, ptr @fimc_lite_core_ops, ptr @fimc_lite_subdev_video_ops, ptr @fimc_lite_subdev_pad_ops, ptr @.str.23, ptr @.str.24, ptr @fimc_lite_formats, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @fimc_lite_ctrl_ops, ptr @.str.35, ptr @.str.36, ptr @fimc_lite_fops, ptr @fimc_lite_ioctl_ops, ptr @fimc_lite_qops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @fimc_lite_drvdata_exynos4, ptr @fimc_lite_drvdata_exynos5], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flite_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_create_capture_subdev._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_internal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_formats to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_try_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_get_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_set_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_try_crop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_subdev_registered._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_try_compose._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_link_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_link_setup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_drvdata_exynos4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_lite_drvdata_exynos5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_lite_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fimc_lite_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_lite_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2896, i32 noundef 3520) #13
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call6 = tail call ptr @of_match_node(ptr noundef nonnull @flite_of_match, ptr noundef %3) #13
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr inbounds %struct.of_device_id, ptr %call6, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %drv_data.0 = phi ptr [ %5, %if.then8 ], [ null, %if.end4.if.end9_crit_edge ]
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call11 = tail call i32 @of_alias_get_id(ptr noundef %7, ptr noundef nonnull @.str.1) #13
  %index = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 11
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call11, ptr %index, align 8
  %tobool12.not = icmp eq ptr %drv_data.0, null
  br i1 %tobool12.not, label %if.end9.do.end_crit_edge, label %lor.lhs.false

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end9
  %num_instances = getelementptr inbounds %struct.flite_drvdata, ptr %drv_data.0, i32 0, i32 6
  %9 = ptrtoint ptr %num_instances to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_instances, align 2
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %conv)
  %.not = icmp ult i32 %call11, %conv
  br i1 %.not, label %if.end21, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end9.do.end_crit_edge
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %12) #16
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %dd = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %dd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %drv_data.0, ptr %dd, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %call.i, align 8
  %irq_queue = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %irq_queue, ptr noundef nonnull @.str.7, ptr noundef nonnull @fimc_lite_probe.__key) #13
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.9, ptr noundef nonnull @fimc_lite_probe.__key.8, i16 noundef signext 3) #13
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @fimc_lite_probe.__key.10) #13
  %call33 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call33) #13
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 15
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end21
  %call41 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #13
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #16
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %call.i138 = tail call ptr @clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #13
  %clock.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 14
  %19 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i138, ptr %clock.i, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call.i138, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call.i138 to i32
  br i1 %cmp.i.i.i.not, label %if.end48.cleanup_crit_edge, label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %21 = ptrtoint ptr %call41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call41, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end52.dev_name.exit_crit_edge

if.end52.dev_name.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end52.dev_name.exit_crit_edge
  %retval.0.i139 = phi ptr [ %26, %if.end.i ], [ %24, %if.end52.dev_name.exit_crit_edge ]
  %call.i140 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @flite_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i139, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool55.not = icmp eq i32 %call.i140, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call.i140) #16
  br label %err_clk_put

if.end60:                                         ; preds = %dev_name.exit
  %ctrl_handler.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 9
  %subdev.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5
  tail call void @v4l2_subdev_init(ptr noundef %subdev.i, ptr noundef nonnull @fimc_lite_subdev_ops) #13
  %flags.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %28, 4
  store i32 %or.i, ptr %flags.i, align 4
  %name.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 9
  %29 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index, align 8
  %call.i141 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.21, i32 noundef %30) #13
  %subdev_pads.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 7
  %flags1.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 7, i32 0, i32 4
  %31 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %flags1.i, align 4
  %flags4.i = getelementptr %struct.fimc_lite, ptr %call.i, i32 0, i32 7, i32 1, i32 4
  %32 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %flags4.i, align 4
  %flags7.i = getelementptr %struct.fimc_lite, ptr %call.i, i32 0, i32 7, i32 2, i32 4
  %33 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %flags7.i, align 4
  %call10.i = tail call i32 @media_entity_pads_init(ptr noundef %subdev.i, i16 noundef zeroext 3, ptr noundef %subdev_pads.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i142 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i142, label %if.end.i143, label %if.end60.err_clk_put_crit_edge

if.end60.err_clk_put_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_clk_put

if.end.i143:                                      ; preds = %if.end60
  %call11.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 1, ptr noundef nonnull @fimc_lite_create_capture_subdev._key, ptr noundef nonnull @.str.22) #13
  %call12.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef nonnull @fimc_lite_ctrl, ptr noundef null) #13
  %test_pattern.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %test_pattern.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call12.i, ptr %test_pattern.i, align 4
  %error.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 9, i32 9
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool13.not.i = icmp eq i32 %36, 0
  br i1 %tobool13.not.i, label %if.end64, label %if.end.i143.err_clk_put_crit_edge

if.end.i143.err_clk_put_crit_edge:                ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_clk_put

if.end64:                                         ; preds = %if.end.i143
  %ctrl_handler18.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 8
  %37 = ptrtoint ptr %ctrl_handler18.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ctrl_handler.i, ptr %ctrl_handler18.i, align 4
  %internal_ops.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 7
  %38 = ptrtoint ptr %internal_ops.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @fimc_lite_subdev_internal_ops, ptr %internal_ops.i, align 4
  %function.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 0, i32 3
  %39 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16389, ptr %function.i, align 4
  %ops.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 0, i32 11
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @fimc_lite_subdev_media_ops, ptr %ops.i, align 4
  %owner.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %owner.i, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 5, i32 11
  %42 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %dev_priv.i.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #13
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %44 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i145 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i145, label %if.end64.if.end72_crit_edge, label %if.then66

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then66:                                        ; preds = %if.end64
  %45 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clock.i, align 4
  %call67 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %err_sd, label %if.then66.if.end72_crit_edge

if.then66.if.end72_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.end72:                                         ; preds = %if.then66.if.end72_crit_edge, %if.end64.if.end72_crit_edge
  %call73 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev1, i32 noundef -1) #13
  %inp_frame.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 18
  %out_frame.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 19
  %fmt.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 18, i32 3
  %47 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @fimc_lite_formats, ptr %fmt.i, align 4
  %48 = ptrtoint ptr %inp_frame.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 640, ptr %inp_frame.i, align 4
  %f_height.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 18, i32 1
  %49 = ptrtoint ptr %f_height.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 480, ptr %f_height.i, align 2
  %rect.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 18, i32 2
  %width.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 18, i32 2, i32 2
  %50 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 640, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 18, i32 2, i32 3
  %51 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 480, ptr %height.i, align 4
  %52 = ptrtoint ptr %rect.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %rect.i, align 4
  %top.i = getelementptr inbounds %struct.fimc_lite, ptr %call.i, i32 0, i32 18, i32 2, i32 1
  %53 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %top.i, align 4
  %54 = call ptr @memcpy(ptr %out_frame.i, ptr %inp_frame.i, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fimc_lite_probe.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fimc_lite_probe, %if.then79)) #13
          to label %cleanup [label %if.then79], !srcloc !173

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fimc_lite_probe.__UNIQUE_ID_ddebug332, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %56) #13
  br label %cleanup

err_sd:                                           ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev.i) #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #13
  %57 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %dev_priv.i.i, align 4
  br label %err_clk_put

err_clk_put:                                      ; preds = %err_sd, %if.end.i143.err_clk_put_crit_edge, %if.end60.err_clk_put_crit_edge, %do.end59
  %ret.0 = phi i32 [ %call.i140, %do.end59 ], [ %call67, %err_sd ], [ %36, %if.end.i143.err_clk_put_crit_edge ], [ %call10.i, %if.end60.err_clk_put_crit_edge ]
  %58 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clock.i, align 4
  %cmp.i.i = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %err_clk_put.cleanup_crit_edge, label %if.end.i150

err_clk_put.cleanup_crit_edge:                    ; preds = %err_clk_put
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i150:                                      ; preds = %err_clk_put
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_put(ptr noundef %59) #13
  %60 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -22 to ptr), ptr %clock.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i150, %err_clk_put.cleanup_crit_edge, %if.then79, %if.end72, %if.end48.cleanup_crit_edge, %do.end47, %if.then37, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %16, %if.then37 ], [ -6, %do.end47 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %20, %if.end48.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end72 ], [ %ret.0, %err_clk_put.cleanup_crit_edge ], [ %ret.0, %if.end.i150 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %clock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %4) #13
  tail call void @clk_unprepare(ptr noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #13
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #13
  %subdev.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %subdev.i) #13
  %ctrl_handler.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #13
  %dev_priv.i.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 5, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dev_priv.i.i, align 4
  %clock.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock.i, align 4
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.fimc_lite_clk_put.exit_crit_edge, label %if.end.i

if.end.fimc_lite_clk_put.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_clk_put.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_put(ptr noundef %7) #13
  %8 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -22 to ptr), ptr %clock.i, align 4
  br label %fimc_lite_clk_put.exit

fimc_lite_clk_put.exit:                           ; preds = %if.end.i, %if.end.fimc_lite_clk_put.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.50) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flite_irq_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %call5 = tail call i32 @flite_hw_get_interrupt_source(ptr noundef %priv) #13
  tail call void @flite_hw_clear_pending_irq(ptr noundef %priv) #13
  %state = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 22
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %irq_queue = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %irq_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %done

if.end:                                           ; preds = %entry
  %and = and i32 %call5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #13
  %events = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %events, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %events, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %and11 = and i32 %call5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flite_hw_clear_last_capture_end(ptr noundef %priv) #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #13
  %irq_queue15 = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %irq_queue15, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %2 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp18.not = icmp eq i32 %3, 2
  br i1 %cmp18.not, label %if.end21, label %if.end16.done_crit_edge

if.end16.done_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end21:                                         ; preds = %if.end16
  %and22 = and i32 %call5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %land.lhs.true

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end21
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool26.not = icmp eq i32 %6, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true27

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %pending_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 23
  %7 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %8, %pending_buf_q
  br i1 %cmp.i.not, label %land.lhs.true27.if.end32_crit_edge, label %if.then30

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true27
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then30.fimc_lite_pending_queue_pop.exit_crit_edge

if.then30.fimc_lite_pending_queue_pop.exit_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_pending_queue_pop.exit

if.end.i.i.i:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %fimc_lite_pending_queue_pop.exit

fimc_lite_pending_queue_pop.exit:                 ; preds = %if.end.i.i.i, %if.then30.fimc_lite_pending_queue_pop.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %8, i32 -736
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @flite_hw_set_dma_buffer(ptr noundef %priv, ptr noundef %add.ptr.i) #13
  %active_buf_q.i = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 24
  %prev.i.i103 = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 24, i32 1
  %17 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i103, align 4
  %call.i.i.i104 = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %18, ptr noundef %active_buf_q.i) #13
  br i1 %call.i.i.i104, label %if.end.i.i.i105, label %fimc_lite_pending_queue_pop.exit.if.end32_crit_edge

fimc_lite_pending_queue_pop.exit.if.end32_crit_edge: ; preds = %fimc_lite_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end.i.i.i105:                                  ; preds = %fimc_lite_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %8, ptr %prev.i.i103, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %active_buf_q.i, ptr %8, align 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %8, ptr %18, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end.i.i.i105, %fimc_lite_pending_queue_pop.exit.if.end32_crit_edge, %land.lhs.true27.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %and33 = and i32 %call5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end50_crit_edge, label %land.lhs.true35

if.end32.if.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

land.lhs.true35:                                  ; preds = %if.end32
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  br i1 %tobool38.not, label %land.lhs.true35.if.end50_crit_edge, label %land.lhs.true39

land.lhs.true35.if.end50_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

land.lhs.true39:                                  ; preds = %land.lhs.true35
  %active_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 24
  %26 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i106.not = icmp eq ptr %27, %active_buf_q
  br i1 %cmp.i106.not, label %land.lhs.true39.if.end50_crit_edge, label %if.then42

land.lhs.true39.if.end50_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then42:                                        ; preds = %land.lhs.true39
  %call.i.i.i109 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #13
  br i1 %call.i.i.i109, label %if.end.i.i.i112, label %if.then42.fimc_lite_active_queue_pop.exit_crit_edge

if.then42.fimc_lite_active_queue_pop.exit_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_active_queue_pop.exit

if.end.i.i.i112:                                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i110, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i.i111 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i111, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %fimc_lite_active_queue_pop.exit

fimc_lite_active_queue_pop.exit:                  ; preds = %if.end.i.i.i112, %if.then42.fimc_lite_active_queue_pop.exit_crit_edge
  %add.ptr.i113 = getelementptr i8, ptr %27, i32 -736
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i.i114 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i114 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i114, align 4
  %call.i = tail call i64 @ktime_get() #13
  %timestamp = getelementptr i8, ptr %27, i32 -712
  %36 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call.i, ptr %timestamp, align 8
  %frame_count = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 27
  %37 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frame_count, align 4
  %inc45 = add i32 %38, 1
  store i32 %inc45, ptr %frame_count, align 4
  %sequence = getelementptr i8, ptr %27, i32 -272
  %39 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %sequence, align 8
  %index = getelementptr i8, ptr %27, i32 12
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %index, align 4
  %conv47 = zext i16 %41 to i32
  tail call void @flite_hw_mask_dma_buffer(ptr noundef %priv, i32 noundef %conv47) #13
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i113, i32 noundef 5) #13
  br label %if.end50

if.end50:                                         ; preds = %fimc_lite_active_queue_pop.exit, %land.lhs.true39.if.end50_crit_edge, %land.lhs.true35.if.end50_crit_edge, %if.end32.if.end50_crit_edge
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state, align 4
  %44 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool53.not = icmp eq i32 %44, 0
  br i1 %tobool53.not, label %if.end50.if.end55_crit_edge, label %if.then54

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %inp_frame.i = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 18
  tail call void @flite_hw_set_window_offset(ptr noundef %priv, ptr noundef %inp_frame.i) #13
  %out_frame.i = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 19
  tail call void @flite_hw_set_dma_window(ptr noundef %priv, ptr noundef %out_frame.i) #13
  %test_pattern.i = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 10
  %45 = ptrtoint ptr %test_pattern.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %test_pattern.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 22
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i = icmp ne i32 %48, 0
  tail call void @flite_hw_set_test_pattern(ptr noundef %priv, i1 noundef zeroext %tobool.i) #13
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %state) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end50.if.end55_crit_edge
  %pending_buf_q56 = getelementptr inbounds %struct.fimc_lite, ptr %priv, i32 0, i32 23
  %49 = ptrtoint ptr %pending_buf_q56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %pending_buf_q56, align 4
  %cmp.i115.not = icmp eq ptr %50, %pending_buf_q56
  br i1 %cmp.i115.not, label %if.then59, label %if.end55.done_crit_edge

if.end55.done_crit_edge:                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flite_hw_capture_stop(ptr noundef %priv) #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %state) #13
  br label %done

done:                                             ; preds = %if.then59, %if.end55.done_crit_edge, %if.end16.done_crit_edge, %if.then
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %clk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flite_hw_get_interrupt_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_clear_pending_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_clear_last_capture_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_dma_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_mask_dma_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_capture_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_window_offset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_dma_window(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_test_pattern(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_log_status(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  tail call void @flite_hw_dump_regs(ptr noundef %1, ptr noundef nonnull @__func__.fimc_lite_log_status) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_dump_regs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_s_stream(ptr noundef %sd, i32 noundef %on) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %call1 = tail call ptr @fimc_find_remote_sensor(ptr noundef %sd) #13
  %sensor = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %sensor, align 8
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %3 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.not = icmp eq i32 %4, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup95_crit_edge

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup95

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @flite_hw_reset(ptr noundef %1) #13
  %call4 = tail call fastcc i32 @fimc_lite_hw_init(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body7, label %if.then3.if.end93_crit_edge

if.then3.if.end93_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

do.body7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  tail call void @flite_hw_capture_start(ptr noundef %1) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call10) #13
  br label %if.end93

if.else:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #13
  %slock22 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock22) #13
  tail call void @flite_hw_capture_stop(ptr noundef %1) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock22, i32 noundef %call24) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1226) #13
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool39.not = icmp eq i32 %7, 0
  br i1 %tobool39.not, label %if.else.if.end91_crit_edge, label %if.then51

if.else.if.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then51:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %irq_queue = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 16
  %call54137 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool58.not138 = icmp eq i32 %11, 0
  br i1 %tobool58.not138, label %if.end81.thread, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  br label %cleanup

if.end81.thread:                                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end91

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  %__ret52.1139 = phi i32 [ %__ret52.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then51.cleanup_crit_edge ]
  %call78 = call i32 @schedule_timeout(i32 noundef %__ret52.1139) #13
  %call54 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool58.not = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool64.not = icmp eq i32 %call78, 0
  %15 = select i1 %tobool58.not, i1 %tobool64.not, i1 false
  %__ret52.1 = select i1 %15, i32 1, i32 %call78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret52.1)
  %tobool71.not = icmp eq i32 %__ret52.1, 0
  %16 = select i1 %tobool58.not, i1 true, i1 %tobool71.not
  br i1 %16, label %if.end81, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end81:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret52.1)
  %cmp83 = icmp eq i32 %__ret52.1, 0
  br i1 %cmp83, label %do.end88, label %if.end81.if.end91_crit_edge

if.end81.if.end91_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name) #16
  br label %if.end91

if.end91:                                         ; preds = %do.end88, %if.end81.if.end91_crit_edge, %if.end81.thread, %if.else.if.end91_crit_edge
  %__ret.1136 = phi i32 [ 0, %do.end88 ], [ %__ret52.1, %if.end81.if.end91_crit_edge ], [ 20, %if.else.if.end91_crit_edge ], [ 20, %if.end81.thread ]
  call void @_clear_bit(i32 noundef 2, ptr noundef %state) #13
  br label %if.end93

if.end93:                                         ; preds = %if.end91, %do.body7, %if.then3.if.end93_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then3.if.end93_crit_edge ], [ 0, %do.body7 ], [ %__ret.1136, %if.end91 ]
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup95

cleanup95:                                        ; preds = %if.end93, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end93 ], [ -515, %entry.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_remote_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_hw_init(ptr noundef %fimc, i1 noundef zeroext %isp_output) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 8
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %inp_frame = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 18
  %fmt = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %out_frame = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 19
  %fmt2 = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 19, i32 3
  %4 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt2, align 4
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_priv.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %do.body9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body9:                                         ; preds = %if.end5
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 13
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  tail call void @flite_hw_set_camera_bus(ptr noundef %fimc, ptr noundef nonnull %7) #13
  tail call void @flite_hw_set_source_format(ptr noundef %fimc, ptr noundef %inp_frame) #13
  tail call void @flite_hw_set_window_offset(ptr noundef %fimc, ptr noundef %inp_frame) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !174
  tail call void @arm_heavy_mb() #13
  %regs.i = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 15
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !175
  %lnot = xor i1 %isp_output, true
  tail call void @flite_hw_set_output_dma(ptr noundef %fimc, ptr noundef %out_frame, i1 noundef zeroext %lnot) #13
  tail call void @flite_hw_set_interrupt_mask(ptr noundef %fimc) #13
  %test_pattern = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 10
  %10 = ptrtoint ptr %test_pattern to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %test_pattern, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19 = icmp ne i32 %13, 0
  tail call void @flite_hw_set_test_pattern(ptr noundef %fimc, i1 noundef zeroext %tobool19) #13
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp20 = icmp sgt i32 %14, 0
  br i1 %cmp20, label %if.then22, label %do.body9.if.end23_crit_edge

do.body9.if.end23_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then22:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flite_hw_dump_regs(ptr noundef %fimc, ptr noundef nonnull @__func__.fimc_lite_hw_init) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.body9.if.end23_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -6, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_capture_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_camera_bus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_source_format(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_output_dma(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_interrupt_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fimc_lite_subdev_enum_mbus_code(ptr nocapture noundef readnone %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i = icmp sgt i32 %1, 6
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp18.6.i = icmp eq i32 %1, 6
  br i1 %cmp18.6.i, label %for.cond.preheader.i.if.end_crit_edge, label %fimc_lite_find_format.exit

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

fimc_lite_find_format.exit:                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp18.5.i = icmp eq i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp18.4.i = icmp eq i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp18.3.i = icmp eq i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp18.2.i = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp18.1.i = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %cmp18.i, ptr @fimc_lite_formats, ptr null
  %spec.select.1.i = select i1 %cmp18.1.i, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), ptr %spec.select.i
  %spec.select.2.i = select i1 %cmp18.2.i, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), ptr %spec.select.1.i
  %spec.select.3.i = select i1 %cmp18.3.i, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), ptr %spec.select.2.i
  %spec.select.4.i = select i1 %cmp18.4.i, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), ptr %spec.select.3.i
  %spec.select.5.i = select i1 %cmp18.5.i, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), ptr %spec.select.4.i
  %tobool.not = icmp eq ptr %spec.select.5.i, null
  br i1 %tobool.not, label %fimc_lite_find_format.exit.cleanup_crit_edge, label %fimc_lite_find_format.exit.if.end_crit_edge

fimc_lite_find_format.exit.if.end_crit_edge:      ; preds = %fimc_lite_find_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

fimc_lite_find_format.exit.cleanup_crit_edge:     ; preds = %fimc_lite_find_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %fimc_lite_find_format.exit.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %retval.0.i9 = phi ptr [ %spec.select.5.i, %fimc_lite_find_format.exit.if.end_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %for.cond.preheader.i.if.end_crit_edge ]
  %2 = ptrtoint ptr %retval.0.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %retval.0.i9, align 4
  %code1 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %4 = ptrtoint ptr %code1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %code1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fimc_lite_find_format.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %fimc_lite_find_format.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_get_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %inp_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp ne i32 %5, 0
  %spec.store.select.i = zext i1 %cmp.not.i to i32
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %8 = zext i1 %cmp.not.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp.not.i.i = icmp ugt i16 %7, %8
  br i1 %cmp.not.i.i, label %if.then.__fimc_lite_subdev_get_try_fmt.exit_crit_edge, label %do.end.i.i, !prof !176

if.then.__fimc_lite_subdev_get_try_fmt.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %__fimc_lite_subdev_get_try_fmt.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #13
  br label %__fimc_lite_subdev_get_try_fmt.exit

__fimc_lite_subdev_get_try_fmt.exit:              ; preds = %do.end.i.i, %if.then.__fimc_lite_subdev_get_try_fmt.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %spec.store.select.i, %if.then.__fimc_lite_subdev_get_try_fmt.exit_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 %spec.select.i.i
  %11 = call ptr @memcpy(ptr %format, ptr %arrayidx.i.i, i32 48)
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %fmt3 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 3
  %12 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt3, align 4
  %colorspace = getelementptr inbounds %struct.fimc_fmt, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %colorspace to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %colorspace, align 4
  %conv = zext i8 %15 to i32
  %colorspace4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %colorspace4, align 4
  %17 = load ptr, ptr %fmt3, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %code, align 4
  %pad6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %21 = ptrtoint ptr %pad6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pad6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7 = icmp eq i32 %22, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %inp_frame to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %inp_frame, align 4
  %conv10 = zext i16 %24 to i32
  %25 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv10, ptr %format, align 4
  %f_height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %f_height, align 2
  %conv11 = zext i16 %27 to i32
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %width12 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 2
  %28 = ptrtoint ptr %width12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width12, align 4
  %30 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %format, align 4
  %height15 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 3
  %31 = ptrtoint ptr %height15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then9
  %.sink = phi i32 [ %conv11, %if.then9 ], [ %32, %if.else ]
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %__fimc_lite_subdev_get_try_fmt.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %inp_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18
  %out_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %3 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %code, align 4
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %11 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp6 = icmp eq i32 %12, 5
  br i1 %cmp6, label %land.lhs.true, label %do.end4.lor.lhs.false_crit_edge

do.end4.lor.lhs.false_crit_edge:                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end4
  %stream_count = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 12
  %13 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7 = icmp sgt i32 %14, 0
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %do.end4.lor.lhs.false_crit_edge
  %call.i.i99 = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %15 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp10 = icmp eq i32 %16, 2
  br i1 %cmp10, label %land.lhs.true11, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %num_buffers.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 21
  %17 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.not = icmp eq i32 %18, 0
  br i1 %cmp.i.not, label %land.lhs.true11.if.end15_crit_edge, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %pad.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %19 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i100 = icmp eq i32 %20, 0
  br i1 %cmp.i100, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end15
  %dd1.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dd1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dd1.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 2
  %conv.i = zext i16 %24 to i32
  %out_width_align.i = getelementptr inbounds %struct.flite_drvdata, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %out_width_align.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %out_width_align.i, align 2
  %27 = tail call i16 @llvm.cttz.i16(i16 %26, i1 true) #13, !range !177
  %28 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %iszero.i = icmp eq i16 %26, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %28
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %max_height.i = getelementptr inbounds %struct.flite_drvdata, ptr %22, i32 0, i32 1
  %29 = ptrtoint ptr %max_height.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_height.i, align 2
  %conv4.i = zext i16 %30 to i32
  tail call void @v4l_bound_align_image(ptr noundef %format, i32 noundef 8, i32 noundef %conv.i, i32 noundef %sub.i, ptr noundef %height.i, i32 noundef 0, i32 noundef %conv4.i, i32 noundef 0, i32 noundef 0) #13
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %if.then.i.if.end28.i_crit_edge [
    i32 12305, label %if.end28.i.fold.split115
    i32 8198, label %if.end28.i.fold.split
    i32 8199, label %if.end28.i.fold.split111
    i32 8201, label %if.end28.i.fold.split112
    i32 12290, label %if.end28.i.fold.split113
    i32 12298, label %if.end28.i.fold.split114
  ]

if.then.i.if.end28.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i.fold.split:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i.fold.split111:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i.fold.split112:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i.fold.split113:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i.fold.split114:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i.fold.split115:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.i.fold.split115, %if.end28.i.fold.split114, %if.end28.i.fold.split113, %if.end28.i.fold.split112, %if.end28.i.fold.split111, %if.end28.i.fold.split, %if.then.i.if.end28.i_crit_edge
  %retval.0.i.i = phi ptr [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), %if.end28.i.fold.split ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), %if.end28.i.fold.split111 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), %if.end28.i.fold.split112 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), %if.end28.i.fold.split113 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), %if.end28.i.fold.split114 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %if.end28.i.fold.split115 ], [ @fimc_lite_formats, %if.then.i.if.end28.i_crit_edge ]
  %colorspace.i = getelementptr inbounds %struct.fimc_fmt, ptr %retval.0.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %colorspace.i, align 4
  %conv29.i = zext i8 %35 to i32
  %colorspace30.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %colorspace30.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv29.i, ptr %colorspace30.i, align 4
  %37 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %retval.0.i.i, align 4
  %39 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %code.i, align 4
  br label %if.end56.i

if.else.i:                                        ; preds = %if.end15
  %40 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp32.i = icmp eq i32 %41, 0
  br i1 %cmp32.i, label %if.then34.i, label %if.else42.i

if.then34.i:                                      ; preds = %if.else.i
  %num_pads.i.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 5, i32 0, i32 5
  %42 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp.not.i.not.i = icmp eq i16 %43, 0
  br i1 %cmp.not.i.not.i, label %do.end.i.i, label %if.then34.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !178

if.then34.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #13
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then34.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %44 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sd_state, align 4
  %code36.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %code36.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %code36.i, align 4
  %code37.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %code37.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %code37.i, align 4
  %colorspace38.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %45, i32 0, i32 4
  %49 = ptrtoint ptr %colorspace38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %colorspace38.i, align 4
  %colorspace39.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %51 = ptrtoint ptr %colorspace39.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %colorspace39.i, align 4
  %52 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp.not.i110.not.i = icmp eq i16 %53, 0
  br i1 %cmp.not.i110.not.i, label %do.end.i111.i, label %v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !178

v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i111.i:                                    ; preds = %v4l2_subdev_get_try_format.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1016, i32 noundef 9, ptr noundef null) #13
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i111.i, %v4l2_subdev_get_try_format.exit.i.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %54 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %55, i32 0, i32 1
  br label %if.end51.i

if.else42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %fmt43.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 3
  %56 = ptrtoint ptr %fmt43.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fmt43.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %code45.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %code45.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %code45.i, align 4
  %61 = load ptr, ptr %fmt43.i, align 4
  %colorspace47.i = getelementptr inbounds %struct.fimc_fmt, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %colorspace47.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %colorspace47.i, align 4
  %conv48.i = zext i8 %63 to i32
  %colorspace49.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %64 = ptrtoint ptr %colorspace49.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv48.i, ptr %colorspace49.i, align 4
  %rect50.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else42.i, %v4l2_subdev_get_try_crop.exit.i
  %rect.0.i = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %rect50.i, %if.else42.i ]
  %width52.i = getelementptr inbounds %struct.v4l2_rect, ptr %rect.0.i, i32 0, i32 2
  %65 = ptrtoint ptr %width52.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width52.i, align 4
  %67 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %format, align 4
  %height54.i = getelementptr inbounds %struct.v4l2_rect, ptr %rect.0.i, i32 0, i32 3
  %68 = ptrtoint ptr %height54.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height54.i, align 4
  %height55.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %height55.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %height55.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end51.i, %if.end28.i
  %fmt.0.i = phi ptr [ %retval.0.i.i, %if.end28.i ], [ null, %if.end51.i ]
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %71 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %field.i, align 4
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp58.i = icmp sgt i32 %72, 0
  br i1 %cmp58.i, label %do.end63.i, label %if.end56.i.fimc_lite_subdev_try_fmt.exit_crit_edge

if.end56.i.fimc_lite_subdev_try_fmt.exit_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_subdev_try_fmt.exit

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 5, i32 9
  %code66.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %73 = ptrtoint ptr %code66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %code66.i, align 4
  %colorspace67.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %75 = ptrtoint ptr %colorspace67.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %colorspace67.i, align 4
  %77 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %format, align 4
  %height69.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %height69.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height69.i, align 4
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name.i, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #16
  br label %fimc_lite_subdev_try_fmt.exit

fimc_lite_subdev_try_fmt.exit:                    ; preds = %do.end63.i, %if.end56.i.fimc_lite_subdev_try_fmt.exit_crit_edge
  %81 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp17 = icmp eq i32 %82, 0
  %83 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pad.i, align 4
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %fimc_lite_subdev_try_fmt.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.not.i = icmp ne i32 %84, 0
  %spec.store.select.i = zext i1 %cmp.not.i to i32
  %num_pads.i.i101 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %85 = ptrtoint ptr %num_pads.i.i101 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %num_pads.i.i101, align 4
  %87 = zext i1 %cmp.not.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %87)
  %cmp.not.i.i = icmp ugt i16 %86, %87
  br i1 %cmp.not.i.i, label %if.then18.__fimc_lite_subdev_get_try_fmt.exit_crit_edge, label %do.end.i.i102, !prof !176

if.then18.__fimc_lite_subdev_get_try_fmt.exit_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %__fimc_lite_subdev_get_try_fmt.exit

do.end.i.i102:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #13
  br label %__fimc_lite_subdev_get_try_fmt.exit

__fimc_lite_subdev_get_try_fmt.exit:              ; preds = %do.end.i.i102, %if.then18.__fimc_lite_subdev_get_try_fmt.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i102 ], [ %spec.store.select.i, %if.then18.__fimc_lite_subdev_get_try_fmt.exit_crit_edge ]
  %88 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %89, i32 %spec.select.i.i
  %90 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %format, i32 48)
  %91 = ptrtoint ptr %pad.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pad.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp23 = icmp eq i32 %92, 0
  br i1 %cmp23, label %if.then24, label %__fimc_lite_subdev_get_try_fmt.exit.cleanup_crit_edge

__fimc_lite_subdev_get_try_fmt.exit.cleanup_crit_edge: ; preds = %__fimc_lite_subdev_get_try_fmt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then24:                                        ; preds = %__fimc_lite_subdev_get_try_fmt.exit
  %93 = ptrtoint ptr %num_pads.i.i101 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %num_pads.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %94)
  %cmp.not.i.i105 = icmp ugt i16 %94, 1
  br i1 %cmp.not.i.i105, label %if.then24.__fimc_lite_subdev_get_try_fmt.exit110_crit_edge, label %do.end.i.i106, !prof !176

if.then24.__fimc_lite_subdev_get_try_fmt.exit110_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %__fimc_lite_subdev_get_try_fmt.exit110

do.end.i.i106:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 998, i32 noundef 9, ptr noundef null) #13
  br label %__fimc_lite_subdev_get_try_fmt.exit110

__fimc_lite_subdev_get_try_fmt.exit110:           ; preds = %do.end.i.i106, %if.then24.__fimc_lite_subdev_get_try_fmt.exit110_crit_edge
  %spec.select.i.i107 = phi i32 [ 0, %do.end.i.i106 ], [ 1, %if.then24.__fimc_lite_subdev_get_try_fmt.exit110_crit_edge ]
  %95 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i108 = getelementptr %struct.v4l2_subdev_pad_config, ptr %96, i32 %spec.select.i.i107
  %97 = call ptr @memcpy(ptr %arrayidx.i.i108, ptr %arrayidx.i.i, i32 48)
  br label %cleanup

if.end29:                                         ; preds = %fimc_lite_subdev_try_fmt.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp31 = icmp eq i32 %84, 0
  br i1 %cmp31, label %if.then32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %format, align 4
  %conv = trunc i32 %99 to i16
  %100 = ptrtoint ptr %inp_frame to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv, ptr %inp_frame, align 4
  %height34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %101 = ptrtoint ptr %height34 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height34, align 4
  %conv35 = trunc i32 %102 to i16
  %f_height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 1
  %103 = ptrtoint ptr %f_height to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv35, ptr %f_height, align 2
  %fmt36 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 3
  %104 = ptrtoint ptr %fmt36 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %fmt.0.i, ptr %fmt36, align 4
  %105 = load i32, ptr %format, align 4
  %rect = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2
  %width38 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 2
  %106 = ptrtoint ptr %width38 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %width38, align 4
  %107 = load i32, ptr %height34, align 4
  %height41 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 3
  %108 = ptrtoint ptr %height41 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %height41, align 4
  %109 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %rect, align 4
  %top = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 1
  %110 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %top, align 4
  %rect44 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 2
  %111 = call ptr @memcpy(ptr %rect44, ptr %rect, i32 16)
  %112 = load i32, ptr %format, align 4
  %conv47 = trunc i32 %112 to i16
  %113 = ptrtoint ptr %out_frame to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv47, ptr %out_frame, align 4
  %114 = load i32, ptr %height34, align 4
  %conv50 = trunc i32 %114 to i16
  %f_height51 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 1
  %115 = ptrtoint ptr %f_height51 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv50, ptr %f_height51, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %__fimc_lite_subdev_get_try_fmt.exit110, %__fimc_lite_subdev_get_try_fmt.exit.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true11.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ 0, %__fimc_lite_subdev_get_try_fmt.exit110 ], [ 0, %__fimc_lite_subdev_get_try_fmt.exit.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end29.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %inp_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.lor.lhs.false_crit_edge
    i32 2, label %entry.lor.lhs.false_crit_edge65
  ]

entry.lor.lhs.false_crit_edge65:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge65
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %5 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i.not = icmp eq i16 %10, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %if.then5.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !178

if.then5.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %v4l2_subdev_get_try_crop.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1016, i32 noundef 9, ptr noundef null) #13
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i, %if.then5.v4l2_subdev_get_try_crop.exit_crit_edge
  %11 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %12, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %r, ptr %try_crop.i, i32 16)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  %r12 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %rect = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2
  %16 = call ptr @memcpy(ptr %r12, ptr %rect, i32 16)
  br label %if.end18

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %r12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %r12, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %top, align 4
  %19 = ptrtoint ptr %inp_frame to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inp_frame, align 4
  %conv = zext i16 %20 to i32
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %width, align 4
  %f_height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %f_height, align 2
  %conv16 = zext i16 %23 to i32
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv16, ptr %height, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp20 = icmp sgt i32 %25, 0
  br i1 %cmp20, label %do.end, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %rect24 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2
  %26 = ptrtoint ptr %rect24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rect24, align 4
  %top27 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 1
  %28 = ptrtoint ptr %top27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %top27, align 4
  %width29 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 2
  %30 = ptrtoint ptr %width29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width29, align 4
  %height31 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 3
  %32 = ptrtoint ptr %height31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height31, align 4
  %34 = ptrtoint ptr %inp_frame to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %inp_frame, align 4
  %conv33 = zext i16 %35 to i32
  %f_height34 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %f_height34 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %f_height34, align 2
  %conv35 = zext i16 %37 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.31, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %conv33, i32 noundef %conv35) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end18.cleanup_crit_edge, %v4l2_subdev_get_try_crop.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %v4l2_subdev_get_try_crop.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %inp_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %width.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %inp_frame to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inp_frame, align 4
  %conv.i = zext i16 %7 to i32
  %height.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %f_height.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %f_height.i, align 2
  %conv1.i = zext i16 %9 to i32
  tail call void @v4l_bound_align_image(ptr noundef %width.i, i32 noundef 0, i32 noundef %conv.i, i32 noundef 0, ptr noundef %height.i, i32 noundef 0, i32 noundef %conv1.i, i32 noundef 0, i32 noundef 0) #13
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %12 = ptrtoint ptr %inp_frame to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %inp_frame, align 4
  %conv4.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %sub.i = sub i32 %conv4.i, %15
  %16 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub.i) #13
  %17 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %r, align 4
  %dd.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dd.i, align 4
  %win_hor_offs_align.i = getelementptr inbounds %struct.flite_drvdata, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %win_hor_offs_align.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %win_hor_offs_align.i, align 2
  %conv15.i = zext i16 %21 to i32
  %neg.i = sub nsw i32 0, %conv15.i
  %and.i = and i32 %16, %neg.i
  store i32 %and.i, ptr %r, align 4
  %top.i = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top.i, align 4
  %24 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %f_height.i, align 2
  %conv26.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  %sub28.i = sub i32 %conv26.i, %27
  %28 = tail call i32 @llvm.umin.i32(i32 %23, i32 %sub28.i) #13
  %29 = ptrtoint ptr %top.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %top.i, align 4
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp37.i = icmp sgt i32 %30, 0
  br i1 %cmp37.i, label %do.end.i, label %if.end.fimc_lite_try_crop.exit_crit_edge

if.end.fimc_lite_try_crop.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_try_crop.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 5, i32 9
  %31 = ptrtoint ptr %inp_frame to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %inp_frame, align 4
  %conv46.i = zext i16 %32 to i32
  %33 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %f_height.i, align 2
  %conv48.i = zext i16 %34 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i, i32 noundef %and.i, i32 noundef %28, i32 noundef %15, i32 noundef %27, i32 noundef %conv46.i, i32 noundef %conv48.i) #16
  br label %fimc_lite_try_crop.exit

fimc_lite_try_crop.exit:                          ; preds = %do.end.i, %if.end.fimc_lite_try_crop.exit_crit_edge
  %35 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2 = icmp eq i32 %36, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %fimc_lite_try_crop.exit
  %37 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pad, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %39 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_pads.i, align 4
  %conv.i61 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv.i61)
  %cmp.not.i = icmp ult i32 %38, %conv.i61
  br i1 %cmp.not.i, label %if.then3.v4l2_subdev_get_try_crop.exit_crit_edge, label %do.end.i62, !prof !176

if.then3.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %v4l2_subdev_get_try_crop.exit

do.end.i62:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1016, i32 noundef 9, ptr noundef null) #13
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i62, %if.then3.v4l2_subdev_get_try_crop.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i62 ], [ %38, %if.then3.v4l2_subdev_get_try_crop.exit_crit_edge ]
  %41 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %42, i32 %spec.select.i, i32 1
  %43 = call ptr @memcpy(ptr %try_crop.i, ptr %r, i32 16)
  br label %if.end17

if.else:                                          ; preds = %fimc_lite_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %rect = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2
  %44 = call ptr @memcpy(ptr %rect, ptr %r, i32 16)
  %rect14 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 2
  %45 = call ptr @memcpy(ptr %rect14, ptr %r, i32 16)
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call10) #13
  br label %if.end17

if.end17:                                         ; preds = %if.else, %v4l2_subdev_get_try_crop.exit
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp20 = icmp sgt i32 %46, 0
  br i1 %cmp20, label %do.end25, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %rect27 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2
  %47 = ptrtoint ptr %rect27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rect27, align 4
  %top = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 1
  %49 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 2
  %51 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 3
  %53 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height, align 4
  %55 = ptrtoint ptr %inp_frame to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %inp_frame, align 4
  %conv31 = zext i16 %56 to i32
  %57 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %f_height.i, align 2
  %conv32 = zext i16 %58 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %conv31, i32 noundef %conv32) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fimc_lite_find_format(ptr noundef readonly %pixelformat, ptr noundef readonly %mbus_code, i32 noundef %mask, i32 noundef %index) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %index)
  %cmp = icmp sgt i32 %index, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp eq i32 %mask, 0
  %tobool5.not = icmp eq ptr %pixelformat, null
  %tobool11.not = icmp eq ptr %mbus_code, null
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %0 = or i1 %tobool.not, %tobool2.not
  br i1 %0, label %if.end4, label %for.cond.preheader.land.lhs.true.1_crit_edge

for.cond.preheader.land.lhs.true.1_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.1

if.end4:                                          ; preds = %for.cond.preheader
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %land.lhs.true6

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true6:                                   ; preds = %if.end4
  %1 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %2)
  %cmp7 = icmp eq i32 %2, 1448695129
  br i1 %cmp7, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  br i1 %tobool11.not, label %if.end10.for.inc_crit_edge, label %land.lhs.true12

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true12:                                  ; preds = %if.end10
  %3 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %4)
  %cmp14 = icmp eq i32 %4, 8200
  br i1 %cmp14, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %if.end10.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp18 = icmp eq i32 %index, 0
  %spec.select = select i1 %cmp18, ptr @fimc_lite_formats, ptr null
  br i1 %tobool.not, label %for.inc.if.end4.1_crit_edge, label %for.inc.land.lhs.true.1_crit_edge

for.inc.land.lhs.true.1_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.1

for.inc.if.end4.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.1

land.lhs.true.1:                                  ; preds = %for.inc.land.lhs.true.1_crit_edge, %for.cond.preheader.land.lhs.true.1_crit_edge
  %id.149 = phi i32 [ 1, %for.inc.land.lhs.true.1_crit_edge ], [ 0, %for.cond.preheader.land.lhs.true.1_crit_edge ]
  %def_fmt.247 = phi ptr [ %spec.select, %for.inc.land.lhs.true.1_crit_edge ], [ null, %for.cond.preheader.land.lhs.true.1_crit_edge ]
  %and.1 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %land.lhs.true.1.land.lhs.true.2_crit_edge, label %land.lhs.true.1.if.end4.1_crit_edge

land.lhs.true.1.if.end4.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.1

land.lhs.true.1.land.lhs.true.2_crit_edge:        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.2

if.end4.1:                                        ; preds = %land.lhs.true.1.if.end4.1_crit_edge, %for.inc.if.end4.1_crit_edge
  %id.150 = phi i32 [ %id.149, %land.lhs.true.1.if.end4.1_crit_edge ], [ 1, %for.inc.if.end4.1_crit_edge ]
  %def_fmt.248 = phi ptr [ %def_fmt.247, %land.lhs.true.1.if.end4.1_crit_edge ], [ %spec.select, %for.inc.if.end4.1_crit_edge ]
  br i1 %tobool5.not, label %if.end4.1.if.end10.1_crit_edge, label %land.lhs.true6.1

if.end4.1.if.end10.1_crit_edge:                   ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.1

land.lhs.true6.1:                                 ; preds = %if.end4.1
  %5 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %6)
  %cmp7.1 = icmp eq i32 %6, 1498831189
  br i1 %cmp7.1, label %land.lhs.true6.1.cleanup_crit_edge, label %land.lhs.true6.1.if.end10.1_crit_edge

land.lhs.true6.1.if.end10.1_crit_edge:            ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.1

land.lhs.true6.1.cleanup_crit_edge:               ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.1:                                       ; preds = %land.lhs.true6.1.if.end10.1_crit_edge, %if.end4.1.if.end10.1_crit_edge
  br i1 %tobool11.not, label %if.end10.1.for.inc.1_crit_edge, label %land.lhs.true12.1

if.end10.1.for.inc.1_crit_edge:                   ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true12.1:                                ; preds = %if.end10.1
  %7 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8198, i32 %8)
  %cmp14.1 = icmp eq i32 %8, 8198
  br i1 %cmp14.1, label %land.lhs.true12.1.cleanup_crit_edge, label %land.lhs.true12.1.for.inc.1_crit_edge

land.lhs.true12.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true12.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true12.1.cleanup_crit_edge:              ; preds = %land.lhs.true12.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true12.1.for.inc.1_crit_edge, %if.end10.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.150, i32 %index)
  %cmp18.1 = icmp eq i32 %id.150, %index
  %spec.select.1 = select i1 %cmp18.1, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), ptr %def_fmt.248
  %inc.1 = add nuw nsw i32 %id.150, 1
  br i1 %tobool.not, label %for.inc.1.if.end4.2_crit_edge, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.2

for.inc.1.if.end4.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.2

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %land.lhs.true.1.land.lhs.true.2_crit_edge
  %id.1.155 = phi i32 [ %inc.1, %for.inc.1.land.lhs.true.2_crit_edge ], [ %id.149, %land.lhs.true.1.land.lhs.true.2_crit_edge ]
  %def_fmt.2.153 = phi ptr [ %spec.select.1, %for.inc.1.land.lhs.true.2_crit_edge ], [ %def_fmt.247, %land.lhs.true.1.land.lhs.true.2_crit_edge ]
  %and.2 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %land.lhs.true.2.land.lhs.true.3_crit_edge, label %land.lhs.true.2.if.end4.2_crit_edge

land.lhs.true.2.if.end4.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.2

land.lhs.true.2.land.lhs.true.3_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.3

if.end4.2:                                        ; preds = %land.lhs.true.2.if.end4.2_crit_edge, %for.inc.1.if.end4.2_crit_edge
  %id.1.156 = phi i32 [ %id.1.155, %land.lhs.true.2.if.end4.2_crit_edge ], [ %inc.1, %for.inc.1.if.end4.2_crit_edge ]
  %def_fmt.2.154 = phi ptr [ %def_fmt.2.153, %land.lhs.true.2.if.end4.2_crit_edge ], [ %spec.select.1, %for.inc.1.if.end4.2_crit_edge ]
  br i1 %tobool5.not, label %if.end4.2.if.end10.2_crit_edge, label %land.lhs.true6.2

if.end4.2.if.end10.2_crit_edge:                   ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.2

land.lhs.true6.2:                                 ; preds = %if.end4.2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498765654, i32 %10)
  %cmp7.2 = icmp eq i32 %10, 1498765654
  br i1 %cmp7.2, label %land.lhs.true6.2.cleanup_crit_edge, label %land.lhs.true6.2.if.end10.2_crit_edge

land.lhs.true6.2.if.end10.2_crit_edge:            ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.2

land.lhs.true6.2.cleanup_crit_edge:               ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.2:                                       ; preds = %land.lhs.true6.2.if.end10.2_crit_edge, %if.end4.2.if.end10.2_crit_edge
  br i1 %tobool11.not, label %if.end10.2.for.inc.2_crit_edge, label %land.lhs.true12.2

if.end10.2.for.inc.2_crit_edge:                   ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true12.2:                                ; preds = %if.end10.2
  %11 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8199, i32 %12)
  %cmp14.2 = icmp eq i32 %12, 8199
  br i1 %cmp14.2, label %land.lhs.true12.2.cleanup_crit_edge, label %land.lhs.true12.2.for.inc.2_crit_edge

land.lhs.true12.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true12.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true12.2.cleanup_crit_edge:              ; preds = %land.lhs.true12.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true12.2.for.inc.2_crit_edge, %if.end10.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.156, i32 %index)
  %cmp18.2 = icmp eq i32 %id.1.156, %index
  %spec.select.2 = select i1 %cmp18.2, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), ptr %def_fmt.2.154
  %inc.2 = add nuw nsw i32 %id.1.156, 1
  br i1 %tobool.not, label %for.inc.2.if.end4.3_crit_edge, label %for.inc.2.land.lhs.true.3_crit_edge

for.inc.2.land.lhs.true.3_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.3

for.inc.2.if.end4.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.3

land.lhs.true.3:                                  ; preds = %for.inc.2.land.lhs.true.3_crit_edge, %land.lhs.true.2.land.lhs.true.3_crit_edge
  %id.1.261 = phi i32 [ %inc.2, %for.inc.2.land.lhs.true.3_crit_edge ], [ %id.1.155, %land.lhs.true.2.land.lhs.true.3_crit_edge ]
  %def_fmt.2.259 = phi ptr [ %spec.select.2, %for.inc.2.land.lhs.true.3_crit_edge ], [ %def_fmt.2.153, %land.lhs.true.2.land.lhs.true.3_crit_edge ]
  %and.3 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %land.lhs.true.3.land.lhs.true.4_crit_edge, label %land.lhs.true.3.if.end4.3_crit_edge

land.lhs.true.3.if.end4.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.3

land.lhs.true.3.land.lhs.true.4_crit_edge:        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.4

if.end4.3:                                        ; preds = %land.lhs.true.3.if.end4.3_crit_edge, %for.inc.2.if.end4.3_crit_edge
  %id.1.262 = phi i32 [ %id.1.261, %land.lhs.true.3.if.end4.3_crit_edge ], [ %inc.2, %for.inc.2.if.end4.3_crit_edge ]
  %def_fmt.2.260 = phi ptr [ %def_fmt.2.259, %land.lhs.true.3.if.end4.3_crit_edge ], [ %spec.select.2, %for.inc.2.if.end4.3_crit_edge ]
  br i1 %tobool5.not, label %if.end4.3.if.end10.3_crit_edge, label %land.lhs.true6.3

if.end4.3.if.end10.3_crit_edge:                   ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.3

land.lhs.true6.3:                                 ; preds = %if.end4.3
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431918169, i32 %14)
  %cmp7.3 = icmp eq i32 %14, 1431918169
  br i1 %cmp7.3, label %land.lhs.true6.3.cleanup_crit_edge, label %land.lhs.true6.3.if.end10.3_crit_edge

land.lhs.true6.3.if.end10.3_crit_edge:            ; preds = %land.lhs.true6.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.3

land.lhs.true6.3.cleanup_crit_edge:               ; preds = %land.lhs.true6.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.3:                                       ; preds = %land.lhs.true6.3.if.end10.3_crit_edge, %if.end4.3.if.end10.3_crit_edge
  br i1 %tobool11.not, label %if.end10.3.for.inc.3_crit_edge, label %land.lhs.true12.3

if.end10.3.for.inc.3_crit_edge:                   ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true12.3:                                ; preds = %if.end10.3
  %15 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %16)
  %cmp14.3 = icmp eq i32 %16, 8201
  br i1 %cmp14.3, label %land.lhs.true12.3.cleanup_crit_edge, label %land.lhs.true12.3.for.inc.3_crit_edge

land.lhs.true12.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true12.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true12.3.cleanup_crit_edge:              ; preds = %land.lhs.true12.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true12.3.for.inc.3_crit_edge, %if.end10.3.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.262, i32 %index)
  %cmp18.3 = icmp eq i32 %id.1.262, %index
  %spec.select.3 = select i1 %cmp18.3, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), ptr %def_fmt.2.260
  %inc.3 = add nuw nsw i32 %id.1.262, 1
  br i1 %tobool.not, label %for.inc.3.if.end4.4_crit_edge, label %for.inc.3.land.lhs.true.4_crit_edge

for.inc.3.land.lhs.true.4_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.4

for.inc.3.if.end4.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.4

land.lhs.true.4:                                  ; preds = %for.inc.3.land.lhs.true.4_crit_edge, %land.lhs.true.3.land.lhs.true.4_crit_edge
  %id.1.367 = phi i32 [ %inc.3, %for.inc.3.land.lhs.true.4_crit_edge ], [ %id.1.261, %land.lhs.true.3.land.lhs.true.4_crit_edge ]
  %def_fmt.2.365 = phi ptr [ %spec.select.3, %for.inc.3.land.lhs.true.4_crit_edge ], [ %def_fmt.2.259, %land.lhs.true.3.land.lhs.true.4_crit_edge ]
  %and.4 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool2.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool2.not.4, label %land.lhs.true.4.land.lhs.true.5_crit_edge, label %land.lhs.true.4.if.end4.4_crit_edge

land.lhs.true.4.if.end4.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.4

land.lhs.true.4.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.5

if.end4.4:                                        ; preds = %land.lhs.true.4.if.end4.4_crit_edge, %for.inc.3.if.end4.4_crit_edge
  %id.1.368 = phi i32 [ %id.1.367, %land.lhs.true.4.if.end4.4_crit_edge ], [ %inc.3, %for.inc.3.if.end4.4_crit_edge ]
  %def_fmt.2.366 = phi ptr [ %def_fmt.2.365, %land.lhs.true.4.if.end4.4_crit_edge ], [ %spec.select.3, %for.inc.3.if.end4.4_crit_edge ]
  br i1 %tobool5.not, label %if.end4.4.if.end10.4_crit_edge, label %land.lhs.true6.4

if.end4.4.if.end10.4_crit_edge:                   ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.4

land.lhs.true6.4:                                 ; preds = %if.end4.4
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1195528775, i32 %18)
  %cmp7.4 = icmp eq i32 %18, 1195528775
  br i1 %cmp7.4, label %land.lhs.true6.4.cleanup_crit_edge, label %land.lhs.true6.4.if.end10.4_crit_edge

land.lhs.true6.4.if.end10.4_crit_edge:            ; preds = %land.lhs.true6.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.4

land.lhs.true6.4.cleanup_crit_edge:               ; preds = %land.lhs.true6.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.4:                                       ; preds = %land.lhs.true6.4.if.end10.4_crit_edge, %if.end4.4.if.end10.4_crit_edge
  br i1 %tobool11.not, label %if.end10.4.for.inc.4_crit_edge, label %land.lhs.true12.4

if.end10.4.for.inc.4_crit_edge:                   ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

land.lhs.true12.4:                                ; preds = %if.end10.4
  %19 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12290, i32 %20)
  %cmp14.4 = icmp eq i32 %20, 12290
  br i1 %cmp14.4, label %land.lhs.true12.4.cleanup_crit_edge, label %land.lhs.true12.4.for.inc.4_crit_edge

land.lhs.true12.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true12.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

land.lhs.true12.4.cleanup_crit_edge:              ; preds = %land.lhs.true12.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true12.4.for.inc.4_crit_edge, %if.end10.4.for.inc.4_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.368, i32 %index)
  %cmp18.4 = icmp eq i32 %id.1.368, %index
  %spec.select.4 = select i1 %cmp18.4, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), ptr %def_fmt.2.366
  %inc.4 = add nuw nsw i32 %id.1.368, 1
  br i1 %tobool.not, label %for.inc.4.if.end4.5_crit_edge, label %for.inc.4.land.lhs.true.5_crit_edge

for.inc.4.land.lhs.true.5_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.5

for.inc.4.if.end4.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.5

land.lhs.true.5:                                  ; preds = %for.inc.4.land.lhs.true.5_crit_edge, %land.lhs.true.4.land.lhs.true.5_crit_edge
  %id.1.473 = phi i32 [ %inc.4, %for.inc.4.land.lhs.true.5_crit_edge ], [ %id.1.367, %land.lhs.true.4.land.lhs.true.5_crit_edge ]
  %def_fmt.2.471 = phi ptr [ %spec.select.4, %for.inc.4.land.lhs.true.5_crit_edge ], [ %def_fmt.2.365, %land.lhs.true.4.land.lhs.true.5_crit_edge ]
  %and.5 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool2.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool2.not.5, label %land.lhs.true.5.land.lhs.true.6_crit_edge, label %land.lhs.true.5.if.end4.5_crit_edge

land.lhs.true.5.if.end4.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.5

land.lhs.true.5.land.lhs.true.6_crit_edge:        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.6

if.end4.5:                                        ; preds = %land.lhs.true.5.if.end4.5_crit_edge, %for.inc.4.if.end4.5_crit_edge
  %id.1.474 = phi i32 [ %id.1.473, %land.lhs.true.5.if.end4.5_crit_edge ], [ %inc.4, %for.inc.4.if.end4.5_crit_edge ]
  %def_fmt.2.472 = phi ptr [ %def_fmt.2.471, %land.lhs.true.5.if.end4.5_crit_edge ], [ %spec.select.4, %for.inc.4.if.end4.5_crit_edge ]
  br i1 %tobool5.not, label %if.end4.5.if.end10.5_crit_edge, label %land.lhs.true6.5

if.end4.5.if.end10.5_crit_edge:                   ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.5

land.lhs.true6.5:                                 ; preds = %if.end4.5
  %21 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 808534338, i32 %22)
  %cmp7.5 = icmp eq i32 %22, 808534338
  br i1 %cmp7.5, label %land.lhs.true6.5.cleanup_crit_edge, label %land.lhs.true6.5.if.end10.5_crit_edge

land.lhs.true6.5.if.end10.5_crit_edge:            ; preds = %land.lhs.true6.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.5

land.lhs.true6.5.cleanup_crit_edge:               ; preds = %land.lhs.true6.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.5:                                       ; preds = %land.lhs.true6.5.if.end10.5_crit_edge, %if.end4.5.if.end10.5_crit_edge
  br i1 %tobool11.not, label %if.end10.5.for.inc.5_crit_edge, label %land.lhs.true12.5

if.end10.5.for.inc.5_crit_edge:                   ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

land.lhs.true12.5:                                ; preds = %if.end10.5
  %23 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12298, i32 %24)
  %cmp14.5 = icmp eq i32 %24, 12298
  br i1 %cmp14.5, label %land.lhs.true12.5.cleanup_crit_edge, label %land.lhs.true12.5.for.inc.5_crit_edge

land.lhs.true12.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true12.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

land.lhs.true12.5.cleanup_crit_edge:              ; preds = %land.lhs.true12.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true12.5.for.inc.5_crit_edge, %if.end10.5.for.inc.5_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.474, i32 %index)
  %cmp18.5 = icmp eq i32 %id.1.474, %index
  %spec.select.5 = select i1 %cmp18.5, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), ptr %def_fmt.2.472
  %inc.5 = add nuw nsw i32 %id.1.474, 1
  br i1 %tobool.not, label %for.inc.5.if.end4.6_crit_edge, label %for.inc.5.land.lhs.true.6_crit_edge

for.inc.5.land.lhs.true.6_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.6

for.inc.5.if.end4.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.6

land.lhs.true.6:                                  ; preds = %for.inc.5.land.lhs.true.6_crit_edge, %land.lhs.true.5.land.lhs.true.6_crit_edge
  %id.1.579 = phi i32 [ %inc.5, %for.inc.5.land.lhs.true.6_crit_edge ], [ %id.1.473, %land.lhs.true.5.land.lhs.true.6_crit_edge ]
  %def_fmt.2.577 = phi ptr [ %spec.select.5, %for.inc.5.land.lhs.true.6_crit_edge ], [ %def_fmt.2.471, %land.lhs.true.5.land.lhs.true.6_crit_edge ]
  %and.6 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool2.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool2.not.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.if.end4.6_crit_edge

land.lhs.true.6.if.end4.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.6:                                        ; preds = %land.lhs.true.6.if.end4.6_crit_edge, %for.inc.5.if.end4.6_crit_edge
  %id.1.580 = phi i32 [ %id.1.579, %land.lhs.true.6.if.end4.6_crit_edge ], [ %inc.5, %for.inc.5.if.end4.6_crit_edge ]
  %def_fmt.2.578 = phi ptr [ %def_fmt.2.577, %land.lhs.true.6.if.end4.6_crit_edge ], [ %spec.select.5, %for.inc.5.if.end4.6_crit_edge ]
  br i1 %tobool5.not, label %if.end4.6.if.end10.6_crit_edge, label %land.lhs.true6.6

if.end4.6.if.end10.6_crit_edge:                   ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.6

land.lhs.true6.6:                                 ; preds = %if.end4.6
  %25 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842088770, i32 %26)
  %cmp7.6 = icmp eq i32 %26, 842088770
  br i1 %cmp7.6, label %land.lhs.true6.6.cleanup_crit_edge, label %land.lhs.true6.6.if.end10.6_crit_edge

land.lhs.true6.6.if.end10.6_crit_edge:            ; preds = %land.lhs.true6.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.6

land.lhs.true6.6.cleanup_crit_edge:               ; preds = %land.lhs.true6.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.6:                                       ; preds = %land.lhs.true6.6.if.end10.6_crit_edge, %if.end4.6.if.end10.6_crit_edge
  br i1 %tobool11.not, label %if.end10.6.if.end17.6_crit_edge, label %land.lhs.true12.6

if.end10.6.if.end17.6_crit_edge:                  ; preds = %if.end10.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.6

land.lhs.true12.6:                                ; preds = %if.end10.6
  %27 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12305, i32 %28)
  %cmp14.6 = icmp eq i32 %28, 12305
  br i1 %cmp14.6, label %land.lhs.true12.6.cleanup_crit_edge, label %land.lhs.true12.6.if.end17.6_crit_edge

land.lhs.true12.6.if.end17.6_crit_edge:           ; preds = %land.lhs.true12.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.6

land.lhs.true12.6.cleanup_crit_edge:              ; preds = %land.lhs.true12.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17.6:                                       ; preds = %land.lhs.true12.6.if.end17.6_crit_edge, %if.end10.6.if.end17.6_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %id.1.580, i32 %index)
  %cmp18.6 = icmp eq i32 %id.1.580, %index
  %spec.select.6 = select i1 %cmp18.6, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), ptr %def_fmt.2.578
  br label %cleanup

cleanup:                                          ; preds = %if.end17.6, %land.lhs.true12.6.cleanup_crit_edge, %land.lhs.true6.6.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true12.5.cleanup_crit_edge, %land.lhs.true6.5.cleanup_crit_edge, %land.lhs.true12.4.cleanup_crit_edge, %land.lhs.true6.4.cleanup_crit_edge, %land.lhs.true12.3.cleanup_crit_edge, %land.lhs.true6.3.cleanup_crit_edge, %land.lhs.true12.2.cleanup_crit_edge, %land.lhs.true6.2.cleanup_crit_edge, %land.lhs.true12.1.cleanup_crit_edge, %land.lhs.true6.1.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ @fimc_lite_formats, %land.lhs.true6.cleanup_crit_edge ], [ @fimc_lite_formats, %land.lhs.true12.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), %land.lhs.true6.1.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), %land.lhs.true12.1.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), %land.lhs.true6.2.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), %land.lhs.true12.2.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), %land.lhs.true6.3.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), %land.lhs.true12.3.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), %land.lhs.true6.4.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), %land.lhs.true12.4.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), %land.lhs.true6.5.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), %land.lhs.true12.5.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %land.lhs.true6.6.cleanup_crit_edge ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %land.lhs.true12.6.cleanup_crit_edge ], [ %spec.select.6, %if.end17.6 ], [ %def_fmt.2.577, %land.lhs.true.6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %state = getelementptr i8, ptr %1, i32 448
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_registered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %vb_queue = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  %2 = call ptr @memset(ptr %ve, i32 0, i32 1352)
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %out_path, i32 noundef 4) #13
  %3 = ptrtoint ptr %out_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 2, ptr %out_path, align 4
  %name = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 12
  %index = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %5)
  %fops = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @fimc_lite_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 24
  %7 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fimc_lite_ioctl_ops, ptr %ioctl_ops, align 4
  %v4l2_dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 5
  %8 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v4l2_dev, align 4
  %v4l2_dev2 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 7
  %10 = ptrtoint ptr %v4l2_dev2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %v4l2_dev2, align 4
  %minor = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 15
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %minor, align 8
  %release = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 23
  %12 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @video_device_release_empty, ptr %release, align 8
  %queue = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 10
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vb_queue, ptr %queue, align 8
  %device_caps = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 4
  %14 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67112960, ptr %device_caps, align 8
  %reqbufs_count = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %reqbufs_count, align 8
  %pending_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 23
  %16 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pending_buf_q, ptr %pending_buf_q, align 4
  %prev.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 23, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pending_buf_q, ptr %prev.i, align 4
  %active_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %active_buf_q, ptr %active_buf_q, align 4
  %prev.i77 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24, i32 1
  %19 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %active_buf_q, ptr %prev.i77, align 4
  %20 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 3
  %21 = call ptr @memset(ptr %20, i32 0, i32 500)
  %22 = ptrtoint ptr %vb_queue to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9, ptr %vb_queue, align 4
  %io_modes = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 1
  %23 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %io_modes, align 4
  %ops = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 7
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @fimc_lite_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 8
  %25 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 12
  %26 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 752, ptr %buf_struct_size, align 4
  %drv_priv = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 10
  %27 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %drv_priv, align 4
  %timestamp_flags = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 13
  %28 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  %lock3 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 5
  %29 = ptrtoint ptr %lock3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %lock, ptr %lock3, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %dev4 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 2
  %32 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %dev4, align 4
  %call5 = tail call i32 @vb2_queue_init(ptr noundef %vb_queue) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vd_pad = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 6
  %flags = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 6, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %flags, align 4
  %call7 = tail call i32 @media_entity_pads_init(ptr noundef %ve, i16 noundef zeroext 1, ptr noundef %vd_pad) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %driver_data.i.i, align 4
  %host_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 12
  %35 = ptrtoint ptr %host_priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_priv.i, align 4
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %pipe, align 8
  %38 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fops, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %ve, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %41) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %if.then15, label %do.end

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pipe, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end10
  %43 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %v4l2_dev, align 4
  %name21 = getelementptr inbounds %struct.v4l2_device, ptr %44, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 5
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %48, %if.end.i.i ], [ %46, %do.end.video_device_node_name.exit_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name21, ptr noundef %name, ptr noundef %retval.0.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then15 ], [ 0, %video_device_node_name.exit ], [ %call5, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_lite_subdev_unregistered(ptr nocapture noundef readonly %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %flags.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 17
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  tail call void @video_unregister_device(ptr noundef %ve) #13
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pipe, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %2 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 6, ptr noundef %state) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i82 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i = icmp slt i32 %call.i82, 0
  br i1 %cmp.i, label %if.then.i, label %if.end5

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #13, !srcloc !180
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_in_use_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_in_use_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_in_use

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !181
  br label %err_in_use

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @v4l2_fh_open(ptr noundef %file) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.err_pm_crit_edge, label %if.end9

if.end5.err_pm_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm

if.end9:                                          ; preds = %if.end5
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i, align 4
  %call.i83 = tail call i32 @v4l2_fh_is_singular(ptr noundef %8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not = icmp eq i32 %call.i83, 0
  br i1 %tobool.not, label %if.end9.unlock_crit_edge, label %lor.lhs.false

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

lor.lhs.false:                                    ; preds = %if.end9
  %call.i.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %9 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp13.not = icmp eq i32 %10, 2
  br i1 %cmp13.not, label %if.end15, label %lor.lhs.false.unlock_crit_edge

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.end15:                                         ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %ve to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ve, align 4
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %12, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #13
  %tobool17.not = icmp eq ptr %ve, null
  br i1 %tobool17.not, label %if.end15.if.end47_crit_edge, label %lor.lhs.false18

if.end15.if.end47_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

lor.lhs.false18:                                  ; preds = %if.end15
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe, align 8
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %lor.lhs.false18.if.end47_crit_edge, label %cond.false

lor.lhs.false18.if.end47_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

cond.false:                                       ; preds = %lor.lhs.false18
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %tobool23.not = icmp eq ptr %16, null
  br i1 %tobool23.not, label %cond.false.if.end47_crit_edge, label %land.lhs.true

cond.false.if.end47_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

land.lhs.true:                                    ; preds = %cond.false
  %open = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %open, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %land.lhs.true.if.end47_crit_edge, label %cond.end37

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

cond.end37:                                       ; preds = %land.lhs.true
  %call35 = tail call i32 %18(ptr noundef nonnull %14, ptr noundef nonnull %ve, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp39 = icmp eq i32 %call35, 0
  br i1 %cmp39, label %if.then46, label %cond.end37.if.end47_crit_edge

cond.end37.if.end47_crit_edge:                    ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then46:                                        ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #15
  %use_count = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 13
  %19 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_count, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %use_count, align 4
  %21 = ptrtoint ptr %ve to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ve, align 4
  %graph_mutex44 = getelementptr inbounds %struct.media_device, ptr %22, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex44) #13
  %slock.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #13
  %events.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 29
  %23 = ptrtoint ptr %events.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %events.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #13
  br label %unlock

if.end47:                                         ; preds = %cond.end37.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %cond.false.if.end47_crit_edge, %lor.lhs.false18.if.end47_crit_edge, %if.end15.if.end47_crit_edge
  %cond3889.ph = phi i32 [ %call35, %cond.end37.if.end47_crit_edge ], [ -515, %cond.false.if.end47_crit_edge ], [ -515, %land.lhs.true.if.end47_crit_edge ], [ -2, %if.end15.if.end47_crit_edge ], [ -2, %lor.lhs.false18.if.end47_crit_edge ]
  %24 = ptrtoint ptr %ve to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ve, align 4
  %graph_mutex4493 = getelementptr inbounds %struct.media_device, ptr %25, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex4493) #13
  %call48 = tail call i32 @v4l2_fh_release(ptr noundef %file) #13
  br label %err_pm

err_pm:                                           ; preds = %if.end47, %if.end5.err_pm_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.err_pm_crit_edge ], [ %cond3889.ph, %if.end47 ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %dev50 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %call.i84 = tail call i32 @__pm_runtime_idle(ptr noundef %dev50, i32 noundef 4) #13
  br label %err_in_use

err_in_use:                                       ; preds = %err_pm, %do.end11.i.i.i.i.i, %if.then.i.err_in_use_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_pm ], [ %call.i82, %if.then.i.err_in_use_crit_edge ], [ %call.i82, %do.end11.i.i.i.i.i ]
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state) #13
  br label %unlock

unlock:                                           ; preds = %err_in_use, %if.then46, %lor.lhs.false.unlock_crit_edge, %if.end9.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_in_use ], [ %call6, %lor.lhs.false.unlock_crit_edge ], [ 0, %if.then46 ], [ %call6, %if.end9.unlock_crit_edge ], [ -16, %entry.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  %lock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i61 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not = icmp eq i32 %call.i61, 0
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %land.lhs.true

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true:                                    ; preds = %entry
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %4 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then:                                          ; preds = %land.lhs.true
  %streaming = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %streaming, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @media_pipeline_stop(ptr noundef %ve) #13
  %8 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %streaming, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %call7 = tail call fastcc i32 @fimc_lite_stop_capture(ptr noundef %1, i1 noundef zeroext false)
  %tobool9.not = icmp eq ptr %ve, null
  br i1 %tobool9.not, label %if.end.cond.end29_crit_edge, label %lor.lhs.false

if.end.cond.end29_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end29

lor.lhs.false:                                    ; preds = %if.end
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pipe, align 8
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %lor.lhs.false.cond.end29_crit_edge, label %cond.false

lor.lhs.false.cond.end29_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end29

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %cond.false.cond.end29_crit_edge, label %land.lhs.true15

cond.false.cond.end29_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end29

land.lhs.true15:                                  ; preds = %cond.false
  %close = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %close, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %land.lhs.true15.cond.end29_crit_edge, label %cond.true20

land.lhs.true15.cond.end29_crit_edge:             ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end29

cond.true20:                                      ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call i32 %14(ptr noundef nonnull %10) #13
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true20, %land.lhs.true15.cond.end29_crit_edge, %cond.false.cond.end29_crit_edge, %lor.lhs.false.cond.end29_crit_edge, %if.end.cond.end29_crit_edge
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %state) #13
  %15 = ptrtoint ptr %ve to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ve, align 4
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %16, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #13
  %use_count = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 13
  %17 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %use_count, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %use_count, align 4
  %19 = ptrtoint ptr %ve to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ve, align 4
  %graph_mutex33 = getelementptr inbounds %struct.media_device, ptr %20, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex33) #13
  br label %if.end34

if.end34:                                         ; preds = %cond.end29, %land.lhs.true.if.end34_crit_edge, %entry.if.end34_crit_edge
  %call35 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #13
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %call.i62 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #13
  %state37 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state37) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_stop_capture(ptr noundef %fimc, i1 noundef zeroext %suspend) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %slock.i = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #13
  %state.i = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 22
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %2 = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %.not = icmp eq i32 %2, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #13
  br i1 %.not, label %entry.cleanup60_crit_edge, label %do.body1

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup60

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #13
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #13
  tail call void @flite_hw_capture_stop(ptr noundef %fimc) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call3) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 229) #13
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body1.if.end56_crit_edge, label %if.then27

do.body1.if.end56_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then27:                                        ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %irq_queue = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 16
  %call2983 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool33.not84 = icmp eq i32 %9, 0
  br i1 %tobool33.not84, label %if.then27.for.end_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  br label %cleanup

if.then27.for.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then27.cleanup_crit_edge
  %__ret28.185 = phi i32 [ %__ret28.1, %cleanup.cleanup_crit_edge ], [ 20, %if.then27.cleanup_crit_edge ]
  %call53 = call i32 @schedule_timeout(i32 noundef %__ret28.185) #13
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool33.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool39.not = icmp eq i32 %call53, 0
  %13 = select i1 %tobool33.not, i1 %tobool39.not, i1 false
  %__ret28.1 = select i1 %13, i32 1, i32 %call53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.1)
  %tobool46.not = icmp eq i32 %__ret28.1, 0
  %14 = select i1 %tobool33.not, i1 true, i1 %tobool46.not
  br i1 %14, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then27.for.end_crit_edge
  call void @finish_wait(ptr noundef %irq_queue, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end56

if.end56:                                         ; preds = %for.end, %do.body1.if.end56_crit_edge
  %call59 = call fastcc i32 @fimc_lite_reinit(ptr noundef %fimc, i1 noundef zeroext %suspend)
  br label %cleanup60

cleanup60:                                        ; preds = %if.end56, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end56 ], [ 0, %entry.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_reinit(ptr noundef %fimc, i1 noundef zeroext %suspend) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %state = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and7 = and i32 %1, -317
  %and11 = and i32 %1, -319
  %or = or i32 %and7, 16
  %storemerge = select i1 %suspend, i32 %or, i32 %and11
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %state, align 4
  br i1 %suspend, label %entry.while.end_crit_edge, label %land.rhs.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs.preheader:                               ; preds = %entry
  %pending_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 23
  %3 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not91 = icmp eq ptr %4, %pending_buf_q
  br i1 %cmp.i.not91, label %land.rhs.preheader.while.end_crit_edge, label %land.rhs.preheader.while.body_crit_edge

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %fimc_lite_pending_queue_pop.exit.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %5 = phi ptr [ %15, %fimc_lite_pending_queue_pop.exit.while.body_crit_edge ], [ %4, %land.rhs.preheader.while.body_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.fimc_lite_pending_queue_pop.exit_crit_edge

while.body.fimc_lite_pending_queue_pop.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_pending_queue_pop.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %fimc_lite_pending_queue_pop.exit

fimc_lite_pending_queue_pop.exit:                 ; preds = %if.end.i.i.i, %while.body.fimc_lite_pending_queue_pop.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %5, i32 -736
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #13
  %14 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %15, %pending_buf_q
  br i1 %cmp.i.not, label %fimc_lite_pending_queue_pop.exit.while.end_crit_edge, label %fimc_lite_pending_queue_pop.exit.while.body_crit_edge

fimc_lite_pending_queue_pop.exit.while.body_crit_edge: ; preds = %fimc_lite_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

fimc_lite_pending_queue_pop.exit.while.end_crit_edge: ; preds = %fimc_lite_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %fimc_lite_pending_queue_pop.exit.while.end_crit_edge, %land.rhs.preheader.while.end_crit_edge, %entry.while.end_crit_edge
  %active_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 24
  %16 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i79.not92 = icmp eq ptr %17, %active_buf_q
  br i1 %cmp.i79.not92, label %while.end.while.end28_crit_edge, label %while.body20.lr.ph

while.end.while.end28_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end28

while.body20.lr.ph:                               ; preds = %while.end
  %pending_buf_q.i87 = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 23
  %prev.i.i88 = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 23, i32 1
  br label %while.body20

while.body20:                                     ; preds = %if.end27.while.body20_crit_edge, %while.body20.lr.ph
  %18 = phi ptr [ %17, %while.body20.lr.ph ], [ %34, %if.end27.while.body20_crit_edge ]
  %call.i.i.i81 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #13
  br i1 %call.i.i.i81, label %if.end.i.i.i84, label %while.body20.fimc_lite_active_queue_pop.exit_crit_edge

while.body20.fimc_lite_active_queue_pop.exit_crit_edge: ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_active_queue_pop.exit

if.end.i.i.i84:                                   ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i82, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i83, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %fimc_lite_active_queue_pop.exit

fimc_lite_active_queue_pop.exit:                  ; preds = %if.end.i.i.i84, %while.body20.fimc_lite_active_queue_pop.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i86 = getelementptr %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i86 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i86, align 4
  br i1 %suspend, label %if.then23, label %if.else24

if.then23:                                        ; preds = %fimc_lite_active_queue_pop.exit
  %27 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i88, align 4
  %call.i.i.i89 = tail call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef %28, ptr noundef %pending_buf_q.i87) #13
  br i1 %call.i.i.i89, label %if.end.i.i.i90, label %if.then23.if.end27_crit_edge

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end.i.i.i90:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %prev.i.i88 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %18, ptr %prev.i.i88, align 4
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pending_buf_q.i87, ptr %18, align 4
  %31 = ptrtoint ptr %prev.i.i86 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i.i86, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %18, ptr %28, align 4
  br label %if.end27

if.else24:                                        ; preds = %fimc_lite_active_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i85 = getelementptr i8, ptr %18, i32 -736
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i85, i32 noundef 6) #13
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.end.i.i.i90, %if.then23.if.end27_crit_edge
  %33 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i79.not = icmp eq ptr %34, %active_buf_q
  br i1 %cmp.i79.not, label %if.end27.while.end28_crit_edge, label %if.end27.while.body20_crit_edge

if.end27.while.body20_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body20

if.end27.while.end28_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end28

while.end28:                                      ; preds = %if.end27.while.end28_crit_edge, %while.end.while.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #13
  tail call void @flite_hw_reset(ptr noundef %fimc) #13
  br i1 %tobool.not, label %while.end28.cleanup_crit_edge, label %if.end32

while.end28.cleanup_crit_edge:                    ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %while.end28
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 2
  %tobool33.not = icmp eq ptr %ve, null
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %lor.lhs.false

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end32
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pipe, align 8
  %tobool35.not = icmp eq ptr %36, null
  br i1 %tobool35.not, label %lor.lhs.false.cleanup_crit_edge, label %cond.false

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %tobool38.not = icmp eq ptr %38, null
  br i1 %tobool38.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_stream, align 4
  %tobool42.not = icmp eq ptr %40, null
  br i1 %tobool42.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true43

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.true43:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call i32 %40(ptr noundef nonnull %36, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.true43, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %while.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end28.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end32.cleanup_crit_edge ], [ %call50, %cond.true43 ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #13
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fimc_lite_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fourcc = getelementptr [7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
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
define internal i32 @fimc_lite_g_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %plane_fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %out_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  %fmt3 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 3
  %2 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt3, align 4
  %4 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_frame, align 4
  %conv = zext i16 %5 to i32
  %depth = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %depth, align 1
  %conv5 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv5, %conv
  %div31 = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %div31, ptr %bytesperline, align 1
  %f_height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %f_height, align 2
  %conv7 = zext i16 %10 to i32
  %mul8 = mul i32 %div31, %conv7
  %11 = ptrtoint ptr %plane_fmt1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %mul8, ptr %plane_fmt1, align 1
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %memplanes, align 4
  %conv9 = trunc i16 %13 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9, ptr %num_planes, align 1
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %pixelformat, align 1
  %18 = load i16, ptr %out_frame, align 4
  %conv11 = zext i16 %18 to i32
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %conv11, ptr %fmt, align 1
  %20 = load i16, ptr %f_height, align 2
  %conv13 = zext i16 %20 to i32
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %conv13, ptr %height, align 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 1, ptr %field, align 1
  %colorspace = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %colorspace, align 4
  %conv14 = zext i8 %24 to i32
  %colorspace15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %colorspace15 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %conv14, ptr %colorspace15, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_s_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %fmt1 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %out_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmt1) #13
  %2 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fmt1, align 4
  %num_buffers.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 25, i32 21
  %3 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc i32 @fimc_lite_try_fmt(ptr noundef %1, ptr noundef %fmt, ptr noundef nonnull %fmt1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmt1, align 4
  %fmt7 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 3
  %7 = ptrtoint ptr %fmt7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %fmt7, align 4
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %fmt, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %height, align 1
  %mul = mul i32 %11, %9
  %depth = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %depth, align 1
  %conv = zext i8 %13 to i32
  %mul8 = mul i32 %mul, %conv
  %div34 = lshr i32 %mul8, 3
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %14 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %plane_fmt, align 1
  %16 = call i32 @llvm.umax.i32(i32 %div34, i32 %15)
  %payload = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %payload, align 8
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %fmt, align 1
  %conv14 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %out_frame to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv14, ptr %out_frame, align 4
  %21 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %height, align 1
  %conv16 = trunc i32 %22 to i16
  %f_height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %f_height to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv16, ptr %f_height, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -16, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmt1) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_try_fmt_mplane(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call1 = tail call fastcc i32 @fimc_lite_try_fmt(ptr noundef %1, ptr noundef %fmt, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %reqbufs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reqbufs, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 2)
  %5 = ptrtoint ptr %reqbufs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %reqbufs, align 4
  %call2 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %file, ptr noundef %priv, ptr noundef %reqbufs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %reqbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqbufs, align 4
  %reqbufs_count = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %reqbufs_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_streamon(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #2 align 64 {
entry:
  %sink_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  %src_fmt.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  %slock.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #13
  %state.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %4 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #13
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pipe, align 8
  %call4 = tail call i32 @media_pipeline_start(ptr noundef %ve, ptr noundef %6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %subdev.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %sink_fmt.i) #13
  %7 = call ptr @memset(ptr %sink_fmt.i, i32 255, i32 88)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %src_fmt.i) #13
  %8 = call ptr @memset(ptr %src_fmt.i, i32 255, i32 88)
  %height100.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 1
  %code107.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2, i32 2
  %pad7.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 1
  %out_frame.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  %format.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2
  %f_height.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 1
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2, i32 1
  %fmt.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 3
  %code.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %sink_fmt.i, i32 0, i32 2, i32 2
  %pad52.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 1
  %format92.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %src_fmt.i, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false105.i.while.cond.i_crit_edge, %if.end6
  %sd.0.i = phi ptr [ %subdev.i, %if.end6 ], [ %38, %lor.lhs.false105.i.while.cond.i_crit_edge ]
  %pads.i = getelementptr inbounds %struct.media_entity, ptr %sd.0.i, i32 0, i32 9
  %9 = ptrtoint ptr %pads.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pads.i, align 4
  %flags.i = getelementptr inbounds %struct.media_pad, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end10_crit_edge, label %if.end.i

while.cond.i.if.end10_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end.i:                                         ; preds = %while.cond.i
  %cmp.i = icmp eq ptr %sd.0.i, %subdev.i
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %out_frame.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %out_frame.i, align 4
  %conv.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %format.i, align 4
  %16 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %f_height.i, align 2
  %conv3.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3.i, ptr %height.i, align 4
  %19 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %code.i, align 4
  br label %if.end39.i

if.else.i:                                        ; preds = %if.end.i
  %index.i = getelementptr inbounds %struct.media_pad, ptr %10, i32 0, i32 2
  %24 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %index.i, align 4
  %conv6.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %pad7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv6.i, ptr %pad7.i, align 4
  %27 = ptrtoint ptr %sink_fmt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %sink_fmt.i, align 4
  %tobool8.not.i = icmp eq ptr %sd.0.i, null
  br i1 %tobool8.not.i, label %if.else.i.if.end31.i_crit_edge, label %if.else10.i

if.else.i.if.end31.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.else10.i:                                      ; preds = %if.else.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0.i, i32 0, i32 6
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %pad11.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %pad11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pad11.i, align 4
  %tobool12.not.i = icmp eq ptr %31, null
  br i1 %tobool12.not.i, label %if.else10.i.if.end39.i_crit_edge, label %land.lhs.true.i

if.else10.i.if.end39.i_crit_edge:                 ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.else10.i
  %get_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %get_fmt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_fmt.i, align 4
  %tobool15.not.i = icmp eq ptr %33, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.end39.i_crit_edge, label %if.else17.i

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.else17.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool18.not.i = icmp eq ptr %34, null
  br i1 %tobool18.not.i, label %if.else17.i.if.else24.i_crit_edge, label %land.lhs.true19.i

if.else17.i.if.else24.i_crit_edge:                ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

land.lhs.true19.i:                                ; preds = %if.else17.i
  %get_fmt20.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %get_fmt20.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_fmt20.i, align 4
  %tobool21.not.i = icmp eq ptr %36, null
  br i1 %tobool21.not.i, label %land.lhs.true19.i.if.else24.i_crit_edge, label %land.lhs.true19.i.if.end31.sink.split.i_crit_edge

land.lhs.true19.i.if.end31.sink.split.i_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.sink.split.i

land.lhs.true19.i.if.else24.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else24.i

if.else24.i:                                      ; preds = %land.lhs.true19.i.if.else24.i_crit_edge, %if.else17.i.if.else24.i_crit_edge
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %if.else24.i, %land.lhs.true19.i.if.end31.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %33, %if.else24.i ], [ %36, %land.lhs.true19.i.if.end31.sink.split.i_crit_edge ]
  %call28.i = call i32 %.sink.i(ptr noundef nonnull %sd.0.i, ptr noundef null, ptr noundef nonnull %sink_fmt.i) #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %if.else.i.if.end31.i_crit_edge
  %__result.0.i = phi i32 [ -19, %if.else.i.if.end31.i_crit_edge ], [ %call28.i, %if.end31.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %__result.0.i)
  %cmp32.i = icmp sgt i32 %__result.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__result.0.i)
  %cmp35.not.i = icmp eq i32 %__result.0.i, -515
  %or.cond.i = or i1 %cmp32.i, %cmp35.not.i
  br i1 %or.cond.i, label %if.end31.i.if.end39.i_crit_edge, label %if.end31.i.fimc_pipeline_validate.exit.thread_crit_edge

if.end31.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_pipeline_validate.exit.thread

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end31.i.if.end39.i_crit_edge, %land.lhs.true.i.if.end39.i_crit_edge, %if.else10.i.if.end39.i_crit_edge, %if.then2.i
  %call40.i = call ptr @media_entity_remote_pad(ptr noundef %10) #13
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %if.end39.i.if.end10_crit_edge, label %lor.lhs.false.i

if.end39.i.if.end10_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.end39.i
  %entity42.i = getelementptr inbounds %struct.media_pad, ptr %call40.i, i32 0, i32 1
  %37 = ptrtoint ptr %entity42.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entity42.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.end10_crit_edge, label %is_media_entity_v4l2_subdev.exit.i

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

is_media_entity_v4l2_subdev.exit.i:               ; preds = %lor.lhs.false.i
  %obj_type.i.i = getelementptr inbounds %struct.media_entity, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %obj_type.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %obj_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 2
  br i1 %cmp.i.i, label %if.else58.i, label %is_media_entity_v4l2_subdev.exit.i.if.end10_crit_edge

is_media_entity_v4l2_subdev.exit.i.if.end10_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else58.i:                                      ; preds = %is_media_entity_v4l2_subdev.exit.i
  %index50.i = getelementptr inbounds %struct.media_pad, ptr %call40.i, i32 0, i32 2
  %41 = ptrtoint ptr %index50.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %index50.i, align 4
  %conv51.i = zext i16 %42 to i32
  %43 = ptrtoint ptr %pad52.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv51.i, ptr %pad52.i, align 4
  %44 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %src_fmt.i, align 4
  %ops59.i = getelementptr inbounds %struct.v4l2_subdev, ptr %38, i32 0, i32 6
  %45 = ptrtoint ptr %ops59.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops59.i, align 4
  %pad60.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %pad60.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pad60.i, align 4
  %tobool61.not.i = icmp eq ptr %48, null
  br i1 %tobool61.not.i, label %if.else58.i.if.end91.i_crit_edge, label %land.lhs.true62.i

if.else58.i.if.end91.i_crit_edge:                 ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

land.lhs.true62.i:                                ; preds = %if.else58.i
  %get_fmt65.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %get_fmt65.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %get_fmt65.i, align 4
  %tobool66.not.i = icmp eq ptr %50, null
  br i1 %tobool66.not.i, label %land.lhs.true62.i.if.end91.i_crit_edge, label %if.else68.i

land.lhs.true62.i.if.end91.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

if.else68.i:                                      ; preds = %land.lhs.true62.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool69.not.i = icmp eq ptr %51, null
  br i1 %tobool69.not.i, label %if.else68.i.if.else76.i_crit_edge, label %land.lhs.true70.i

if.else68.i.if.else76.i_crit_edge:                ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else76.i

land.lhs.true70.i:                                ; preds = %if.else68.i
  %get_fmt71.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %get_fmt71.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_fmt71.i, align 4
  %tobool72.not.i = icmp eq ptr %53, null
  br i1 %tobool72.not.i, label %land.lhs.true70.i.if.else76.i_crit_edge, label %land.lhs.true70.i.if.end83.i_crit_edge

land.lhs.true70.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83.i

land.lhs.true70.i.if.else76.i_crit_edge:          ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else76.i

if.else76.i:                                      ; preds = %land.lhs.true70.i.if.else76.i_crit_edge, %if.else68.i.if.else76.i_crit_edge
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.else76.i, %land.lhs.true70.i.if.end83.i_crit_edge
  %.sink160.i = phi ptr [ %50, %if.else76.i ], [ %53, %land.lhs.true70.i.if.end83.i_crit_edge ]
  %call80.i = call i32 %.sink160.i(ptr noundef nonnull %38, ptr noundef null, ptr noundef nonnull %src_fmt.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call80.i)
  %cmp85.i = icmp sgt i32 %call80.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call80.i)
  %cmp88.not.i = icmp eq i32 %call80.i, -515
  %or.cond151.i = or i1 %cmp85.i, %cmp88.not.i
  br i1 %or.cond151.i, label %if.end83.i.if.end91.i_crit_edge, label %if.end83.i.fimc_pipeline_validate.exit.thread_crit_edge

if.end83.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_pipeline_validate.exit.thread

if.end83.i.if.end91.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.end83.i.if.end91.i_crit_edge, %land.lhs.true62.i.if.end91.i_crit_edge, %if.else58.i.if.end91.i_crit_edge
  %54 = ptrtoint ptr %format92.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %format92.i, align 4
  %56 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp96.not.i = icmp eq i32 %55, %57
  br i1 %cmp96.not.i, label %lor.lhs.false98.i, label %if.end91.i.fimc_pipeline_validate.exit.thread_crit_edge

if.end91.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_pipeline_validate.exit.thread

lor.lhs.false98.i:                                ; preds = %if.end91.i
  %58 = ptrtoint ptr %height100.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height100.i, align 4
  %60 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp103.not.i = icmp eq i32 %59, %61
  br i1 %cmp103.not.i, label %lor.lhs.false105.i, label %lor.lhs.false98.i.fimc_pipeline_validate.exit.thread_crit_edge

lor.lhs.false98.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_pipeline_validate.exit.thread

lor.lhs.false105.i:                               ; preds = %lor.lhs.false98.i
  %62 = ptrtoint ptr %code107.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %code107.i, align 4
  %64 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %code.i, align 4
  %cmp110.not.i = icmp eq i32 %63, %65
  br i1 %cmp110.not.i, label %lor.lhs.false105.i.while.cond.i_crit_edge, label %lor.lhs.false105.i.fimc_pipeline_validate.exit.thread_crit_edge

lor.lhs.false105.i.fimc_pipeline_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_pipeline_validate.exit.thread

lor.lhs.false105.i.while.cond.i_crit_edge:        ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

fimc_pipeline_validate.exit.thread:               ; preds = %lor.lhs.false105.i.fimc_pipeline_validate.exit.thread_crit_edge, %lor.lhs.false98.i.fimc_pipeline_validate.exit.thread_crit_edge, %if.end91.i.fimc_pipeline_validate.exit.thread_crit_edge, %if.end83.i.fimc_pipeline_validate.exit.thread_crit_edge, %if.end31.i.fimc_pipeline_validate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sink_fmt.i) #13
  br label %err_p_stop

if.end10:                                         ; preds = %is_media_entity_v4l2_subdev.exit.i.if.end10_crit_edge, %lor.lhs.false.i.if.end10_crit_edge, %if.end39.i.if.end10_crit_edge, %while.cond.i.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %src_fmt.i) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %sink_fmt.i) #13
  %call12 = call ptr @fimc_find_remote_sensor(ptr noundef %subdev.i) #13
  %sensor = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 8
  %66 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call12, ptr %sensor, align 8
  %call13 = call i32 @vb2_ioctl_streamon(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then14, label %if.end10.err_p_stop_crit_edge

if.end10.err_p_stop_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_p_stop

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %streaming = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 30
  %67 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %streaming, align 8
  br label %cleanup

err_p_stop:                                       ; preds = %if.end10.err_p_stop_crit_edge, %fimc_pipeline_validate.exit.thread
  call void @media_pipeline_stop(ptr noundef %ve) #13
  br label %cleanup

cleanup:                                          ; preds = %err_p_stop, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %err_p_stop ], [ 0, %if.then14 ], [ -16, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_streamoff(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @vb2_ioctl_streamoff(ptr noundef %file, ptr noundef %priv, i32 noundef %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  tail call void @media_pipeline_stop(ptr noundef %ve) #13
  %streaming = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %streaming, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %out_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 258, label %if.end.sw.bb_crit_edge
    i32 257, label %if.end.sw.bb_crit_edge16
    i32 256, label %sw.bb5
  ]

if.end.sw.bb_crit_edge16:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge16
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %7 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %top, align 4
  %9 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %out_frame, align 4
  %conv = zext i16 %10 to i32
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %width, align 4
  %f_height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 1
  %12 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %f_height, align 2
  %conv3 = zext i16 %13 to i32
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv3, ptr %height, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %r6 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %rect = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 2
  %15 = call ptr @memcpy(ptr %r6, ptr %rect, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %rect.sroa.0.0.copyload = load i32, ptr %r, align 4
  %rect.sroa.11.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %rect.sroa.11.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %rect.sroa.11.0.copyload = load i32, ptr %rect.sroa.11.0.r.sroa_idx, align 4
  %rect.sroa.16.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %rect.sroa.20.0.r.sroa_idx = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %cmp1.not = icmp eq i32 %7, 256
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %out_frame.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  %width.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 2
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18, i32 2, i32 3
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %12 = ptrtoint ptr %out_frame.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %out_frame.i, align 4
  %conv.i = zext i16 %13 to i32
  %sub.i = sub i32 %conv.i, %9
  %14 = tail call i32 @llvm.umin.i32(i32 %rect.sroa.0.0.copyload, i32 %sub.i) #13
  %dd.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dd.i, align 4
  %out_hor_offs_align.i = getelementptr inbounds %struct.flite_drvdata, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %out_hor_offs_align.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %out_hor_offs_align.i, align 2
  %conv13.i = zext i16 %18 to i32
  %neg.i = sub nsw i32 0, %conv13.i
  %and.i = and i32 %14, %neg.i
  %f_height.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %f_height.i, align 2
  %conv24.i = zext i16 %20 to i32
  %sub26.i = sub i32 %conv24.i, %11
  %21 = tail call i32 @llvm.umin.i32(i32 %rect.sroa.11.0.copyload, i32 %sub26.i) #13
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp35.i = icmp sgt i32 %22, 0
  br i1 %cmp35.i, label %do.end.i, label %if.end.fimc_lite_try_compose.exit_crit_edge

if.end.fimc_lite_try_compose.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_try_compose.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 5, i32 9
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %and.i, i32 noundef %21, i32 noundef %9, i32 noundef %11, i32 noundef %conv.i, i32 noundef %conv24.i) #16
  br label %fimc_lite_try_compose.exit

fimc_lite_try_compose.exit:                       ; preds = %do.end.i, %if.end.fimc_lite_try_compose.exit_crit_edge
  %flags2 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 2
  %23 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags2, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %fimc_lite_try_compose.exit.if.end6_crit_edge, label %land.lhs.true

fimc_lite_try_compose.exit.if.end6_crit_edge:     ; preds = %fimc_lite_try_compose.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %fimc_lite_try_compose.exit
  %25 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %26)
  %cmp.i = icmp slt i32 %and.i, %26
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %27 = ptrtoint ptr %rect.sroa.11.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rect.sroa.11.0.r.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %28)
  %cmp3.i = icmp slt i32 %21, %28
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.i = add i32 %and.i, %9
  %29 = ptrtoint ptr %rect.sroa.16.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rect.sroa.16.0.r.sroa_idx, align 4
  %add7.i = add i32 %30, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add7.i)
  %cmp8.i = icmp ugt i32 %add.i, %add7.i
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %v4l2_rect_enclosed.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

v4l2_rect_enclosed.exit:                          ; preds = %if.end.i
  %add12.i = add i32 %21, %11
  %31 = ptrtoint ptr %rect.sroa.20.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rect.sroa.20.0.r.sroa_idx, align 4
  %add15.i = add i32 %32, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %add15.i)
  %cmp16.i.not = icmp ugt i32 %add12.i, %add15.i
  br i1 %cmp16.i.not, label %v4l2_rect_enclosed.exit.cleanup_crit_edge, label %v4l2_rect_enclosed.exit.if.end6_crit_edge

v4l2_rect_enclosed.exit.if.end6_crit_edge:        ; preds = %v4l2_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

v4l2_rect_enclosed.exit.cleanup_crit_edge:        ; preds = %v4l2_rect_enclosed.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %v4l2_rect_enclosed.exit.if.end6_crit_edge, %fimc_lite_try_compose.exit.if.end6_crit_edge
  %and8 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true10:                                  ; preds = %if.end6
  %33 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %and.i)
  %cmp.i42 = icmp slt i32 %34, %and.i
  br i1 %cmp.i42, label %land.lhs.true10.cleanup_crit_edge, label %lor.lhs.false.i46

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i46:                                ; preds = %land.lhs.true10
  %35 = ptrtoint ptr %rect.sroa.11.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rect.sroa.11.0.r.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %21)
  %cmp3.i45 = icmp slt i32 %36, %21
  br i1 %cmp3.i45, label %lor.lhs.false.i46.cleanup_crit_edge, label %if.end.i52

lor.lhs.false.i46.cleanup_crit_edge:              ; preds = %lor.lhs.false.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i52:                                       ; preds = %lor.lhs.false.i46
  %37 = ptrtoint ptr %rect.sroa.16.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rect.sroa.16.0.r.sroa_idx, align 4
  %add.i48 = add i32 %38, %34
  %add7.i50 = add i32 %and.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i48, i32 %add7.i50)
  %cmp8.i51 = icmp ugt i32 %add.i48, %add7.i50
  br i1 %cmp8.i51, label %if.end.i52.cleanup_crit_edge, label %v4l2_rect_enclosed.exit60

if.end.i52.cleanup_crit_edge:                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

v4l2_rect_enclosed.exit60:                        ; preds = %if.end.i52
  %39 = ptrtoint ptr %rect.sroa.20.0.r.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rect.sroa.20.0.r.sroa_idx, align 4
  %add12.i54 = add i32 %40, %36
  %add15.i56 = add i32 %21, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i54, i32 %add15.i56)
  %cmp16.i57.not = icmp ugt i32 %add12.i54, %add15.i56
  br i1 %cmp16.i57.not, label %v4l2_rect_enclosed.exit60.cleanup_crit_edge, label %v4l2_rect_enclosed.exit60.if.end14_crit_edge

v4l2_rect_enclosed.exit60.if.end14_crit_edge:     ; preds = %v4l2_rect_enclosed.exit60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

v4l2_rect_enclosed.exit60.cleanup_crit_edge:      ; preds = %v4l2_rect_enclosed.exit60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %v4l2_rect_enclosed.exit60.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %41 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and.i, ptr %r, align 4
  %42 = ptrtoint ptr %rect.sroa.11.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %21, ptr %rect.sroa.11.0.r.sroa_idx, align 4
  %43 = ptrtoint ptr %rect.sroa.16.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %9, ptr %rect.sroa.16.0.r.sroa_idx, align 4
  %44 = ptrtoint ptr %rect.sroa.20.0.r.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %11, ptr %rect.sroa.20.0.r.sroa_idx, align 4
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %rect22 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 2
  %45 = ptrtoint ptr %rect22 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and.i, ptr %rect22, align 4
  %rect.sroa.11.0.rect22.sroa_idx = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 2, i32 1
  %46 = ptrtoint ptr %rect.sroa.11.0.rect22.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %21, ptr %rect.sroa.11.0.rect22.sroa_idx, align 4
  %rect.sroa.16.0.rect22.sroa_idx = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 2, i32 2
  %47 = ptrtoint ptr %rect.sroa.16.0.rect22.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %9, ptr %rect.sroa.16.0.rect22.sroa_idx, align 4
  %rect.sroa.20.0.rect22.sroa_idx = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 2, i32 3
  %48 = ptrtoint ptr %rect.sroa.20.0.rect22.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %11, ptr %rect.sroa.20.0.rect22.sroa_idx, align 4
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 7, ptr noundef %state) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call19) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %v4l2_rect_enclosed.exit60.cleanup_crit_edge, %if.end.i52.cleanup_crit_edge, %lor.lhs.false.i46.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %v4l2_rect_enclosed.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -34, %v4l2_rect_enclosed.exit.cleanup_crit_edge ], [ -34, %v4l2_rect_enclosed.exit60.cleanup_crit_edge ], [ -34, %lor.lhs.false.i.cleanup_crit_edge ], [ -34, %land.lhs.true.cleanup_crit_edge ], [ -34, %if.end.i.cleanup_crit_edge ], [ -34, %lor.lhs.false.i46.cleanup_crit_edge ], [ -34, %land.lhs.true10.cleanup_crit_edge ], [ -34, %if.end.i52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_try_fmt(ptr nocapture noundef readonly %fimc, ptr noundef %pixm, ptr noundef writeonly %ffmt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %plane_fmt = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5
  %bytesperline = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 5, i32 0, i32 1
  %0 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %bytesperline, align 1
  %dd1 = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 1
  %2 = ptrtoint ptr %dd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd1, align 4
  %fmt = getelementptr inbounds %struct.fimc_lite, ptr %fimc, i32 0, i32 18, i32 3
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end23, !prof !178

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 702, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.fimc_fmt, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end63_crit_edge, label %if.end28

if.end23.if.end63_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end28:                                         ; preds = %if.end23
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 2
  %call = tail call fastcc ptr @fimc_lite_find_format(ptr noundef %pixelformat, ptr noundef null, i32 noundef %conv, i32 noundef 0)
  %cmp30 = icmp eq ptr %call, null
  br i1 %cmp30, label %do.end47, label %if.end28.if.end63_crit_edge, !prof !178

if.end28.if.end63_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.end47:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 715, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end63:                                         ; preds = %if.end28.if.end63_crit_edge, %if.end23.if.end63_crit_edge
  %fmt2.0148 = phi ptr [ %call, %if.end28.if.end63_crit_edge ], [ %5, %if.end23.if.end63_crit_edge ]
  %tobool64.not = icmp eq ptr %ffmt, null
  br i1 %tobool64.not, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %ffmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fmt2.0148, ptr %ffmt, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %conv67 = zext i16 %10 to i32
  %out_width_align = getelementptr inbounds %struct.flite_drvdata, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %out_width_align to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %out_width_align, align 2
  %13 = tail call i16 @llvm.cttz.i16(i16 %12, i1 true), !range !177
  %14 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %iszero = icmp eq i16 %12, 0
  %sub = select i1 %iszero, i32 -1, i32 %14
  %height = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 1
  %max_height = getelementptr inbounds %struct.flite_drvdata, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %max_height to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_height, align 2
  %conv69 = zext i16 %16 to i32
  tail call void @v4l_bound_align_image(ptr noundef %pixm, i32 noundef 8, i32 noundef %conv67, i32 noundef %sub, ptr noundef %height, i32 noundef 0, i32 noundef %conv69, i32 noundef 0, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp70 = icmp eq i32 %1, 0
  br i1 %cmp70, label %if.end66.if.then77_crit_edge, label %lor.lhs.false

if.end66.if.then77_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.end66
  %mul = shl i32 %1, 3
  %depth = getelementptr inbounds %struct.fimc_fmt, ptr %fmt2.0148, i32 0, i32 6
  %17 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %depth, align 1
  %conv73 = zext i8 %18 to i32
  %div = udiv i32 %mul, %conv73
  %19 = ptrtoint ptr %pixm to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %pixm, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %20)
  %cmp75 = icmp ult i32 %div, %20
  br i1 %cmp75, label %lor.lhs.false.if.then77_crit_edge, label %lor.lhs.false.if.end87_crit_edge

lor.lhs.false.if.end87_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end66.if.then77_crit_edge
  %21 = ptrtoint ptr %pixm to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %pixm, align 1
  %depth79 = getelementptr inbounds %struct.fimc_fmt, ptr %fmt2.0148, i32 0, i32 6
  %23 = ptrtoint ptr %depth79 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %depth79, align 1
  %conv81 = zext i8 %24 to i32
  %mul82 = mul i32 %22, %conv81
  %div83145 = lshr i32 %mul82, 3
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %div83145, ptr %bytesperline, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.then77, %lor.lhs.false.if.end87_crit_edge
  %26 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %plane_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp90 = icmp eq i32 %27, 0
  br i1 %cmp90, label %if.then92, label %if.end87.if.end104_crit_edge

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %pixm to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %pixm, align 1
  %30 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %height, align 1
  %mul95 = mul i32 %31, %29
  %depth96 = getelementptr inbounds %struct.fimc_fmt, ptr %fmt2.0148, i32 0, i32 6
  %32 = ptrtoint ptr %depth96 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %depth96, align 1
  %conv98 = zext i8 %33 to i32
  %mul99 = mul i32 %mul95, %conv98
  %div100144 = lshr i32 %mul99, 3
  %34 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %div100144, ptr %plane_fmt, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.then92, %if.end87.if.end104_crit_edge
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %fmt2.0148, i32 0, i32 3
  %35 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %memplanes, align 4
  %conv105 = trunc i16 %36 to i8
  %num_planes = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 6
  %37 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv105, ptr %num_planes, align 1
  %fourcc = getelementptr inbounds %struct.fimc_fmt, ptr %fmt2.0148, i32 0, i32 1
  %38 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fourcc, align 4
  %pixelformat106 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 2
  %40 = ptrtoint ptr %pixelformat106 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %pixelformat106, align 1
  %colorspace = getelementptr inbounds %struct.fimc_fmt, ptr %fmt2.0148, i32 0, i32 5
  %41 = ptrtoint ptr %colorspace to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %colorspace, align 4
  %conv107 = zext i8 %42 to i32
  %colorspace108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 4
  %43 = ptrtoint ptr %colorspace108 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %conv107, ptr %colorspace108, align 1
  %field = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pixm, i32 0, i32 3
  %44 = ptrtoint ptr %field to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 1, ptr %field, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %do.end47, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end47 ], [ 0, %if.end104 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %out_frame = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  %fmt1 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 3
  %2 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt1, align 4
  %4 = ptrtoint ptr %out_frame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_frame, align 4
  %conv = zext i16 %5 to i32
  %f_height = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %f_height, align 2
  %conv2 = zext i16 %7 to i32
  %mul = mul nuw i32 %conv2, %conv
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %memplanes20 = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %memplanes20 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %memplanes20, align 4
  %conv21 = zext i16 %11 to i32
  br i1 %tobool.not, label %if.end19, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv21)
  %cmp6.not = icmp eq i32 %9, %conv21
  br i1 %cmp6.not, label %if.then4.for.body_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then4.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then4.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.065
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr %struct.fimc_fmt, ptr %3, i32 0, i32 6, i32 %i.065
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %mul14 = mul i32 %mul, %conv13
  %div62 = lshr i32 %mul14, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div62)
  %cmp15 = icmp ult i32 %13, %div62
  br i1 %cmp15, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %16 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv21, ptr %num_planes, align 4
  %17 = ptrtoint ptr %memplanes20 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %memplanes20, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp2568.not = icmp eq i16 %18, 0
  br i1 %cmp2568.not, label %if.end19.cleanup_crit_edge, label %if.end19.for.body27_crit_edge

if.end19.for.body27_crit_edge:                    ; preds = %if.end19
  br label %for.body27

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %if.end19.for.body27_crit_edge
  %i.169 = phi i32 [ %inc35, %for.body27.for.body27_crit_edge ], [ 0, %if.end19.for.body27_crit_edge ]
  %arrayidx29 = getelementptr %struct.fimc_fmt, ptr %3, i32 0, i32 6, i32 %i.169
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %20 to i32
  %mul31 = mul i32 %mul, %conv30
  %div3261 = lshr i32 %mul31, 3
  %arrayidx33 = getelementptr i32, ptr %sizes, i32 %i.169
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div3261, ptr %arrayidx33, align 4
  %inc35 = add nuw nsw i32 %i.169, 1
  %22 = ptrtoint ptr %memplanes20 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %memplanes20, align 4
  %conv24 = zext i16 %23 to i32
  %cmp25 = icmp ult i32 %inc35, %conv24
  br i1 %cmp25, label %for.body27.for.body27_crit_edge, label %for.body27.cleanup_crit_edge

for.body27.cleanup_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

cleanup:                                          ; preds = %for.body27.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %for.body27.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %fmt = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 19, i32 3
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fmt, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup11_crit_edge, label %for.cond.preheader

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup11

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %memplanes44 = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %memplanes44 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %memplanes44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp346.not = icmp eq i16 %9, 0
  br i1 %cmp346.not, label %for.cond.preheader.cleanup11_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup11_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  br label %for.body

for.body:                                         ; preds = %vb2_set_plane_payload.exit.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vb2_set_plane_payload.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fimc_lite, ptr %3, i32 0, i32 17, i32 %i.047
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.047)
  %cmp.i = icmp ugt i32 %11, %i.047
  br i1 %cmp.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %for.body
  %length.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.047, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp5 = icmp ult i32 %15, %13
  br i1 %cmp5, label %vb2_plane_size.exit.vb2_plane_size.exit32_crit_edge, label %if.end42.i

vb2_plane_size.exit.vb2_plane_size.exit32_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %vb2_plane_size.exit32

vb2_plane_size.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp538.not = icmp eq i32 %13, 0
  br i1 %cmp538.not, label %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.thread.vb2_plane_size.exit32_crit_edge

vb2_plane_size.exit.thread.vb2_plane_size.exit32_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %vb2_plane_size.exit32

vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit32:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit32_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit32_crit_edge
  %retval.0.i31 = phi i32 [ %15, %vb2_plane_size.exit.vb2_plane_size.exit32_crit_edge ], [ 0, %vb2_plane_size.exit.thread.vb2_plane_size.exit32_crit_edge ]
  %name40 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name40, i32 noundef %retval.0.i31, i32 noundef %13) #16
  br label %cleanup11

if.end42.i:                                       ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 %i.047, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.thread.vb2_set_plane_payload.exit_crit_edge
  %inc = add nuw nsw i32 %i.047, 1
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt, align 4
  %memplanes = getelementptr inbounds %struct.fimc_fmt, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %memplanes to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %memplanes, align 4
  %conv = zext i16 %20 to i32
  %cmp3 = icmp ult i32 %inc, %conv
  br i1 %cmp3, label %vb2_set_plane_payload.exit.for.body_crit_edge, label %vb2_set_plane_payload.exit.cleanup11_crit_edge

vb2_set_plane_payload.exit.cleanup11_crit_edge:   ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup11

vb2_set_plane_payload.exit.for.body_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup11:                                        ; preds = %vb2_set_plane_payload.exit.cleanup11_crit_edge, %vb2_plane_size.exit32, %for.cond.preheader.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup11_crit_edge ], [ -22, %vb2_plane_size.exit32 ], [ 0, %for.cond.preheader.cleanup11_crit_edge ], [ 0, %vb2_set_plane_payload.exit.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %buf_index = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %buf_index to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %buf_index, align 8
  %frame_count = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %frame_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %frame_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #13
  %call6 = tail call fastcc i32 @fimc_lite_hw_init(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call fastcc i32 @fimc_lite_reinit(ptr noundef %1, i1 noundef zeroext false)
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #13
  %active_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i.not = icmp eq ptr %5, %active_buf_q
  br i1 %cmp.i.not, label %if.end.if.end41_crit_edge, label %land.lhs.true

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then13:                                        ; preds = %land.lhs.true
  tail call void @flite_hw_capture_start(ptr noundef %1) #13
  %call15 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp ne i32 %call15, 0
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  %tobool18.not = icmp eq ptr %ve, null
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.then13.if.end41_crit_edge, label %lor.lhs.false

if.then13.if.end41_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

lor.lhs.false:                                    ; preds = %if.then13
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe, align 8
  %tobool20.not = icmp eq ptr %7, null
  br i1 %tobool20.not, label %lor.lhs.false.if.end41_crit_edge, label %cond.false

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tobool23.not = icmp eq ptr %9, null
  br i1 %tobool23.not, label %cond.false.if.end41_crit_edge, label %land.lhs.true24

cond.false.if.end41_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true24:                                  ; preds = %cond.false
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_stream, align 4
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %land.lhs.true24.if.end41_crit_edge, label %cond.true29

land.lhs.true24.if.end41_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

cond.true29:                                      ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call i32 %11(ptr noundef nonnull %7, i1 noundef zeroext true) #13
  br label %if.end41

if.end41:                                         ; preds = %cond.true29, %land.lhs.true24.if.end41_crit_edge, %cond.false.if.end41_crit_edge, %lor.lhs.false.if.end41_crit_edge, %if.then13.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp42 = icmp sgt i32 %12, 0
  br i1 %cmp42, label %if.then44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @flite_hw_dump_regs(ptr noundef %1, ptr noundef nonnull @__func__.start_streaming) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end41.cleanup_crit_edge, %if.then
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %slock.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #13
  %state.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %4 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #13
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call fastcc i32 @fimc_lite_stop_capture(ptr noundef %1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #13
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  %addr = getelementptr inbounds %struct.flite_buffer, ptr %vb, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr, align 8
  %buf_index = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %buf_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buf_index, align 8
  %inc = add i16 %8, 1
  store i16 %inc, ptr %buf_index, align 8
  %index = getelementptr inbounds %struct.flite_buffer, ptr %vb, i32 0, i32 3
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %index, align 4
  %10 = load i16, ptr %buf_index, align 8
  %conv12 = zext i16 %10 to i32
  %reqbufs_count = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 28
  %11 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reqbufs_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv12)
  %cmp13.not = icmp ugt i32 %12, %conv12
  br i1 %cmp13.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %buf_index to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %buf_index, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true20:                                  ; preds = %land.lhs.true
  %active_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 24
  %20 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %active_buf_q, align 4
  %cmp.i.not = icmp eq ptr %21, %active_buf_q
  br i1 %cmp.i.not, label %if.then23, label %land.lhs.true20.if.else_crit_edge

land.lhs.true20.if.else_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true20
  tail call void @flite_hw_set_dma_buffer(ptr noundef %3, ptr noundef %vb) #13
  %list.i = getelementptr inbounds %struct.flite_buffer, ptr %vb, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 24, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %23, ptr noundef %active_buf_q) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.if.end24_crit_edge

if.then23.if.end24_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end.i.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %active_buf_q, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.flite_buffer, ptr %vb, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %23, align 4
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true20.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %list.i102 = getelementptr inbounds %struct.flite_buffer, ptr %vb, i32 0, i32 1
  %pending_buf_q.i = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 23
  %prev.i.i103 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 23, i32 1
  %28 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i103, align 4
  %call.i.i.i104 = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i102, ptr noundef %29, ptr noundef %pending_buf_q.i) #13
  br i1 %call.i.i.i104, label %if.end.i.i.i106, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.end.i.i.i106:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.i102, ptr %prev.i.i103, align 4
  %31 = ptrtoint ptr %list.i102 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pending_buf_q.i, ptr %list.i102, align 4
  %prev3.i.i.i105 = getelementptr inbounds %struct.flite_buffer, ptr %vb, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i105, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list.i102, ptr %29, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end.i.i.i106, %if.else.if.end24_crit_edge, %if.end.i.i.i, %if.then23.if.end24_crit_edge
  %streaming.i = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 28
  %34 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true27, label %if.end24.if.end63_crit_edge

if.end24.if.end63_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

land.lhs.true27:                                  ; preds = %if.end24
  %pending_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 23
  %35 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i107.not = icmp eq ptr %36, %pending_buf_q
  br i1 %cmp.i107.not, label %land.lhs.true27.if.end63_crit_edge, label %land.lhs.true30

land.lhs.true27.if.end63_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %call32 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true30.if.end63_crit_edge

land.lhs.true30.if.end63_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then34:                                        ; preds = %land.lhs.true30
  tail call void @flite_hw_capture_start(ptr noundef %3) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call7) #13
  %call37 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp ne i32 %call37, 0
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2
  %tobool40.not = icmp eq ptr %ve, null
  %or.cond = select i1 %tobool38.not, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %if.then34.cleanup_crit_edge, label %lor.lhs.false

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then34
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pipe, align 8
  %tobool42.not = icmp eq ptr %38, null
  br i1 %tobool42.not, label %lor.lhs.false.cleanup_crit_edge, label %cond.false

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %tobool45.not = icmp eq ptr %40, null
  br i1 %tobool45.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true46

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true46:                                  ; preds = %cond.false
  %set_stream = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %set_stream to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_stream, align 4
  %tobool50.not = icmp eq ptr %42, null
  br i1 %tobool50.not, label %land.lhs.true46.cleanup_crit_edge, label %cond.true51

land.lhs.true46.cleanup_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.true51:                                      ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  %call58 = tail call i32 %42(ptr noundef nonnull %38, i1 noundef zeroext true) #13
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true30.if.end63_crit_edge, %land.lhs.true27.if.end63_crit_edge, %if.end24.if.end63_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call7) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %cond.true51, %land.lhs.true46.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then34.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_link_setup(ptr noundef %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %do.body25, !prof !178

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 959, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

do.body25:                                        ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp26 = icmp sgt i32 %2, 0
  br i1 %cmp26, label %do.end30, label %do.body25.do.end39_crit_edge

do.body25.do.end39_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 9
  %entity32 = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %3 = ptrtoint ptr %entity32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entity32, align 4
  %name33 = getelementptr inbounds %struct.media_entity, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name33, align 4
  %entity34 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %7 = ptrtoint ptr %entity34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entity34, align 4
  %name35 = getelementptr inbounds %struct.media_entity, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name35, align 4
  %source_subdev_grp_id = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %source_subdev_grp_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %source_subdev_grp_id, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef nonnull @.str.46, ptr noundef %6, ptr noundef %10, i32 noundef %flags, i32 noundef %12) #16
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %do.body25.do.end39_crit_edge
  %index = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %index, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %14, label %do.end68 [
    i16 0, label %sw.bb
    i16 1, label %sw.bb51
    i16 2, label %sw.bb58
  ]

sw.bb:                                            ; preds = %do.end39
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  %source_subdev_grp_id49 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 21
  br i1 %tobool40.not, label %if.else48, label %if.then41

if.then41:                                        ; preds = %sw.bb
  %16 = ptrtoint ptr %source_subdev_grp_id49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %source_subdev_grp_id49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp43 = icmp eq i32 %17, 0
  br i1 %cmp43, label %if.then45, label %if.then41.do.body73_crit_edge

if.then41.do.body73_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body73

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 10
  %18 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %grp_id, align 4
  %20 = ptrtoint ptr %source_subdev_grp_id49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %source_subdev_grp_id49, align 8
  br label %do.body73

if.else48:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %source_subdev_grp_id49 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %source_subdev_grp_id49, align 8
  %sensor = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sensor, align 8
  br label %do.body73

sw.bb51:                                          ; preds = %do.end39
  %and52 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %out_path, i32 noundef 4) #13
  br i1 %tobool53.not, label %if.then54, label %if.else55

if.then54:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %out_path to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %out_path, align 4
  br label %do.body73

if.else55:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %out_path to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 2, ptr %out_path, align 4
  br label %do.body73

sw.bb58:                                          ; preds = %do.end39
  %and59 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %out_path62 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %out_path62, i32 noundef 4) #13
  br i1 %tobool60.not, label %if.then61, label %if.else63

if.then61:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %out_path62 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %out_path62, align 4
  br label %do.body73

if.else63:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %out_path62 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 5, ptr %out_path62, align 4
  br label %do.body73

do.end68:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #15
  %name70 = getelementptr inbounds %struct.v4l2_subdev, ptr %entity, i32 0, i32 9
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name70) #16
  br label %do.body73

do.body73:                                        ; preds = %do.end68, %if.else63, %if.then61, %if.else55, %if.then54, %if.else48, %if.then45, %if.then41.do.body73_crit_edge
  %ret.0 = phi i32 [ -22, %do.end68 ], [ 0, %if.else63 ], [ 0, %if.then61 ], [ 0, %if.else55 ], [ 0, %if.then54 ], [ 0, %if.then45 ], [ 0, %if.else48 ], [ -16, %if.then41.do.body73_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  tail call void @arm_heavy_mb() #13
  br label %cleanup

cleanup:                                          ; preds = %do.body73, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %call6 = tail call fastcc i32 @fimc_lite_stop_capture(ptr noundef %1, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %slock.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #13
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %.not = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call2.i) #13
  br i1 %.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  %tobool10.not = icmp eq ptr %ve, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end9
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe, align 8
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %lor.lhs.false11.cleanup_crit_edge, label %cond.false

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false11
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %close = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %close, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %land.lhs.true.cleanup_crit_edge, label %cond.true21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.true21:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 %13(ptr noundef nonnull %9) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.true21, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %lor.lhs.false.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ -2, %lor.lhs.false11.cleanup_crit_edge ], [ -2, %if.end9.cleanup_crit_edge ], [ %call28, %cond.true21 ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #13
  %state = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @flite_hw_reset(ptr noundef %1) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #13
  %call13 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %active_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %active_buf_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %active_buf_q, ptr %active_buf_q, align 4
  %prev.i = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %active_buf_q, ptr %prev.i, align 4
  %ve = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2
  %tobool17.not = icmp eq ptr %ve, null
  br i1 %tobool17.not, label %if.end16.cond.end38_crit_edge, label %lor.lhs.false18

if.end16.cond.end38_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end38

lor.lhs.false18:                                  ; preds = %if.end16
  %pipe = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe, align 8
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %lor.lhs.false18.cond.end38_crit_edge, label %cond.false

lor.lhs.false18.cond.end38_crit_edge:             ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end38

cond.false:                                       ; preds = %lor.lhs.false18
  %ops = getelementptr inbounds %struct.exynos_media_pipeline, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tobool23.not = icmp eq ptr %10, null
  br i1 %tobool23.not, label %cond.false.cond.end38_crit_edge, label %land.lhs.true

cond.false.cond.end38_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end38

land.lhs.true:                                    ; preds = %cond.false
  %open = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %open, align 4
  %tobool27.not = icmp eq ptr %12, null
  br i1 %tobool27.not, label %land.lhs.true.cond.end38_crit_edge, label %cond.true28

land.lhs.true.cond.end38_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end38

cond.true28:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call i32 %12(ptr noundef nonnull %8, ptr noundef nonnull %ve, i1 noundef zeroext false) #13
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true28, %land.lhs.true.cond.end38_crit_edge, %cond.false.cond.end38_crit_edge, %lor.lhs.false18.cond.end38_crit_edge, %if.end16.cond.end38_crit_edge
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #13
  %13 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp41 = icmp eq i32 %14, 5
  %call43 = tail call fastcc i32 @fimc_lite_hw_init(ptr noundef %1, i1 noundef zeroext %cmp41)
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %state) #13
  %pending_buf_q = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 23
  %reqbufs_count = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reqbufs_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4579.not = icmp eq i32 %16, 0
  br i1 %cmp4579.not, label %cond.end38.cleanup_crit_edge, label %cond.end38.for.body_crit_edge

cond.end38.for.body_crit_edge:                    ; preds = %cond.end38
  br label %for.body

cond.end38.cleanup_crit_edge:                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %fimc_lite_pending_queue_pop.exit.for.body_crit_edge, %cond.end38.for.body_crit_edge
  %i.080 = phi i32 [ %inc, %fimc_lite_pending_queue_pop.exit.for.body_crit_edge ], [ 0, %cond.end38.for.body_crit_edge ]
  %17 = ptrtoint ptr %pending_buf_q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %pending_buf_q, align 4
  %cmp.i.not = icmp eq ptr %18, %pending_buf_q
  br i1 %cmp.i.not, label %for.body.cleanup_crit_edge, label %if.end50

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end50.fimc_lite_pending_queue_pop.exit_crit_edge

if.end50.fimc_lite_pending_queue_pop.exit_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %fimc_lite_pending_queue_pop.exit

if.end.i.i.i:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %fimc_lite_pending_queue_pop.exit

fimc_lite_pending_queue_pop.exit:                 ; preds = %if.end.i.i.i, %if.end50.fimc_lite_pending_queue_pop.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %18, i32 -736
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @buffer_queue(ptr noundef %add.ptr.i)
  %inc = add nuw i32 %i.080, 1
  %27 = ptrtoint ptr %reqbufs_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reqbufs_count, align 8
  %cmp45 = icmp ult i32 %inc, %28
  br i1 %cmp45, label %fimc_lite_pending_queue_pop.exit.for.body_crit_edge, label %fimc_lite_pending_queue_pop.exit.cleanup_crit_edge

fimc_lite_pending_queue_pop.exit.cleanup_crit_edge: ; preds = %fimc_lite_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fimc_lite_pending_queue_pop.exit.for.body_crit_edge: ; preds = %fimc_lite_pending_queue_pop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %fimc_lite_pending_queue_pop.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %cond.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %3) #13
  tail call void @clk_unprepare(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_lite_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %3) #13
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !120, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !156, !158, !160, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype311, !1, !"__UNIQUE_ID_debugtype311", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_exynos_fimc_lite__333_1672_fimc_lite_driver_init6, !4, !"__initcall__kmod_exynos_fimc_lite__333_1672_fimc_lite_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1672, i32 1}
!5 = !{ptr @__exitcall_fimc_lite_driver_exit, !4, !"__exitcall_fimc_lite_driver_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_file334, !7, !"__UNIQUE_ID_file334", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1673, i32 1}
!8 = !{ptr @__UNIQUE_ID_license335, !7, !"__UNIQUE_ID_license335", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias336, !10, !"__UNIQUE_ID_alias336", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1674, i32 1}
!11 = !{ptr @debug, !12, !"debug", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 38, i32 12}
!13 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1668, i32 12}
!16 = !{ptr @fimc_lite_driver, !17, !"fimc_lite_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1663, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1468, i32 46}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1472, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fimc_lite_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @fimc_lite_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @fimc_lite_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1479, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fimc_lite_probe.__key.8, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1480, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fimc_lite_probe.__key.10, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1481, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1490, i32 3}
!39 = !{ptr @fimc_lite_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @fimc_lite_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1501, i32 3}
!43 = !{ptr @fimc_lite_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @fimc_lite_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1523, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fimc_lite_probe.__UNIQUE_ID_ddebug332, !46, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1443, i32 42}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1394, i32 39}
!53 = !{ptr @fimc_lite_create_capture_subdev._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1404, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @fimc_lite_subdev_ops, !57, !"fimc_lite_subdev_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1343, i32 37}
!58 = !{ptr @fimc_lite_core_ops, !59, !"fimc_lite_core_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1339, i32 42}
!60 = !{ptr @__func__.fimc_lite_log_status, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1240, i32 27}
!62 = !{ptr @fimc_lite_subdev_video_ops, !63, !"fimc_lite_subdev_video_ops", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1335, i32 43}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1228, i32 4}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @fimc_lite_subdev_s_stream._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @fimc_lite_subdev_s_stream._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__func__.fimc_lite_hw_init, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 160, i32 28}
!71 = !{ptr @fimc_lite_subdev_pad_ops, !72, !"fimc_lite_subdev_pad_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1327, i32 41}
!73 = !{ptr @fimc_lite_formats, !74, !"fimc_lite_formats", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 41, i32 30}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1070, i32 2}
!79 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @fimc_lite_subdev_set_fmt._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @fimc_lite_subdev_set_fmt._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 600, i32 2}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @fimc_lite_subdev_try_fmt._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @fimc_lite_subdev_try_fmt._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1149, i32 2}
!89 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @fimc_lite_subdev_get_selection._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @fimc_lite_subdev_get_selection._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1183, i32 2}
!94 = !{ptr @fimc_lite_subdev_set_selection._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @fimc_lite_subdev_set_selection._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 618, i32 2}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @fimc_lite_try_crop._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @fimc_lite_try_crop._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1365, i32 10}
!103 = !{ptr @fimc_lite_ctrl, !104, !"fimc_lite_ctrl", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1361, i32 38}
!105 = !{ptr @fimc_lite_ctrl_ops, !106, !"fimc_lite_ctrl_ops", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1357, i32 35}
!107 = !{ptr @fimc_lite_subdev_internal_ops, !108, !"fimc_lite_subdev_internal_ops", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1322, i32 46}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1254, i32 41}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1299, i32 2}
!113 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @fimc_lite_subdev_registered._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @fimc_lite_subdev_registered._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @fimc_lite_fops, !117, !"fimc_lite_fops", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 539, i32 42}
!118 = !{ptr @fimc_lite_ioctl_ops, !119, !"fimc_lite_ioctl_ops", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 932, i32 36}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 653, i32 49}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 638, i32 2}
!124 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @fimc_lite_try_compose._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @fimc_lite_try_compose._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @fimc_lite_qops, !128, !"fimc_lite_qops", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 440, i32 29}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 392, i32 4}
!131 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @buffer_prepare._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @buffer_prepare._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!136 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @__func__.start_streaming, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 334, i32 28}
!139 = !{ptr @fimc_lite_subdev_media_ops, !140, !"fimc_lite_subdev_media_ops", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1002, i32 45}
!141 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 962, i32 2}
!143 = !{ptr @.str.46, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @fimc_lite_link_setup._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @fimc_lite_link_setup._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 994, i32 3}
!148 = !{ptr @fimc_lite_link_setup._entry.47, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @fimc_lite_link_setup._entry_ptr.49, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1618, i32 2}
!152 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @fimc_lite_remove._entry, !151, !"_entry", i1 false, i1 false}
!155 = !{ptr @fimc_lite_remove._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @flite_of_match, !157, !"flite_of_match", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1650, i32 34}
!158 = !{ptr @fimc_lite_drvdata_exynos4, !159, !"fimc_lite_drvdata_exynos4", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1629, i32 29}
!160 = !{ptr @fimc_lite_drvdata_exynos5, !161, !"fimc_lite_drvdata_exynos5", i1 false, i1 false}
!161 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1640, i32 29}
!162 = !{ptr @fimc_lite_pm_ops, !163, !"fimc_lite_pm_ops", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/exynos4-is/fimc-lite.c", i32 1622, i32 32}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i64 2148189248, i64 2148189253, i64 2148189266, i64 2148189310, i64 2148189344, i64 2148189365}
!174 = !{i64 2156681709}
!175 = !{i64 4932665}
!176 = !{!"branch_weights", i32 2000, i32 1}
!177 = !{i16 0, i16 17}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{i64 2148399342}
!180 = !{i64 885942, i64 885967, i64 885989, i64 886005, i64 886017, i64 886037, i64 886061, i64 886077, i64 886089}
!181 = !{i64 2148399530}
!182 = !{i8 0, i8 2}
!183 = !{i64 2156772541}
