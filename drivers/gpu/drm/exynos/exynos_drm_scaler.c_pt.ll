; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_scaler.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_scaler.c"
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
%struct.scaler_format = type { i32, i32, i32, i32 }
%struct.scaler_data = type { [4 x ptr], i32, ptr, i32 }
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
%struct.scaler_context = type { %struct.exynos_drm_ipp, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr }
%struct.exynos_drm_ipp = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.exynos_drm_ipp_task = type { ptr, ptr, %struct.list_head, %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer, %struct.drm_exynos_ipp_task_transform, %struct.drm_exynos_ipp_task_alpha, %struct.work_struct, i32, i32, ptr }
%struct.exynos_drm_ipp_buffer = type { %struct.drm_exynos_ipp_task_buffer, %struct.drm_exynos_ipp_task_rect, [4 x ptr], ptr, [4 x i32] }
%struct.drm_exynos_ipp_task_buffer = type { i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], i64 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_exynos_ipp_task_transform = type { i32, i32 }
%struct.drm_exynos_ipp_task_alpha = type { i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exynos-scaler\00", [18 x i8] zeroinitializer }, align 32
@exynos_scaler_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-scaler\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-scaler\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@scaler_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scaler_runtime_suspend, ptr @scaler_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@scaler_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scaler_probe, ptr @scaler_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_scaler_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scaler_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"drm_scaler\00", [21 x i8] zeroinitializer }, align 32
@scaler_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scaler_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/exynos/exynos_drm_scaler.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scaler_probe._entry_ptr = internal global ptr @scaler_probe._entry, section ".printk_index", align 4
@scaler_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@scaler_probe._entry_ptr.9 = internal global ptr @scaler_probe._entry.7, section ".printk_index", align 4
@scaler_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @scaler_bind, ptr @scaler_unbind }, [24 x i8] zeroinitializer }, align 32
@ipp_funcs = internal global { %struct.exynos_drm_ipp_funcs, [24 x i8] } { %struct.exynos_drm_ipp_funcs { ptr @scaler_commit, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scaler\00", [25 x i8] zeroinitializer }, align 32
@scaler_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 464, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"The exynos scaler has been probed successfully\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scaler_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scaler_bind._entry_ptr = internal global ptr @scaler_bind._entry, section ".printk_index", align 4
@scaler_formats = internal constant { [21 x %struct.scaler_format], [80 x i8] } { [21 x %struct.scaler_format] [%struct.scaler_format { i32 842094158, i32 0, i32 8, i32 8 }, %struct.scaler_format { i32 825382478, i32 16, i32 8, i32 8 }, %struct.scaler_format { i32 842093913, i32 20, i32 8, i32 8 }, %struct.scaler_format { i32 1448695129, i32 10, i32 16, i32 16 }, %struct.scaler_format { i32 1498831189, i32 11, i32 16, i32 16 }, %struct.scaler_format { i32 1431918169, i32 9, i32 16, i32 16 }, %struct.scaler_format { i32 909203022, i32 2, i32 8, i32 16 }, %struct.scaler_format { i32 825644622, i32 18, i32 8, i32 16 }, %struct.scaler_format { i32 909202777, i32 22, i32 8, i32 16 }, %struct.scaler_format { i32 875714126, i32 3, i32 16, i32 16 }, %struct.scaler_format { i32 842290766, i32 19, i32 16, i32 16 }, %struct.scaler_format { i32 875713881, i32 23, i32 16, i32 16 }, %struct.scaler_format { i32 909199186, i32 4, i32 0, i32 0 }, %struct.scaler_format { i32 892424792, i32 5, i32 0, i32 0 }, %struct.scaler_format { i32 892424769, i32 5, i32 0, i32 0 }, %struct.scaler_format { i32 842093144, i32 12, i32 0, i32 0 }, %struct.scaler_format { i32 842093121, i32 12, i32 0, i32 0 }, %struct.scaler_format { i32 875713112, i32 6, i32 0, i32 0 }, %struct.scaler_format { i32 875713089, i32 6, i32 0, i32 0 }, %struct.scaler_format { i32 875714642, i32 14, i32 0, i32 0 }, %struct.scaler_format { i32 875708754, i32 14, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@scaler_set_src_base.bases = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 20, i32 24, i32 660], [20 x i8] zeroinitializer }, align 32
@scaler_set_dst_base.bases = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 52, i32 56, i32 664], [20 x i8] zeroinitializer }, align 32
@scaler_set_csc.csc_mtx = internal constant { [2 x [3 x [3 x i32]]], [56 x i8] } { [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 596, i32 0, i32 817], [3 x i32] [i32 596, i32 3896, i32 3680], [3 x i32] [i32 596, i32 1033, i32 0]], [3 x [3 x i32]] [[3 x i32] [i32 132, i32 258, i32 50], [3 x i32] [i32 4020, i32 3947, i32 225], [3 x i32] [i32 225, i32 3908, i32 4060]]], [56 x i8] zeroinitializer }, align 32
@exynos5420_data = internal constant { %struct.scaler_data, [36 x i8] } { %struct.scaler_data { [4 x ptr] [ptr @.str.14, ptr null, ptr null, ptr null], i32 1, ptr @exynos5420_formats, i32 25 }, [36 x i8] zeroinitializer }, align 32
@exynos5433_data = internal constant { %struct.scaler_data, [36 x i8] } { %struct.scaler_data { [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null], i32 3, ptr @exynos5420_formats, i32 25 }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mscl\00", [27 x i8] zeroinitializer }, align 32
@exynos5420_formats = internal constant { [25 x %struct.exynos_drm_ipp_formats], [136 x i8] } { [25 x %struct.exynos_drm_ipp_formats] [%struct.exynos_drm_ipp_formats { i32 825382478, i32 3, i64 0, ptr @scaler_5420_two_pixel_hv_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 842094158, i32 3, i64 0, ptr @scaler_5420_two_pixel_hv_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 842093913, i32 3, i64 0, ptr @scaler_5420_two_pixel_hv_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 1448695129, i32 3, i64 0, ptr @scaler_5420_two_pixel_h_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 1498831189, i32 3, i64 0, ptr @scaler_5420_two_pixel_h_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 1431918169, i32 3, i64 0, ptr @scaler_5420_two_pixel_h_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 825644622, i32 3, i64 0, ptr @scaler_5420_two_pixel_h_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 909203022, i32 3, i64 0, ptr @scaler_5420_two_pixel_h_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 909202777, i32 3, i64 0, ptr @scaler_5420_two_pixel_h_limits, i32 3 }, %struct.exynos_drm_ipp_formats { i32 842290766, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 875714126, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 875713881, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 909199186, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 892424792, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 892424769, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 842093144, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 842093121, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 875713112, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 875713089, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 875714642, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 875708754, i32 3, i64 0, ptr @scaler_5420_one_pixel_limits, i32 2 }, %struct.exynos_drm_ipp_formats { i32 825382478, i32 3, i64 288230376151711746, ptr @scaler_5420_tile_limits, i32 4 }, %struct.exynos_drm_ipp_formats { i32 842094158, i32 3, i64 288230376151711746, ptr @scaler_5420_tile_limits, i32 4 }, %struct.exynos_drm_ipp_formats { i32 842093913, i32 3, i64 288230376151711746, ptr @scaler_5420_tile_limits, i32 4 }, %struct.exynos_drm_ipp_formats { i32 1448695129, i32 3, i64 288230376151711746, ptr @scaler_5420_tile_limits, i32 4 }], [136 x i8] zeroinitializer }, align 32
@scaler_5420_two_pixel_hv_limits = internal constant { [3 x %struct.drm_exynos_ipp_limit], [40 x i8] } { [3 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16384, i32 1048576, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16384, i32 1048576, i32 0, i32 0 } }], [40 x i8] zeroinitializer }, align 32
@scaler_5420_two_pixel_h_limits = internal constant { [3 x %struct.drm_exynos_ipp_limit], [40 x i8] } { [3 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 1, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16384, i32 1048576, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16384, i32 1048576, i32 0, i32 0 } }], [40 x i8] zeroinitializer }, align 32
@scaler_5420_one_pixel_limits = internal constant { [2 x %struct.drm_exynos_ipp_limit], [48 x i8] } { [2 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16384, i32 1048576, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16384, i32 1048576, i32 0, i32 0 } }], [48 x i8] zeroinitializer }, align 32
@scaler_5420_tile_limits = internal constant { [4 x %struct.drm_exynos_ipp_limit], [32 x i8] } { [4 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 16, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 0, i32 0, i32 16, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 1, i32 1, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 1, i32 1, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_xiu\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 842093121, i64 842093144, i64 875708754, i64 875713089, i64 875713112, i64 875714642, i64 892424769, i64 892424792, i64 909199186]
@__sancov_gen_cov_switch_values.18 = internal global [23 x i64] [i64 21, i64 32, i64 825382478, i64 825644622, i64 842093121, i64 842093144, i64 842093913, i64 842094158, i64 842290766, i64 875708754, i64 875713089, i64 875713112, i64 875713881, i64 875714126, i64 875714642, i64 892424769, i64 892424792, i64 909199186, i64 909202777, i64 909203022, i64 1431918169, i64 1448695129, i64 1498831189]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 731, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"exynos_scaler_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 715, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"scaler_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 588, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"scaler_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 727, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 509, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 511, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 519, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"scaler_component_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 480, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"ipp_funcs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 405, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 462, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 464, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"scaler_formats\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 57, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 154, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"bases\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 217, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant [8 x i8] c"csc_mtx\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 305, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"exynos5420_data\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 701, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"exynos5433_data\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 708, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 702, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"exynos5420_formats\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 624, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant [32 x i8] c"scaler_5420_two_pixel_hv_limits\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 594, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"scaler_5420_two_pixel_h_limits\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 601, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant [29 x i8] c"scaler_5420_one_pixel_limits\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 608, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"scaler_5420_tile_limits\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 614, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 709, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 709, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [46 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_scaler.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 709, i32 31 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @scaler_bind._entry, ptr @scaler_bind._entry_ptr, ptr @scaler_probe._entry, ptr @scaler_probe._entry.7, ptr @scaler_probe._entry_ptr, ptr @scaler_probe._entry_ptr.9, ptr @.str, ptr @exynos_scaler_match, ptr @scaler_pm_ops, ptr @scaler_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @scaler_component_ops, ptr @ipp_funcs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @scaler_formats, ptr @scaler_set_src_base.bases, ptr @scaler_set_dst_base.bases, ptr @scaler_set_csc.csc_mtx, ptr @exynos5420_data, ptr @exynos5433_data, ptr @.str.14, ptr @exynos5420_formats, ptr @scaler_5420_two_pixel_hv_limits, ptr @scaler_5420_two_pixel_h_limits, ptr @scaler_5420_one_pixel_limits, ptr @scaler_5420_tile_limits, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_scaler_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_formats to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_set_src_base.bases to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_set_dst_base.bases to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_set_csc.csc_mtx to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_formats to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_5420_two_pixel_hv_limits to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_5420_two_pixel_h_limits to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_5420_one_pixel_limits to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_5420_tile_limits to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scaler_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 192, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %scaler_data = getelementptr inbounds %struct.scaler_context, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %scaler_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %scaler_data, align 4
  %dev3 = getelementptr inbounds %struct.scaler_context, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev3, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.scaler_context, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef null, ptr noundef nonnull @scaler_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %4 = ptrtoint ptr %scaler_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scaler_data, align 4
  %num_clk80 = getelementptr inbounds %struct.scaler_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_clk80 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clk80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1981.not = icmp eq i32 %7, 0
  br i1 %cmp1981.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.082, 1
  %8 = ptrtoint ptr %scaler_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scaler_data, align 4
  %num_clk = getelementptr inbounds %struct.scaler_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clk, align 4
  %cmp19 = icmp ult i32 %inc, %11
  br i1 %cmp19, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %12 = phi ptr [ %9, %for.cond.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %i.082 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %12, i32 0, i32 %i.082
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %14) #6
  %arrayidx22 = getelementptr %struct.scaler_context, ptr %call.i, i32 0, i32 5, i32 %i.082
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call21, ptr %arrayidx22, align 4
  %cmp.i79 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %do.end29, label %for.cond

do.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx22, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call34 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @scaler_component_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.end.cleanup_crit_edge, label %err_ippdrv_register

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_ippdrv_register:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %err_ippdrv_register, %for.end.cleanup_crit_edge, %do.end29, %do.end, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %call14, %do.end ], [ %18, %do.end29 ], [ %call34, %err_ippdrv_register ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scaler_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev1, ptr noundef nonnull @scaler_component_ops) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scaler_irq_handler(i32 noundef %irq, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.scaler_context, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %2) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #6, !srcloc !76
  %task = getelementptr inbounds %struct.scaler_context, ptr %arg, i32 0, i32 6
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %task, align 4
  %dev = getelementptr inbounds %struct.scaler_context, ptr %arg, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call.i15 = tail call i32 @__pm_runtime_suspend(ptr noundef %14, i32 noundef 13) #6
  %15 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool.not.i, i32 -22, i32 0
  tail call void @exynos_drm_ipp_task_done(ptr noundef nonnull %8, i32 noundef %cond.i) #6
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
declare dso_local void @exynos_drm_ipp_task_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scaler_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev2 = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev2, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %1, align 4
  %dma_priv = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @exynos_drm_register_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #6
  %scaler_data = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %scaler_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scaler_data, align 4
  %formats = getelementptr inbounds %struct.scaler_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.scaler_data, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_formats, align 4
  %call6 = tail call i32 @exynos_drm_ipp_register(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @ipp_funcs, i32 noundef 15, ptr noundef %7, i32 noundef %9, ptr noundef nonnull @.str.10) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scaler_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @exynos_drm_ipp_unregister(ptr noundef %dev, ptr noundef %1) #6
  %drm_dev = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_dev, align 4
  %dev2 = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %dma_priv = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 2
  tail call void @exynos_drm_unregister_dma(ptr noundef %3, ptr noundef %5, ptr noundef %dma_priv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scaler_commit(ptr nocapture noundef %ipp, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fourcc = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fourcc, align 4
  %call = tail call fastcc ptr @scaler_get_format(i32 noundef %1)
  %fourcc5 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %fourcc5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc5, align 4
  %call6 = tail call fastcc ptr @scaler_get_format(i32 noundef %3)
  %dev = getelementptr inbounds %struct.scaler_context, ptr %ipp, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !79
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !80
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.scaler_context, ptr %ipp, i32 0, i32 4
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #6, !srcloc !76
  br label %do.body1.i

do.body1.i:                                       ; preds = %land.rhs.i.do.body1.i_crit_edge, %if.end
  %retry.0.i = phi i32 [ 100, %if.end ], [ %dec.i, %land.rhs.i.do.body1.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !83
  %dec.i = add nsw i32 %retry.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i64 = icmp ugt i32 %dec.i, 1
  br i1 %cmp.i64, label %land.rhs.i, label %do.body1.i.do.body16.i.preheader_crit_edge

do.body1.i.do.body16.i.preheader_crit_edge:       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16.i.preheader

land.rhs.i:                                       ; preds = %do.body1.i
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %12 = and i32 %11, 33554432
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.body16.i.preheader_crit_edge, label %land.rhs.i.do.body1.i_crit_edge

land.rhs.i.do.body1.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

land.rhs.i.do.body16.i.preheader_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16.i.preheader

do.body16.i.preheader:                            ; preds = %land.rhs.i.do.body16.i.preheader_crit_edge, %do.body1.i.do.body16.i.preheader_crit_edge
  %retry.1.i.ph = phi i32 [ %dec.i, %land.rhs.i.do.body16.i.preheader_crit_edge ], [ 1, %do.body1.i.do.body16.i.preheader_crit_edge ]
  br label %do.body16.i

do.body16.i:                                      ; preds = %land.rhs34.i.do.body16.i_crit_edge, %do.body16.i.preheader
  %retry.1.i = phi i32 [ %dec32.i, %land.rhs34.i.do.body16.i_crit_edge ], [ %retry.1.i.ph, %do.body16.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 16777216) #6, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retry.1.i)
  %cmp33.i = icmp sgt i32 %retry.1.i, 1
  br i1 %cmp33.i, label %land.rhs34.i, label %do.body16.i.cleanup_crit_edge

do.body16.i.cleanup_crit_edge:                    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs34.i:                                     ; preds = %do.body16.i
  %dec32.i = add nsw i32 %retry.1.i, -1
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %cmp42.not.i = icmp eq i32 %17, 16777216
  br i1 %cmp42.not.i, label %if.end10, label %land.rhs34.i.do.body16.i_crit_edge

land.rhs34.i.do.body16.i_crit_edge:               ; preds = %land.rhs34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16.i

if.end10:                                         ; preds = %land.rhs34.i
  %task11 = getelementptr inbounds %struct.scaler_context, ptr %ipp, i32 0, i32 6
  %18 = ptrtoint ptr %task11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %task, ptr %task11, align 4
  %internal_fmt = getelementptr inbounds %struct.scaler_format, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %internal_fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %internal_fmt, align 4
  %modifier = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 7
  %21 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp14.not = icmp eq i64 %22, 0
  %and.i = and i32 %20, 31
  %shl1.i = select i1 %cmp14.not, i32 0, i32 1024
  %or.i = or i32 %shl1.i, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %23) #6, !srcloc !76
  %format.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %format.i, align 8
  %num_planes7.i = getelementptr inbounds %struct.drm_format_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %num_planes7.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_planes7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp9.not.i = icmp eq i8 %29, 0
  br i1 %cmp9.not.i, label %if.end10.scaler_set_src_base.exit_crit_edge, label %if.end10.do.body.i_crit_edge

if.end10.do.body.i_crit_edge:                     ; preds = %if.end10
  br label %do.body.i

if.end10.scaler_set_src_base.exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_src_base.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end10.do.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end10.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4, i32 %i.010.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %arrayidx2.i = getelementptr [3 x i32], ptr @scaler_set_src_base.bases, i32 0, i32 %i.010.i
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx2.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %32) #6, !srcloc !76
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %37 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %format.i, align 8
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %40 to i32
  %cmp.i69 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i69, label %do.body.i.do.body.i_crit_edge, label %do.body.i.scaler_set_src_base.exit_crit_edge

do.body.i.scaler_set_src_base.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_src_base.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

scaler_set_src_base.exit:                         ; preds = %do.body.i.scaler_set_src_base.exit_crit_edge, %if.end10.scaler_set_src_base.exit_crit_edge
  %pitch.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 6
  %41 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pitch.i, align 8
  %43 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %format.i, align 8
  %45 = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 3
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 2
  %conv.i71 = zext i8 %47 to i32
  %div.i = udiv i32 %42, %conv.i71
  %and.i72 = and i32 %div.i, 16383
  %num_planes.i73 = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 2
  %48 = ptrtoint ptr %num_planes.i73 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_planes.i73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp.i74 = icmp ugt i8 %49, 1
  br i1 %cmp.i74, label %if.then.i76, label %scaler_set_src_base.exit.scaler_set_src_span.exit_crit_edge

scaler_set_src_base.exit.scaler_set_src_span.exit_crit_edge: ; preds = %scaler_set_src_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_src_span.exit

if.then.i76:                                      ; preds = %scaler_set_src_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx7.i, align 4
  %and8.i = shl i32 %51, 16
  %shl9.i = and i32 %and8.i, 1073676288
  %or.i75 = or i32 %shl9.i, %and.i72
  br label %scaler_set_src_span.exit

scaler_set_src_span.exit:                         ; preds = %if.then.i76, %scaler_set_src_base.exit.scaler_set_src_span.exit_crit_edge
  %val.0.i = phi i32 [ %or.i75, %if.then.i76 ], [ %and.i72, %scaler_set_src_base.exit.scaler_set_src_span.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %52) #6, !srcloc !76
  %x.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 2
  %55 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %x.i, align 4
  %shl.i = shl i32 %56, 18
  %y.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 3
  %57 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %y.i, align 4
  %shl2.i = shl i32 %58, 2
  %and3.i = and i32 %shl2.i, 65532
  %or.i80 = or i32 %and3.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i80) #6
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %61, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %59) #6, !srcloc !76
  %62 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %x.i, align 4
  %chroma_tile_w.i = getelementptr inbounds %struct.scaler_format, ptr %call, i32 0, i32 2
  %64 = ptrtoint ptr %chroma_tile_w.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chroma_tile_w.i, align 4
  %mul.i = shl i32 %63, 14
  %66 = mul i32 %mul.i, %65
  %shl8.i = and i32 %66, -262144
  %67 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %y.i, align 4
  %chroma_tile_h.i = getelementptr inbounds %struct.scaler_format, ptr %call, i32 0, i32 3
  %69 = ptrtoint ptr %chroma_tile_h.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %chroma_tile_h.i, align 4
  %mul10.i = mul i32 %70, %68
  %71 = lshr i32 %mul10.i, 2
  %and13.i = and i32 %71, 65532
  %or15.i = or i32 %and13.i, %shl8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %72 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #6
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %74, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %72) #6, !srcloc !76
  %w.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 4
  %75 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %w.i, align 4
  %and.i83 = shl i32 %76, 16
  %shl.i84 = and i32 %and.i83, 1073676288
  %h.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 5
  %77 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %h.i, align 4
  %and1.i = and i32 %78, 16383
  %or.i85 = or i32 %shl.i84, %and1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %79 = tail call i32 @llvm.bswap.i32(i32 %or.i85) #6
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %81, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %79) #6, !srcloc !76
  %internal_fmt17 = getelementptr inbounds %struct.scaler_format, ptr %call6, i32 0, i32 1
  %82 = ptrtoint ptr %internal_fmt17 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %internal_fmt17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %and.i88 = shl i32 %83, 24
  %84 = and i32 %and.i88, 520093696
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %86, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %84) #6, !srcloc !76
  %format.i91 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 3
  %87 = ptrtoint ptr %format.i91 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %format.i91, align 8
  %num_planes7.i92 = getelementptr inbounds %struct.drm_format_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %num_planes7.i92 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %num_planes7.i92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp9.not.i93 = icmp eq i8 %90, 0
  br i1 %cmp9.not.i93, label %scaler_set_src_span.exit.scaler_set_dst_base.exit_crit_edge, label %scaler_set_src_span.exit.do.body.i104_crit_edge

scaler_set_src_span.exit.do.body.i104_crit_edge:  ; preds = %scaler_set_src_span.exit
  br label %do.body.i104

scaler_set_src_span.exit.scaler_set_dst_base.exit_crit_edge: ; preds = %scaler_set_src_span.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_dst_base.exit

do.body.i104:                                     ; preds = %do.body.i104.do.body.i104_crit_edge, %scaler_set_src_span.exit.do.body.i104_crit_edge
  %i.010.i96 = phi i32 [ %inc.i100, %do.body.i104.do.body.i104_crit_edge ], [ 0, %scaler_set_src_span.exit.do.body.i104_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %arrayidx.i97 = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4, i32 %i.010.i96
  %91 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i97, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #6
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 4
  %arrayidx2.i98 = getelementptr [3 x i32], ptr @scaler_set_dst_base.bases, i32 0, i32 %i.010.i96
  %96 = ptrtoint ptr %arrayidx2.i98 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx2.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %95, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %93) #6, !srcloc !76
  %inc.i100 = add nuw nsw i32 %i.010.i96, 1
  %98 = ptrtoint ptr %format.i91 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %format.i91, align 8
  %num_planes.i101 = getelementptr inbounds %struct.drm_format_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %num_planes.i101 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %num_planes.i101, align 1
  %conv.i102 = zext i8 %101 to i32
  %cmp.i103 = icmp ult i32 %inc.i100, %conv.i102
  br i1 %cmp.i103, label %do.body.i104.do.body.i104_crit_edge, label %do.body.i104.scaler_set_dst_base.exit_crit_edge

do.body.i104.scaler_set_dst_base.exit_crit_edge:  ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_dst_base.exit

do.body.i104.do.body.i104_crit_edge:              ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i104

scaler_set_dst_base.exit:                         ; preds = %do.body.i104.scaler_set_dst_base.exit_crit_edge, %scaler_set_src_span.exit.scaler_set_dst_base.exit_crit_edge
  %pitch.i105 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 6
  %102 = ptrtoint ptr %pitch.i105 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pitch.i105, align 8
  %104 = ptrtoint ptr %format.i91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %format.i91, align 8
  %106 = getelementptr inbounds %struct.drm_format_info, ptr %105, i32 0, i32 3
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 2
  %conv.i107 = zext i8 %108 to i32
  %div.i108 = udiv i32 %103, %conv.i107
  %and.i109 = and i32 %div.i108, 16383
  %num_planes.i110 = getelementptr inbounds %struct.drm_format_info, ptr %105, i32 0, i32 2
  %109 = ptrtoint ptr %num_planes.i110 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_planes.i110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp.i111 = icmp ugt i8 %110, 1
  br i1 %cmp.i111, label %if.then.i116, label %scaler_set_dst_base.exit.scaler_set_dst_span.exit_crit_edge

scaler_set_dst_base.exit.scaler_set_dst_span.exit_crit_edge: ; preds = %scaler_set_dst_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_dst_span.exit

if.then.i116:                                     ; preds = %scaler_set_dst_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i112 = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 6, i32 1
  %111 = ptrtoint ptr %arrayidx7.i112 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx7.i112, align 4
  %and8.i113 = shl i32 %112, 16
  %shl9.i114 = and i32 %and8.i113, 1073676288
  %or.i115 = or i32 %shl9.i114, %and.i109
  br label %scaler_set_dst_span.exit

scaler_set_dst_span.exit:                         ; preds = %if.then.i116, %scaler_set_dst_base.exit.scaler_set_dst_span.exit_crit_edge
  %val.0.i117 = phi i32 [ %or.i115, %if.then.i116 ], [ %and.i109, %scaler_set_dst_base.exit.scaler_set_dst_span.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %113 = tail call i32 @llvm.bswap.i32(i32 %val.0.i117) #6
  %114 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %115, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %113) #6, !srcloc !76
  %w.i121 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 4
  %116 = ptrtoint ptr %w.i121 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %w.i121, align 4
  %and.i122 = shl i32 %117, 16
  %shl.i123 = and i32 %and.i122, 1073676288
  %h.i124 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 5
  %118 = ptrtoint ptr %h.i124 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %h.i124, align 4
  %and1.i125 = and i32 %119, 16383
  %or.i126 = or i32 %shl.i123, %and1.i125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %120 = tail call i32 @llvm.bswap.i32(i32 %or.i126) #6
  %121 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %122, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %120) #6, !srcloc !76
  %x.i129 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 2
  %123 = ptrtoint ptr %x.i129 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %x.i129, align 4
  %and.i130 = shl i32 %124, 16
  %shl.i131 = and i32 %and.i130, 1073676288
  %y.i132 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 3
  %125 = ptrtoint ptr %y.i132 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %y.i132, align 4
  %and1.i133 = and i32 %126, 16383
  %or.i134 = or i32 %shl.i131, %and1.i133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %127 = tail call i32 @llvm.bswap.i32(i32 %or.i134) #6
  %128 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %129, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %127) #6, !srcloc !76
  %rotation = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 5, i32 1
  %130 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rotation, align 4
  %and.i.i = and i32 %131, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %w.i.h.i = select i1 %tobool.i.not.i, ptr %w.i, ptr %h.i
  %h.i.w.i = select i1 %tobool.i.not.i, ptr %h.i, ptr %w.i
  %132 = ptrtoint ptr %w.i.h.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %w.i.h.i, align 4
  %shl.i138 = shl i32 %133, 16
  %134 = ptrtoint ptr %w.i121 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %w.i121, align 4
  %div.i140 = udiv i32 %shl.i138, %135
  %136 = ptrtoint ptr %h.i.w.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %h.i.w.i, align 4
  %shl10.i = shl i32 %137, 16
  %138 = ptrtoint ptr %h.i124 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %h.i124, align 4
  %div12.i = udiv i32 %shl10.i, %139
  %and.i142 = and i32 %div.i140, 524287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %140 = tail call i32 @llvm.bswap.i32(i32 %and.i142) #6
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %142, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %140) #6, !srcloc !76
  %and14.i = and i32 %div12.i, 524287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %143 = tail call i32 @llvm.bswap.i32(i32 %and14.i) #6
  %144 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i145 = getelementptr i8, ptr %145, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i145, i32 %143) #6, !srcloc !76
  %146 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rotation, align 4
  %and.i146 = and i32 %147, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  br i1 %tobool.not.i147, label %if.else.i149, label %scaler_set_dst_span.exit.scaler_set_rotation.exit_crit_edge

scaler_set_dst_span.exit.scaler_set_rotation.exit_crit_edge: ; preds = %scaler_set_dst_span.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_rotation.exit

if.else.i149:                                     ; preds = %scaler_set_dst_span.exit
  %and1.i148 = and i32 %147, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i148)
  %tobool2.not.i = icmp eq i32 %and1.i148, 0
  br i1 %tobool2.not.i, label %if.else5.i, label %if.else.i149.scaler_set_rotation.exit_crit_edge

if.else.i149.scaler_set_rotation.exit_crit_edge:  ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_rotation.exit

if.else5.i:                                       ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i = and i32 %147, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %spec.select.i = select i1 %tobool7.not.i, i32 0, i32 3
  br label %scaler_set_rotation.exit

scaler_set_rotation.exit:                         ; preds = %if.else5.i, %if.else.i149.scaler_set_rotation.exit_crit_edge, %scaler_set_dst_span.exit.scaler_set_rotation.exit_crit_edge
  %val.0.i150 = phi i32 [ 1, %scaler_set_dst_span.exit.scaler_set_rotation.exit_crit_edge ], [ 2, %if.else.i149.scaler_set_rotation.exit_crit_edge ], [ %spec.select.i, %if.else5.i ]
  %and12.i = lshr i32 %147, 1
  %148 = and i32 %and12.i, 8
  %149 = or i32 %148, %val.0.i150
  %and17.i = lshr i32 %147, 3
  %150 = and i32 %and17.i, 4
  %151 = or i32 %149, %150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %152 = shl nuw nsw i32 %151, 24
  %153 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %154, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %152) #6, !srcloc !76
  %155 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %format.i, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 4
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values)
  switch i32 %158, label %sw.default.i [
    i32 909199186, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge
    i32 892424792, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge164
    i32 892424769, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge165
    i32 842093144, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge166
    i32 842093121, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge167
    i32 875713112, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge168
    i32 875713089, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge169
    i32 875714642, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge170
    i32 875708754, label %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge171
  ]

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge171: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge170: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge169: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge168: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge167: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge166: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge165: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge164: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge: ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

sw.default.i:                                     ; preds = %scaler_set_rotation.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_set_csc.exit

scaler_set_csc.exit:                              ; preds = %sw.default.i, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge164, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge165, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge166, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge167, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge168, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge169, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge170, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge171
  %dir.0.i = phi i32 [ 0, %sw.default.i ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge164 ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge165 ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge166 ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge167 ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge168 ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge169 ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge170 ], [ 1, %scaler_set_rotation.exit.scaler_set_csc.exit_crit_edge171 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 0, i32 0
  %160 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx5.i, align 4
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #6
  %163 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %164, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %162) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.1.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 0, i32 1
  %165 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx5.1.i, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #6
  %168 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %169, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %167) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.2.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 0, i32 2
  %170 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx5.2.i, align 4
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #6
  %173 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %174, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 %172) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.119.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 1, i32 0
  %175 = ptrtoint ptr %arrayidx5.119.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx5.119.i, align 4
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #6
  %178 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i, align 4
  %add.ptr.120.i = getelementptr i8, ptr %179, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.120.i, i32 %177) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.1.1.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 1, i32 1
  %180 = ptrtoint ptr %arrayidx5.1.1.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx5.1.1.i, align 4
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #6
  %183 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i, align 4
  %add.ptr.1.1.i = getelementptr i8, ptr %184, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.1.i, i32 %182) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.2.1.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 1, i32 2
  %185 = ptrtoint ptr %arrayidx5.2.1.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx5.2.1.i, align 4
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #6
  %188 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i, align 4
  %add.ptr.2.1.i = getelementptr i8, ptr %189, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.1.i, i32 %187) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.221.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 2, i32 0
  %190 = ptrtoint ptr %arrayidx5.221.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx5.221.i, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #6
  %193 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs.i, align 4
  %add.ptr.222.i = getelementptr i8, ptr %194, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.222.i, i32 %192) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.1.2.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 2, i32 1
  %195 = ptrtoint ptr %arrayidx5.1.2.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx5.1.2.i, align 4
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #6
  %198 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i, align 4
  %add.ptr.1.2.i = getelementptr i8, ptr %199, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.2.i, i32 %197) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %arrayidx5.2.2.i = getelementptr [2 x [3 x [3 x i32]]], ptr @scaler_set_csc.csc_mtx, i32 0, i32 %dir.0.i, i32 2, i32 2
  %200 = ptrtoint ptr %arrayidx5.2.2.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx5.2.2.i, align 4
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #6
  %203 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs.i, align 4
  %add.ptr.2.2.i = getelementptr i8, ptr %204, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.2.i, i32 %202) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %205 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %206, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 -251592705) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %207 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %208, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 -127) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %209 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %210, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 16777216) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %scaler_set_csc.exit, %do.body16.i.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %scaler_set_csc.exit ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ], [ -5, %do.body16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scaler_get_format(i32 noundef %drm_fmt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %drm_fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %drm_fmt, label %for.cond.20 [
    i32 842094158, label %entry.cleanup_crit_edge
    i32 825382478, label %cleanup.fold.split
    i32 842093913, label %cleanup.fold.split8
    i32 1448695129, label %cleanup.fold.split9
    i32 1498831189, label %cleanup.fold.split10
    i32 1431918169, label %cleanup.fold.split11
    i32 909203022, label %cleanup.fold.split12
    i32 825644622, label %cleanup.fold.split13
    i32 909202777, label %cleanup.fold.split14
    i32 875714126, label %cleanup.fold.split15
    i32 842290766, label %cleanup.fold.split16
    i32 875713881, label %cleanup.fold.split17
    i32 909199186, label %cleanup.fold.split18
    i32 892424792, label %cleanup.fold.split19
    i32 892424769, label %cleanup.fold.split20
    i32 842093144, label %cleanup.fold.split21
    i32 842093121, label %cleanup.fold.split22
    i32 875713112, label %cleanup.fold.split23
    i32 875713089, label %cleanup.fold.split24
    i32 875714642, label %cleanup.fold.split25
    i32 875708754, label %cleanup.fold.split26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.20:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split8:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split8, %cleanup.fold.split, %for.cond.20, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @scaler_formats, %entry.cleanup_crit_edge ], [ null, %for.cond.20 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 1), %cleanup.fold.split ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 2), %cleanup.fold.split8 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 3), %cleanup.fold.split9 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 4), %cleanup.fold.split10 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 5), %cleanup.fold.split11 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 6), %cleanup.fold.split12 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 7), %cleanup.fold.split13 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 8), %cleanup.fold.split14 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 9), %cleanup.fold.split15 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 10), %cleanup.fold.split16 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 11), %cleanup.fold.split17 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 12), %cleanup.fold.split18 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 13), %cleanup.fold.split19 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 14), %cleanup.fold.split20 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 15), %cleanup.fold.split21 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 16), %cleanup.fold.split22 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 17), %cleanup.fold.split23 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 18), %cleanup.fold.split24 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 19), %cleanup.fold.split25 ], [ getelementptr inbounds ([21 x %struct.scaler_format], ptr @scaler_formats, i32 0, i32 20), %cleanup.fold.split26 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

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
define internal i32 @scaler_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %scaler_data.i = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %scaler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scaler_data.i, align 4
  %num_clk1.i = getelementptr inbounds %struct.scaler_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clk1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clk1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i, label %entry.scaler_clk_ctrl.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.scaler_clk_ctrl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_clk_ctrl.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scaler_context, ptr %1, i32 0, i32 5, i32 %i.03.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %inc.i = add nuw i32 %i.03.i, 1
  %8 = ptrtoint ptr %scaler_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scaler_data.i, align 4
  %num_clk.i = getelementptr inbounds %struct.scaler_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clk.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.scaler_clk_ctrl.exit_crit_edge

for.body.i.scaler_clk_ctrl.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_clk_ctrl.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

scaler_clk_ctrl.exit:                             ; preds = %for.body.i.scaler_clk_ctrl.exit_crit_edge, %entry.scaler_clk_ctrl.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scaler_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %scaler_data.i = getelementptr inbounds %struct.scaler_context, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %scaler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scaler_data.i, align 4
  %num_clk1.i = getelementptr inbounds %struct.scaler_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clk1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clk1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i, label %entry.scaler_clk_ctrl.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.scaler_clk_ctrl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_clk_ctrl.exit

for.body.i:                                       ; preds = %clk_prepare_enable.exit.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %clk_prepare_enable.exit.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scaler_context, ptr %1, i32 0, i32 5, i32 %i.03.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call.i2 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.clk_prepare_enable.exit_crit_edge

for.body.i.clk_prepare_enable.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body.i
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %for.body.i.clk_prepare_enable.exit_crit_edge
  %inc.i = add nuw i32 %i.03.i, 1
  %8 = ptrtoint ptr %scaler_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scaler_data.i, align 4
  %num_clk.i = getelementptr inbounds %struct.scaler_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clk.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %clk_prepare_enable.exit.for.body.i_crit_edge, label %clk_prepare_enable.exit.scaler_clk_ctrl.exit_crit_edge

clk_prepare_enable.exit.scaler_clk_ctrl.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %scaler_clk_ctrl.exit

clk_prepare_enable.exit.for.body.i_crit_edge:     ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

scaler_clk_ctrl.exit:                             ; preds = %clk_prepare_enable.exit.scaler_clk_ctrl.exit_crit_edge, %entry.scaler_clk_ctrl.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 731, i32 11}
!2 = !{ptr @scaler_driver, !3, !"scaler_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 727, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 509, i32 20}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 511, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @scaler_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @scaler_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 519, i32 4}
!16 = !{ptr @scaler_probe._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @scaler_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @scaler_component_ops, !19, !"scaler_component_ops", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 480, i32 35}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 462, i32 38}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 464, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @scaler_bind._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @scaler_bind._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ipp_funcs, !29, !"ipp_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 405, i32 36}
!30 = !{ptr @scaler_formats, !31, !"scaler_formats", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 57, i32 35}
!32 = !{ptr @scaler_set_src_base.bases, !33, !"bases", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 154, i32 22}
!34 = !{ptr @scaler_set_dst_base.bases, !35, !"bases", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 217, i32 22}
!36 = !{ptr @scaler_set_csc.csc_mtx, !37, !"csc_mtx", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 305, i32 19}
!38 = !{ptr @exynos_scaler_match, !39, !"exynos_scaler_match", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 715, i32 34}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 702, i32 15}
!42 = !{ptr @exynos5420_data, !43, !"exynos5420_data", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 701, i32 33}
!44 = !{ptr @exynos5420_formats, !45, !"exynos5420_formats", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 624, i32 44}
!46 = !{ptr @scaler_5420_two_pixel_hv_limits, !47, !"scaler_5420_two_pixel_hv_limits", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 594, i32 42}
!48 = !{ptr @scaler_5420_two_pixel_h_limits, !49, !"scaler_5420_two_pixel_h_limits", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 601, i32 42}
!50 = !{ptr @scaler_5420_one_pixel_limits, !51, !"scaler_5420_one_pixel_limits", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 608, i32 42}
!52 = !{ptr @scaler_5420_tile_limits, !53, !"scaler_5420_tile_limits", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 614, i32 42}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 709, i32 15}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 709, i32 23}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 709, i32 31}
!60 = !{ptr @exynos5433_data, !61, !"exynos5433_data", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 708, i32 33}
!62 = !{ptr @scaler_pm_ops, !63, !"scaler_pm_ops", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/exynos/exynos_drm_scaler.c", i32 588, i32 32}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 4252183}
!74 = !{i64 2156697591}
!75 = !{i64 2156697859}
!76 = !{i64 4251765}
!77 = !{i64 2156696703}
!78 = !{i64 2148257311}
!79 = !{i64 742134, i64 742159, i64 742181, i64 742197, i64 742209, i64 742229, i64 742253, i64 742269, i64 742281}
!80 = !{i64 2148257499}
!81 = !{i64 2156676683}
!82 = !{i64 2156677153}
!83 = !{i64 2156676995}
!84 = !{i64 2156677698}
!85 = !{i64 2156677982}
!86 = !{i64 2156677824}
!87 = !{i64 2156678246}
!88 = !{i64 2156678965}
!89 = !{i64 2156680399}
!90 = !{i64 2156681073}
!91 = !{i64 2156682121}
!92 = !{i64 2156683034}
!93 = !{i64 2156683890}
!94 = !{i64 2156684783}
!95 = !{i64 2156685529}
!96 = !{i64 2156686203}
!97 = !{i64 2156687251}
!98 = !{i64 2156688144}
!99 = !{i64 2156689037}
!100 = !{i64 2156689786}
!101 = !{i64 2156690366}
!102 = !{i64 2156691385}
!103 = !{i64 2156693299}
!104 = !{i64 2156694261}
!105 = !{i64 2156679654}
!106 = !{i64 2156694899}
