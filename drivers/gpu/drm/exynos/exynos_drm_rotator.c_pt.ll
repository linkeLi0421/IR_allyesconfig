; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_rotator.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_rotator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.exynos_drm_ipp_funcs = type { ptr, ptr }
%struct.rot_variant = type { ptr, i32 }
%struct.exynos_drm_ipp_formats = type { i32, i32, i64, ptr, i32 }
%struct.drm_exynos_ipp_limit = type { i32, i32, %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val }
%struct.drm_exynos_ipp_limit_val = type { i32, i32, i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rot_context = type { %struct.exynos_drm_ipp, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.exynos_drm_ipp = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.exynos_drm_ipp_task = type { ptr, ptr, %struct.list_head, %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer, %struct.drm_exynos_ipp_task_transform, %struct.drm_exynos_ipp_task_alpha, %struct.work_struct, i32, i32, ptr }
%struct.exynos_drm_ipp_buffer = type { %struct.drm_exynos_ipp_task_buffer, %struct.drm_exynos_ipp_task_rect, [4 x ptr], ptr, [4 x i32] }
%struct.drm_exynos_ipp_task_buffer = type { i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], i64 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_exynos_ipp_task_transform = type { i32, i32 }
%struct.drm_exynos_ipp_task_alpha = type { i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos-rotator\00", [17 x i8] zeroinitializer }, align 32
@exynos_rotator_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-rotator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rotator_s5pv210_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-rotator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rotator_4210_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-rotator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rotator_4412_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-rotator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rotator_5250_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@rotator_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotator_runtime_suspend, ptr @rotator_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rotator_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rotator_probe, ptr @rotator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_rotator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rotator_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@rotator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rotator_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/exynos/exynos_drm_rotator.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rotator_probe._entry_ptr = internal global ptr @rotator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rotator\00", [24 x i8] zeroinitializer }, align 32
@rotator_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@rotator_probe._entry_ptr.9 = internal global ptr @rotator_probe._entry.7, section ".printk_index", align 4
@rotator_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @rotator_bind, ptr @rotator_unbind }, [24 x i8] zeroinitializer }, align 32
@ipp_funcs = internal constant { %struct.exynos_drm_ipp_funcs, [24 x i8] } { %struct.exynos_drm_ipp_funcs { ptr @rotator_commit, ptr null }, [24 x i8] zeroinitializer }, align 32
@rotator_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 258, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"The exynos rotator has been probed successfully\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rotator_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rotator_bind._entry_ptr = internal global ptr @rotator_bind._entry, section ".printk_index", align 4
@rotator_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 226, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable ROTATOR device.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rotator_commit\00", [17 x i8] zeroinitializer }, align 32
@rotator_commit._entry_ptr = internal global ptr @rotator_commit._entry, section ".printk_index", align 4
@rotator_s5pv210_data = internal constant { %struct.rot_variant, [24 x i8] } { %struct.rot_variant { ptr @rotator_s5pv210_formats, i32 2 }, [24 x i8] zeroinitializer }, align 32
@rotator_4210_data = internal constant { %struct.rot_variant, [24 x i8] } { %struct.rot_variant { ptr @rotator_4210_formats, i32 2 }, [24 x i8] zeroinitializer }, align 32
@rotator_4412_data = internal constant { %struct.rot_variant, [24 x i8] } { %struct.rot_variant { ptr @rotator_4412_formats, i32 2 }, [24 x i8] zeroinitializer }, align 32
@rotator_5250_data = internal constant { %struct.rot_variant, [24 x i8] } { %struct.rot_variant { ptr @rotator_5250_formats, i32 2 }, [24 x i8] zeroinitializer }, align 32
@rotator_s5pv210_formats = internal constant { [2 x %struct.exynos_drm_ipp_formats], [48 x i8] } { [2 x %struct.exynos_drm_ipp_formats] [%struct.exynos_drm_ipp_formats { i32 875713112, i32 3, i64 0, ptr @rotator_s5pv210_rbg888_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 842094158, i32 3, i64 0, ptr @rotator_s5pv210_yuv_limits, i32 2 }], [48 x i8] zeroinitializer }, align 32
@rotator_s5pv210_rbg888_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 8, i32 16384, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 16384, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 2, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@rotator_s5pv210_yuv_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 65536, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 32, i32 65536, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 8, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 8, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@rotator_4210_formats = internal constant { [2 x %struct.exynos_drm_ipp_formats], [48 x i8] } { [2 x %struct.exynos_drm_ipp_formats] [%struct.exynos_drm_ipp_formats { i32 875713112, i32 3, i64 0, ptr @rotator_4210_rbg888_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 842094158, i32 3, i64 0, ptr @rotator_4210_yuv_limits, i32 2 }], [48 x i8] zeroinitializer }, align 32
@rotator_4210_rbg888_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 8, i32 16384, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 16384, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 4, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 4, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@rotator_4210_yuv_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 65536, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 32, i32 65536, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 8, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 8, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@rotator_4412_formats = internal constant { [2 x %struct.exynos_drm_ipp_formats], [48 x i8] } { [2 x %struct.exynos_drm_ipp_formats] [%struct.exynos_drm_ipp_formats { i32 875713112, i32 3, i64 0, ptr @rotator_4412_rbg888_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 842094158, i32 3, i64 0, ptr @rotator_4412_yuv_limits, i32 2 }], [48 x i8] zeroinitializer }, align 32
@rotator_4412_rbg888_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 8, i32 8192, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 8192, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 4, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 4, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@rotator_4412_yuv_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 32768, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 32, i32 32768, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 8, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 8, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@rotator_5250_formats = internal constant { [2 x %struct.exynos_drm_ipp_formats], [48 x i8] } { [2 x %struct.exynos_drm_ipp_formats] [%struct.exynos_drm_ipp_formats { i32 875713112, i32 3, i64 0, ptr @rotator_5250_rbg888_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 842094158, i32 3, i64 0, ptr @rotator_4412_yuv_limits, i32 2 }], [48 x i8] zeroinitializer }, align 32
@rotator_5250_rbg888_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 8, i32 8192, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 8192, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 2, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 875713112]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 464, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"exynos_rotator_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 435, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"rotator_pm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 453, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"rotator_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 460, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 305, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 309, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 311, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"rotator_component_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 273, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"ipp_funcs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 240, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 258, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 226, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"rotator_s5pv210_data\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 415, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"rotator_4210_data\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 420, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"rotator_4412_data\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 425, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"rotator_5250_data\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 430, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"rotator_s5pv210_formats\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 395, i32 44 }
@___asan_gen_.96 = private unnamed_addr constant [30 x i8] c"rotator_s5pv210_rbg888_limits\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 360, i32 42 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"rotator_s5pv210_yuv_limits\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 380, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"rotator_4210_formats\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 400, i32 44 }
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"rotator_4210_rbg888_limits\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 365, i32 42 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"rotator_4210_yuv_limits\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 385, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"rotator_4412_formats\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 405, i32 44 }
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"rotator_4412_rbg888_limits\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 370, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant [24 x i8] c"rotator_4412_yuv_limits\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 390, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"rotator_5250_formats\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 410, i32 44 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"rotator_5250_rbg888_limits\00", align 1
@___asan_gen_.124 = private constant [47 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_rotator.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 375, i32 42 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @rotator_bind._entry, ptr @rotator_bind._entry_ptr, ptr @rotator_commit._entry, ptr @rotator_commit._entry_ptr, ptr @rotator_probe._entry, ptr @rotator_probe._entry.7, ptr @rotator_probe._entry_ptr, ptr @rotator_probe._entry_ptr.9, ptr @.str, ptr @exynos_rotator_match, ptr @rotator_pm_ops, ptr @rotator_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @rotator_component_ops, ptr @ipp_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rotator_s5pv210_data, ptr @rotator_4210_data, ptr @rotator_4412_data, ptr @rotator_5250_data, ptr @rotator_s5pv210_formats, ptr @rotator_s5pv210_rbg888_limits, ptr @rotator_s5pv210_yuv_limits, ptr @rotator_4210_formats, ptr @rotator_4210_rbg888_limits, ptr @rotator_4210_yuv_limits, ptr @rotator_4412_formats, ptr @rotator_4412_rbg888_limits, ptr @rotator_4412_yuv_limits, ptr @rotator_5250_formats, ptr @rotator_5250_rbg888_limits], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_rotator_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_s5pv210_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4210_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4412_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_5250_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_s5pv210_formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_s5pv210_rbg888_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_s5pv210_yuv_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4210_formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4210_rbg888_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4210_yuv_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4412_formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4412_rbg888_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_4412_yuv_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_5250_formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rotator_5250_rbg888_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotator_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 184, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call2, align 4
  %formats3 = getelementptr inbounds %struct.rot_context, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %formats3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %formats3, align 4
  %num_formats = getelementptr inbounds %struct.rot_variant, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_formats, align 4
  %num_formats4 = getelementptr inbounds %struct.rot_context, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %num_formats4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_formats4, align 4
  %dev5 = getelementptr inbounds %struct.rot_context, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev5, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.rot_context, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.dev_name.exit_crit_edge

if.end15.dev_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end15.dev_name.exit_crit_edge ]
  %call.i72 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call13, ptr noundef nonnull @rotator_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp18 = icmp slt i32 %call.i72, 0
  br i1 %cmp18, label %do.end, label %if.end20

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end20:                                         ; preds = %dev_name.exit
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %clock = getelementptr inbounds %struct.rot_context, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %clock, align 4
  %cmp.i73 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %14 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clock, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call31 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @rotator_component_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %err_component

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_component:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %err_component, %if.end30.cleanup_crit_edge, %do.end27, %do.end, %if.end12.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then9 ], [ %call.i72, %do.end ], [ %16, %do.end27 ], [ %call31, %err_component ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotator_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev1, ptr noundef nonnull @rotator_component_ops) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotator_irq_handler(i32 noundef %irq, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.rot_context, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %3 = and i32 %2, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %cmp.i = icmp eq i32 %3, 65536
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !76
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %shl = select i1 %cmp.i, i32 256, i32 512
  %or = or i32 %7, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #5, !srcloc !80
  %task = getelementptr inbounds %struct.rot_context, ptr %arg, i32 0, i32 8
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %task, align 4
  %dev = getelementptr inbounds %struct.rot_context, ptr %arg, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #5
  %cond = select i1 %cmp.i, i32 0, i32 -22
  tail call void @exynos_drm_ipp_task_done(ptr noundef nonnull %12, i32 noundef %cond) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_ipp_task_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotator_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev2 = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev2, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %1, align 4
  %dma_priv = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @exynos_drm_register_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #5
  %formats = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  %call5 = tail call i32 @exynos_drm_ipp_register(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @ipp_funcs, i32 noundef 3, ptr noundef %5, i32 noundef %7, ptr noundef nonnull @.str.6) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rotator_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @exynos_drm_ipp_unregister(ptr noundef %dev, ptr noundef %1) #5
  %drm_dev = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_dev, align 4
  %dev2 = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %dma_priv = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 2
  tail call void @exynos_drm_unregister_dma(ptr noundef %3, ptr noundef %5, ptr noundef %dma_priv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotator_commit(ptr nocapture noundef %ipp, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rot_context, ptr %ipp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !82
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %task2 = getelementptr inbounds %struct.rot_context, ptr %ipp, i32 0, i32 8
  %5 = ptrtoint ptr %task2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %task, ptr %task2, align 4
  %fourcc = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc, align 4
  %regs.i = getelementptr inbounds %struct.rot_context, ptr %ipp, i32 0, i32 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %11 = and i32 %10, -458753
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %13 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.rotator_src_set_fmt.exit_crit_edge [
    i32 842094158, label %sw.bb.i
    i32 875713112, label %sw.bb2.i
  ]

if.end.rotator_src_set_fmt.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rotator_src_set_fmt.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %12, 256
  br label %rotator_src_set_fmt.exit

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or3.i = or i32 %12, 1536
  br label %rotator_src_set_fmt.exit

rotator_src_set_fmt.exit:                         ; preds = %sw.bb2.i, %sw.bb.i, %if.end.rotator_src_set_fmt.exit_crit_edge
  %val.0.i = phi i32 [ %12, %if.end.rotator_src_set_fmt.exit_crit_edge ], [ %or3.i, %sw.bb2.i ], [ %or.i, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %14) #5, !srcloc !80
  %height.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 3
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i, align 4
  %shl.i = shl i32 %18, 16
  %pitch.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 6
  %19 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pitch.i, align 8
  %format.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %format.i, align 8
  %23 = getelementptr inbounds %struct.drm_format_info, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 2
  %conv.i = zext i8 %25 to i32
  %div.i = udiv i32 %20, %conv.i
  %or.i17 = or i32 %div.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i17) #5
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %28, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %26) #5, !srcloc !80
  %y.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 3
  %29 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y.i, align 4
  %shl5.i = shl i32 %30, 16
  %x.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 2
  %31 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x.i, align 8
  %or8.i = or i32 %shl5.i, %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #5
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %33) #5, !srcloc !80
  %h.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 5
  %36 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %h.i, align 4
  %shl15.i = shl i32 %37, 16
  %w.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 4
  %38 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %w.i, align 8
  %or18.i = or i32 %shl15.i, %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %40 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #5
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %42, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %40) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %dma_addr.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_addr.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %47, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %45) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %arrayidx34.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4, i32 1
  %48 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx34.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %52, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %50) #5, !srcloc !80
  %rotation = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rotation, align 4
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %56, i32 16
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  %and9.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %rotator_src_set_fmt.exit.rotator_dst_set_transf.exit_crit_edge

rotator_src_set_fmt.exit.rotator_dst_set_transf.exit_crit_edge: ; preds = %rotator_src_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rotator_dst_set_transf.exit

if.else.i:                                        ; preds = %rotator_src_set_fmt.exit
  %and13.i = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else17.i, label %if.else.i.rotator_dst_set_transf.exit_crit_edge

if.else.i.rotator_dst_set_transf.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rotator_dst_set_transf.exit

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %and18.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %masksel.i = select i1 %tobool19.not.i, i32 0, i32 48
  br label %rotator_dst_set_transf.exit

rotator_dst_set_transf.exit:                      ; preds = %if.else17.i, %if.else.i.rotator_dst_set_transf.exit_crit_edge, %rotator_src_set_fmt.exit.rotator_dst_set_transf.exit_crit_edge
  %masksel.sink.i = phi i32 [ %masksel.i, %if.else17.i ], [ 16, %rotator_src_set_fmt.exit.rotator_dst_set_transf.exit_crit_edge ], [ 32, %if.else.i.rotator_dst_set_transf.exit_crit_edge ]
  %58 = and i32 %57, 268435455
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  %and3.i = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %and2.i = shl i32 %54, 3
  %60 = and i32 %and2.i, 128
  %val.1.v.i = select i1 %tobool4.not.i, i32 %60, i32 192
  %and8.i = or i32 %59, %val.1.v.i
  %spec.select39.i = or i32 %and8.i, %masksel.sink.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %61 = tail call i32 @llvm.bswap.i32(i32 %spec.select39.i) #5
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %61) #5, !srcloc !80
  %height.i22 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 3
  %64 = ptrtoint ptr %height.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height.i22, align 4
  %shl.i23 = shl i32 %65, 16
  %pitch.i24 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 6
  %66 = ptrtoint ptr %pitch.i24 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pitch.i24, align 8
  %format.i25 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 3
  %68 = ptrtoint ptr %format.i25 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %format.i25, align 8
  %70 = getelementptr inbounds %struct.drm_format_info, ptr %69, i32 0, i32 3
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 2
  %conv.i26 = zext i8 %72 to i32
  %div.i27 = udiv i32 %67, %conv.i26
  %or.i28 = or i32 %div.i27, %shl.i23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #5
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %75, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %73) #5, !srcloc !80
  %y.i31 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 3
  %76 = ptrtoint ptr %y.i31 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %y.i31, align 4
  %shl5.i32 = shl i32 %77, 16
  %x.i33 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 2
  %78 = ptrtoint ptr %x.i33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %x.i33, align 8
  %or8.i34 = or i32 %shl5.i32, %79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %80 = tail call i32 @llvm.bswap.i32(i32 %or8.i34) #5
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr13.i35 = getelementptr i8, ptr %82, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i35, i32 %80) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %dma_addr.i36 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4
  %83 = ptrtoint ptr %dma_addr.i36 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma_addr.i36, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #5
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %87, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %85) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %arrayidx24.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4, i32 1
  %88 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx24.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #5
  %91 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i, align 4
  %add.ptr26.i37 = getelementptr i8, ptr %92, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i37, i32 %90) #5, !srcloc !80
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  %96 = or i32 %95, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %97 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #5, !srcloc !80
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %100, i32 16
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #5, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %102 = or i32 %101, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %104, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %102) #5, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %rotator_dst_set_transf.exit, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %rotator_dst_set_transf.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_ipp_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_unregister_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotator_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rotator_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.rot_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 464, i32 11}
!2 = !{ptr @rotator_driver, !3, !"rotator_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 460, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 305, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rotator_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rotator_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 309, i32 33}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 311, i32 3}
!16 = !{ptr @rotator_probe._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rotator_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rotator_component_ops, !19, !"rotator_component_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 273, i32 35}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 258, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rotator_bind._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rotator_bind._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ipp_funcs, !27, !"ipp_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 240, i32 42}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 226, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rotator_commit._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @rotator_commit._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @exynos_rotator_match, !34, !"exynos_rotator_match", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 435, i32 34}
!35 = !{ptr @rotator_s5pv210_data, !36, !"rotator_s5pv210_data", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 415, i32 33}
!37 = !{ptr @rotator_s5pv210_formats, !38, !"rotator_s5pv210_formats", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 395, i32 44}
!39 = !{ptr @rotator_s5pv210_rbg888_limits, !40, !"rotator_s5pv210_rbg888_limits", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 360, i32 42}
!41 = !{ptr @rotator_s5pv210_yuv_limits, !42, !"rotator_s5pv210_yuv_limits", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 380, i32 42}
!43 = !{ptr @rotator_4210_data, !44, !"rotator_4210_data", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 420, i32 33}
!45 = !{ptr @rotator_4210_formats, !46, !"rotator_4210_formats", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 400, i32 44}
!47 = !{ptr @rotator_4210_rbg888_limits, !48, !"rotator_4210_rbg888_limits", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 365, i32 42}
!49 = !{ptr @rotator_4210_yuv_limits, !50, !"rotator_4210_yuv_limits", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 385, i32 42}
!51 = !{ptr @rotator_4412_data, !52, !"rotator_4412_data", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 425, i32 33}
!53 = !{ptr @rotator_4412_formats, !54, !"rotator_4412_formats", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 405, i32 44}
!55 = !{ptr @rotator_4412_rbg888_limits, !56, !"rotator_4412_rbg888_limits", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 370, i32 42}
!57 = !{ptr @rotator_4412_yuv_limits, !58, !"rotator_4412_yuv_limits", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 390, i32 42}
!59 = !{ptr @rotator_5250_data, !60, !"rotator_5250_data", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 430, i32 33}
!61 = !{ptr @rotator_5250_formats, !62, !"rotator_5250_formats", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 410, i32 44}
!63 = !{ptr @rotator_5250_rbg888_limits, !64, !"rotator_5250_rbg888_limits", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 375, i32 42}
!65 = !{ptr @rotator_pm_ops, !66, !"rotator_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/exynos/exynos_drm_rotator.c", i32 453, i32 32}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 4244570}
!77 = !{i64 2156505761}
!78 = !{i64 2156506322}
!79 = !{i64 2156506614}
!80 = !{i64 4244152}
!81 = !{i64 2148249698}
!82 = !{i64 734521, i64 734546, i64 734568, i64 734584, i64 734596, i64 734616, i64 734640, i64 734656, i64 734668}
!83 = !{i64 2148249886}
!84 = !{i64 2156507343}
!85 = !{i64 2156507895}
!86 = !{i64 2156508417}
!87 = !{i64 2156508907}
!88 = !{i64 2156509397}
!89 = !{i64 2156509917}
!90 = !{i64 2156510493}
!91 = !{i64 2156511263}
!92 = !{i64 2156511626}
!93 = !{i64 2156512148}
!94 = !{i64 2156512638}
!95 = !{i64 2156513158}
!96 = !{i64 2156513734}
!97 = !{i64 2156504764}
!98 = !{i64 2156505047}
!99 = !{i64 2156514504}
!100 = !{i64 2156514778}
