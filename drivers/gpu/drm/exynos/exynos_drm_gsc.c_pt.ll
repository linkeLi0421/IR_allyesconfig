; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_gsc.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_gsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.exynos_drm_ipp_funcs = type { ptr, ptr }
%struct.gsc_driverdata = type { ptr, i32, [8 x ptr], i32 }
%struct.drm_exynos_ipp_limit = type { i32, i32, %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val }
%struct.drm_exynos_ipp_limit_val = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.gsc_context = type { %struct.exynos_drm_ipp, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, [8 x ptr], i32, %struct.gsc_scaler, i32, i32, i8 }
%struct.exynos_drm_ipp = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.gsc_scaler = type { i8, i32, i32, i32, i32, i32 }
%struct.exynos_drm_ipp_formats = type { i32, i32, i64, ptr, i32 }
%struct.exynos_drm_ipp_task = type { ptr, ptr, %struct.list_head, %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer, %struct.drm_exynos_ipp_task_transform, %struct.drm_exynos_ipp_task_alpha, %struct.work_struct, i32, i32, ptr }
%struct.exynos_drm_ipp_buffer = type { %struct.drm_exynos_ipp_task_buffer, %struct.drm_exynos_ipp_task_rect, [4 x ptr], ptr, [4 x i32] }
%struct.drm_exynos_ipp_task_buffer = type { i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], i64 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_exynos_ipp_task_transform = type { i32, i32 }
%struct.drm_exynos_ipp_task_alpha = type { i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos-drm-gsc\00", [17 x i8] zeroinitializer }, align 32
@exynos_drm_gsc_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_exynos5250_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_exynos5250_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_exynos5420_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_exynos5433_drvdata }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@gsc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_runtime_suspend, ptr @gsc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@gsc_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gsc_probe, ptr @gsc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_drm_gsc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@gsc_formats = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 875713089, i32 875713112, i32 909199186, i32 875714626, i32 842094158, i32 909203022, i32 825382478, i32 825644622, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 842093913, i32 842094169, i32 909202777], [36 x i8] zeroinitializer }, align 32
@gsc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gsc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/exynos/exynos_drm_gsc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr = internal global ptr @gsc_probe._entry, section ".printk_index", align 4
@gsc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to request irq.\0A\00", [40 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr.8 = internal global ptr @gsc_probe._entry.6, section ".printk_index", align 4
@gsc_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @gsc_bind, ptr @gsc_unbind }, [24 x i8] zeroinitializer }, align 32
@gsc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1301, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drm gsc registered successfully.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gsc_probe._entry_ptr.12 = internal global ptr @gsc_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gsc id[%d]\0A\00", [20 x i8] zeroinitializer }, align 32
@gsc_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 1031, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"occurred overflow at %d, status 0x%x.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsc_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@gsc_irq_handler._entry_ptr = internal global ptr @gsc_irq_handler._entry, section ".printk_index", align 4
@gsc_irq_handler.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exynosdrm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"occurred frame done at %d, status 0x%x.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buf_id_src[%d]buf_id_dst[%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cfg[0x%x]curr_index[%d]buf_id[%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* failed to get in buffer index.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to get out buffer index.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buf_num[%d]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enable[%d]overflow[%d]level[%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@ipp_funcs = internal global { %struct.exynos_drm_ipp_funcs, [24 x i8] } { %struct.exynos_drm_ipp_funcs { ptr @gsc_commit, ptr @gsc_abort }, [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gsc\00", [28 x i8] zeroinitializer }, align 32
@gsc_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1184, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"The exynos gscaler has been probed successfully\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gsc_bind\00", [23 x i8] zeroinitializer }, align 32
@gsc_bind._entry_ptr = internal global ptr @gsc_bind._entry, section ".printk_index", align 4
@gsc_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1121, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable GScaler device.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gsc_commit\00", [21 x i8] zeroinitializer }, align 32
@gsc_commit._entry_ptr = internal global ptr @gsc_commit._entry, section ".printk_index", align 4
@gsc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1071, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to reset hardware.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gsc_reset\00", [22 x i8] zeroinitializer }, align 32
@gsc_reset._entry_ptr = internal global ptr @gsc_reset._entry, section ".printk_index", align 4
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to reset gsc h/w.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fmt[0x%x]\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to get ratio horizontal.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to get ratio vertical.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pre_hratio[%d]pre_vratio[%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"main_hratio[%ld]main_vratio[%ld]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pre_shfactor[%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"src[%d]dst[%d]\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to make ratio and shift.\0A\00", [55 x i8] zeroinitializer }, align 32
@h_coef_8t = internal constant { [7 x [16 x [8 x i32]]], [896 x i8] } { [7 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 0, i32 128, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 -1, i32 2, i32 -6, i32 127, i32 7, i32 -2, i32 1, i32 0], [8 x i32] [i32 -1, i32 4, i32 -12, i32 125, i32 16, i32 -5, i32 1, i32 0], [8 x i32] [i32 -1, i32 5, i32 -15, i32 120, i32 25, i32 -8, i32 2, i32 0], [8 x i32] [i32 -1, i32 6, i32 -18, i32 114, i32 35, i32 -10, i32 3, i32 -1], [8 x i32] [i32 -1, i32 6, i32 -20, i32 107, i32 46, i32 -13, i32 4, i32 -1], [8 x i32] [i32 -2, i32 7, i32 -21, i32 99, i32 57, i32 -16, i32 5, i32 -1], [8 x i32] [i32 -1, i32 6, i32 -20, i32 89, i32 68, i32 -18, i32 5, i32 -1], [8 x i32] [i32 -1, i32 6, i32 -20, i32 79, i32 79, i32 -20, i32 6, i32 -1], [8 x i32] [i32 -1, i32 5, i32 -18, i32 68, i32 89, i32 -20, i32 6, i32 -1], [8 x i32] [i32 -1, i32 5, i32 -16, i32 57, i32 99, i32 -21, i32 7, i32 -2], [8 x i32] [i32 -1, i32 4, i32 -13, i32 46, i32 107, i32 -20, i32 6, i32 -1], [8 x i32] [i32 -1, i32 3, i32 -10, i32 35, i32 114, i32 -18, i32 6, i32 -1], [8 x i32] [i32 0, i32 2, i32 -8, i32 25, i32 120, i32 -15, i32 5, i32 -1], [8 x i32] [i32 0, i32 1, i32 -5, i32 16, i32 125, i32 -12, i32 4, i32 -1], [8 x i32] [i32 0, i32 1, i32 -2, i32 7, i32 127, i32 -6, i32 2, i32 -1]], [16 x [8 x i32]] [[8 x i32] [i32 3, i32 -8, i32 14, i32 111, i32 13, i32 -8, i32 3, i32 0], [8 x i32] [i32 2, i32 -6, i32 7, i32 112, i32 21, i32 -10, i32 3, i32 -1], [8 x i32] [i32 2, i32 -4, i32 1, i32 110, i32 28, i32 -12, i32 4, i32 -1], [8 x i32] [i32 1, i32 -2, i32 -3, i32 106, i32 36, i32 -13, i32 4, i32 -1], [8 x i32] [i32 1, i32 -1, i32 -7, i32 103, i32 44, i32 -15, i32 4, i32 -1], [8 x i32] [i32 1, i32 1, i32 -11, i32 97, i32 53, i32 -16, i32 4, i32 -1], [8 x i32] [i32 0, i32 2, i32 -13, i32 91, i32 61, i32 -16, i32 4, i32 -1], [8 x i32] [i32 0, i32 3, i32 -15, i32 85, i32 69, i32 -17, i32 4, i32 -1], [8 x i32] [i32 0, i32 3, i32 -16, i32 77, i32 77, i32 -16, i32 3, i32 0], [8 x i32] [i32 -1, i32 4, i32 -17, i32 69, i32 85, i32 -15, i32 3, i32 0], [8 x i32] [i32 -1, i32 4, i32 -16, i32 61, i32 91, i32 -13, i32 2, i32 0], [8 x i32] [i32 -1, i32 4, i32 -16, i32 53, i32 97, i32 -11, i32 1, i32 1], [8 x i32] [i32 -1, i32 4, i32 -15, i32 44, i32 103, i32 -7, i32 -1, i32 1], [8 x i32] [i32 -1, i32 4, i32 -13, i32 36, i32 106, i32 -3, i32 -2, i32 1], [8 x i32] [i32 -1, i32 4, i32 -12, i32 28, i32 110, i32 1, i32 -4, i32 2], [8 x i32] [i32 -1, i32 3, i32 -10, i32 21, i32 112, i32 7, i32 -6, i32 2]], [16 x [8 x i32]] [[8 x i32] [i32 2, i32 -11, i32 25, i32 96, i32 25, i32 -11, i32 2, i32 0], [8 x i32] [i32 2, i32 -10, i32 19, i32 96, i32 31, i32 -12, i32 2, i32 0], [8 x i32] [i32 2, i32 -9, i32 14, i32 94, i32 37, i32 -12, i32 2, i32 0], [8 x i32] [i32 2, i32 -8, i32 10, i32 92, i32 43, i32 -12, i32 1, i32 0], [8 x i32] [i32 2, i32 -7, i32 5, i32 90, i32 49, i32 -12, i32 1, i32 0], [8 x i32] [i32 2, i32 -5, i32 1, i32 86, i32 55, i32 -12, i32 0, i32 1], [8 x i32] [i32 2, i32 -4, i32 -2, i32 82, i32 61, i32 -11, i32 -1, i32 1], [8 x i32] [i32 1, i32 -3, i32 -5, i32 77, i32 67, i32 -9, i32 -1, i32 1], [8 x i32] [i32 1, i32 -2, i32 -7, i32 72, i32 72, i32 -7, i32 -2, i32 1], [8 x i32] [i32 1, i32 -1, i32 -9, i32 67, i32 77, i32 -5, i32 -3, i32 1], [8 x i32] [i32 1, i32 -1, i32 -11, i32 61, i32 82, i32 -2, i32 -4, i32 2], [8 x i32] [i32 1, i32 0, i32 -12, i32 55, i32 86, i32 1, i32 -5, i32 2], [8 x i32] [i32 0, i32 1, i32 -12, i32 49, i32 90, i32 5, i32 -7, i32 2], [8 x i32] [i32 0, i32 1, i32 -12, i32 43, i32 92, i32 10, i32 -8, i32 2], [8 x i32] [i32 0, i32 2, i32 -12, i32 37, i32 94, i32 14, i32 -9, i32 2], [8 x i32] [i32 0, i32 2, i32 -12, i32 31, i32 96, i32 19, i32 -10, i32 2]], [16 x [8 x i32]] [[8 x i32] [i32 -1, i32 -8, i32 33, i32 80, i32 33, i32 -8, i32 -1, i32 0], [8 x i32] [i32 -1, i32 -8, i32 28, i32 80, i32 37, i32 -7, i32 -2, i32 1], [8 x i32] [i32 0, i32 -8, i32 24, i32 79, i32 41, i32 -7, i32 -2, i32 1], [8 x i32] [i32 0, i32 -8, i32 20, i32 78, i32 46, i32 -6, i32 -3, i32 1], [8 x i32] [i32 0, i32 -8, i32 16, i32 76, i32 50, i32 -4, i32 -3, i32 1], [8 x i32] [i32 0, i32 -7, i32 13, i32 74, i32 54, i32 -3, i32 -4, i32 1], [8 x i32] [i32 1, i32 -7, i32 10, i32 71, i32 58, i32 -1, i32 -5, i32 1], [8 x i32] [i32 1, i32 -6, i32 6, i32 68, i32 62, i32 1, i32 -5, i32 1], [8 x i32] [i32 1, i32 -6, i32 4, i32 65, i32 65, i32 4, i32 -6, i32 1], [8 x i32] [i32 1, i32 -5, i32 1, i32 62, i32 68, i32 6, i32 -6, i32 1], [8 x i32] [i32 1, i32 -5, i32 -1, i32 58, i32 71, i32 10, i32 -7, i32 1], [8 x i32] [i32 1, i32 -4, i32 -3, i32 54, i32 74, i32 13, i32 -7, i32 0], [8 x i32] [i32 1, i32 -3, i32 -4, i32 50, i32 76, i32 16, i32 -8, i32 0], [8 x i32] [i32 1, i32 -3, i32 -6, i32 46, i32 78, i32 20, i32 -8, i32 0], [8 x i32] [i32 1, i32 -2, i32 -7, i32 41, i32 79, i32 24, i32 -8, i32 0], [8 x i32] [i32 1, i32 -2, i32 -7, i32 37, i32 80, i32 28, i32 -8, i32 -1]], [16 x [8 x i32]] [[8 x i32] [i32 -3, i32 0, i32 35, i32 64, i32 35, i32 0, i32 -3, i32 0], [8 x i32] [i32 -3, i32 -1, i32 32, i32 64, i32 38, i32 1, i32 -3, i32 0], [8 x i32] [i32 -2, i32 -2, i32 29, i32 63, i32 41, i32 2, i32 -3, i32 0], [8 x i32] [i32 -2, i32 -3, i32 27, i32 63, i32 43, i32 4, i32 -4, i32 0], [8 x i32] [i32 -2, i32 -3, i32 24, i32 61, i32 46, i32 6, i32 -4, i32 0], [8 x i32] [i32 -2, i32 -3, i32 21, i32 60, i32 49, i32 7, i32 -4, i32 0], [8 x i32] [i32 -1, i32 -4, i32 19, i32 59, i32 51, i32 9, i32 -4, i32 -1], [8 x i32] [i32 -1, i32 -4, i32 16, i32 57, i32 53, i32 12, i32 -4, i32 -1], [8 x i32] [i32 -1, i32 -4, i32 14, i32 55, i32 55, i32 14, i32 -4, i32 -1], [8 x i32] [i32 -1, i32 -4, i32 12, i32 53, i32 57, i32 16, i32 -4, i32 -1], [8 x i32] [i32 -1, i32 -4, i32 9, i32 51, i32 59, i32 19, i32 -4, i32 -1], [8 x i32] [i32 0, i32 -4, i32 7, i32 49, i32 60, i32 21, i32 -3, i32 -2], [8 x i32] [i32 0, i32 -4, i32 6, i32 46, i32 61, i32 24, i32 -3, i32 -2], [8 x i32] [i32 0, i32 -4, i32 4, i32 43, i32 63, i32 27, i32 -3, i32 -2], [8 x i32] [i32 0, i32 -3, i32 2, i32 41, i32 63, i32 29, i32 -2, i32 -2], [8 x i32] [i32 0, i32 -3, i32 1, i32 38, i32 64, i32 32, i32 -1, i32 -3]], [16 x [8 x i32]] [[8 x i32] [i32 -1, i32 8, i32 33, i32 48, i32 33, i32 8, i32 -1, i32 0], [8 x i32] [i32 -1, i32 7, i32 31, i32 49, i32 35, i32 9, i32 -1, i32 -1], [8 x i32] [i32 -1, i32 6, i32 30, i32 49, i32 36, i32 10, i32 -1, i32 -1], [8 x i32] [i32 -1, i32 5, i32 28, i32 48, i32 38, i32 12, i32 -1, i32 -1], [8 x i32] [i32 -1, i32 4, i32 26, i32 48, i32 39, i32 13, i32 0, i32 -1], [8 x i32] [i32 -1, i32 3, i32 24, i32 47, i32 41, i32 15, i32 0, i32 -1], [8 x i32] [i32 -1, i32 2, i32 23, i32 47, i32 42, i32 16, i32 0, i32 -1], [8 x i32] [i32 -1, i32 2, i32 21, i32 45, i32 43, i32 18, i32 1, i32 -1], [8 x i32] [i32 -1, i32 1, i32 19, i32 45, i32 45, i32 19, i32 1, i32 -1], [8 x i32] [i32 -1, i32 1, i32 18, i32 43, i32 45, i32 21, i32 2, i32 -1], [8 x i32] [i32 -1, i32 0, i32 16, i32 42, i32 47, i32 23, i32 2, i32 -1], [8 x i32] [i32 -1, i32 0, i32 15, i32 41, i32 47, i32 24, i32 3, i32 -1], [8 x i32] [i32 -1, i32 0, i32 13, i32 39, i32 48, i32 26, i32 4, i32 -1], [8 x i32] [i32 -1, i32 -1, i32 12, i32 38, i32 48, i32 28, i32 5, i32 -1], [8 x i32] [i32 -1, i32 -1, i32 10, i32 36, i32 49, i32 30, i32 6, i32 -1], [8 x i32] [i32 -1, i32 -1, i32 9, i32 35, i32 49, i32 31, i32 7, i32 -1]], [16 x [8 x i32]] [[8 x i32] [i32 2, i32 13, i32 30, i32 38, i32 30, i32 13, i32 2, i32 0], [8 x i32] [i32 2, i32 12, i32 29, i32 38, i32 30, i32 14, i32 3, i32 0], [8 x i32] [i32 2, i32 11, i32 28, i32 38, i32 31, i32 15, i32 3, i32 0], [8 x i32] [i32 2, i32 10, i32 26, i32 38, i32 32, i32 16, i32 4, i32 0], [8 x i32] [i32 1, i32 10, i32 26, i32 37, i32 33, i32 17, i32 4, i32 0], [8 x i32] [i32 1, i32 9, i32 24, i32 37, i32 34, i32 18, i32 5, i32 0], [8 x i32] [i32 1, i32 8, i32 24, i32 37, i32 34, i32 19, i32 5, i32 0], [8 x i32] [i32 1, i32 7, i32 22, i32 36, i32 35, i32 20, i32 6, i32 1], [8 x i32] [i32 1, i32 6, i32 21, i32 36, i32 36, i32 21, i32 6, i32 1], [8 x i32] [i32 1, i32 6, i32 20, i32 35, i32 36, i32 22, i32 7, i32 1], [8 x i32] [i32 0, i32 5, i32 19, i32 34, i32 37, i32 24, i32 8, i32 1], [8 x i32] [i32 0, i32 5, i32 18, i32 34, i32 37, i32 24, i32 9, i32 1], [8 x i32] [i32 0, i32 4, i32 17, i32 33, i32 37, i32 26, i32 10, i32 1], [8 x i32] [i32 0, i32 4, i32 16, i32 32, i32 38, i32 26, i32 10, i32 2], [8 x i32] [i32 0, i32 3, i32 15, i32 31, i32 38, i32 28, i32 11, i32 2], [8 x i32] [i32 0, i32 3, i32 14, i32 30, i32 38, i32 29, i32 12, i32 2]]], [896 x i8] zeroinitializer }, align 32
@v_coef_4t = internal constant { [7 x [16 x [4 x i32]]], [448 x i8] } { [7 x [16 x [4 x i32]]] [[16 x [4 x i32]] [[4 x i32] [i32 0, i32 128, i32 0, i32 0], [4 x i32] [i32 -4, i32 127, i32 5, i32 0], [4 x i32] [i32 -6, i32 124, i32 11, i32 -1], [4 x i32] [i32 -8, i32 118, i32 19, i32 -1], [4 x i32] [i32 -8, i32 111, i32 27, i32 -2], [4 x i32] [i32 -8, i32 102, i32 37, i32 -3], [4 x i32] [i32 -8, i32 92, i32 48, i32 -4], [4 x i32] [i32 -7, i32 81, i32 59, i32 -5], [4 x i32] [i32 -6, i32 70, i32 70, i32 -6], [4 x i32] [i32 -5, i32 59, i32 81, i32 -7], [4 x i32] [i32 -4, i32 48, i32 92, i32 -8], [4 x i32] [i32 -3, i32 37, i32 102, i32 -8], [4 x i32] [i32 -2, i32 27, i32 111, i32 -8], [4 x i32] [i32 -1, i32 19, i32 118, i32 -8], [4 x i32] [i32 -1, i32 11, i32 124, i32 -6], [4 x i32] [i32 0, i32 5, i32 127, i32 -4]], [16 x [4 x i32]] [[4 x i32] [i32 8, i32 112, i32 8, i32 0], [4 x i32] [i32 4, i32 111, i32 14, i32 -1], [4 x i32] [i32 1, i32 109, i32 20, i32 -2], [4 x i32] [i32 -2, i32 105, i32 27, i32 -2], [4 x i32] [i32 -3, i32 100, i32 34, i32 -3], [4 x i32] [i32 -5, i32 93, i32 43, i32 -3], [4 x i32] [i32 -5, i32 86, i32 51, i32 -4], [4 x i32] [i32 -5, i32 77, i32 60, i32 -4], [4 x i32] [i32 -5, i32 69, i32 69, i32 -5], [4 x i32] [i32 -4, i32 60, i32 77, i32 -5], [4 x i32] [i32 -4, i32 51, i32 86, i32 -5], [4 x i32] [i32 -3, i32 43, i32 93, i32 -5], [4 x i32] [i32 -3, i32 34, i32 100, i32 -3], [4 x i32] [i32 -2, i32 27, i32 105, i32 -2], [4 x i32] [i32 -2, i32 20, i32 109, i32 1], [4 x i32] [i32 -1, i32 14, i32 111, i32 4]], [16 x [4 x i32]] [[4 x i32] [i32 16, i32 96, i32 16, i32 0], [4 x i32] [i32 12, i32 97, i32 21, i32 -2], [4 x i32] [i32 8, i32 96, i32 26, i32 -2], [4 x i32] [i32 5, i32 93, i32 32, i32 -2], [4 x i32] [i32 2, i32 89, i32 39, i32 -2], [4 x i32] [i32 0, i32 84, i32 46, i32 -2], [4 x i32] [i32 -1, i32 79, i32 53, i32 -3], [4 x i32] [i32 -2, i32 73, i32 59, i32 -2], [4 x i32] [i32 -2, i32 66, i32 66, i32 -2], [4 x i32] [i32 -2, i32 59, i32 73, i32 -2], [4 x i32] [i32 -3, i32 53, i32 79, i32 -1], [4 x i32] [i32 -2, i32 46, i32 84, i32 0], [4 x i32] [i32 -2, i32 39, i32 89, i32 2], [4 x i32] [i32 -2, i32 32, i32 93, i32 5], [4 x i32] [i32 -2, i32 26, i32 96, i32 8], [4 x i32] [i32 -2, i32 21, i32 97, i32 12]], [16 x [4 x i32]] [[4 x i32] [i32 22, i32 84, i32 22, i32 0], [4 x i32] [i32 18, i32 85, i32 26, i32 -1], [4 x i32] [i32 14, i32 84, i32 31, i32 -1], [4 x i32] [i32 11, i32 82, i32 36, i32 -1], [4 x i32] [i32 8, i32 79, i32 42, i32 -1], [4 x i32] [i32 6, i32 76, i32 47, i32 -1], [4 x i32] [i32 4, i32 72, i32 52, i32 0], [4 x i32] [i32 2, i32 68, i32 58, i32 0], [4 x i32] [i32 1, i32 63, i32 63, i32 1], [4 x i32] [i32 0, i32 58, i32 68, i32 2], [4 x i32] [i32 0, i32 52, i32 72, i32 4], [4 x i32] [i32 -1, i32 47, i32 76, i32 6], [4 x i32] [i32 -1, i32 42, i32 79, i32 8], [4 x i32] [i32 -1, i32 36, i32 82, i32 11], [4 x i32] [i32 -1, i32 31, i32 84, i32 14], [4 x i32] [i32 -1, i32 26, i32 85, i32 18]], [16 x [4 x i32]] [[4 x i32] [i32 26, i32 76, i32 26, i32 0], [4 x i32] [i32 22, i32 76, i32 30, i32 0], [4 x i32] [i32 19, i32 75, i32 34, i32 0], [4 x i32] [i32 16, i32 73, i32 38, i32 1], [4 x i32] [i32 13, i32 71, i32 43, i32 1], [4 x i32] [i32 10, i32 69, i32 47, i32 2], [4 x i32] [i32 8, i32 66, i32 51, i32 3], [4 x i32] [i32 6, i32 63, i32 55, i32 4], [4 x i32] [i32 5, i32 59, i32 59, i32 5], [4 x i32] [i32 4, i32 55, i32 63, i32 6], [4 x i32] [i32 3, i32 51, i32 66, i32 8], [4 x i32] [i32 2, i32 47, i32 69, i32 10], [4 x i32] [i32 1, i32 43, i32 71, i32 13], [4 x i32] [i32 1, i32 38, i32 73, i32 16], [4 x i32] [i32 0, i32 34, i32 75, i32 19], [4 x i32] [i32 0, i32 30, i32 76, i32 22]], [16 x [4 x i32]] [[4 x i32] [i32 29, i32 70, i32 29, i32 0], [4 x i32] [i32 26, i32 68, i32 32, i32 2], [4 x i32] [i32 23, i32 67, i32 36, i32 2], [4 x i32] [i32 20, i32 66, i32 39, i32 3], [4 x i32] [i32 17, i32 65, i32 43, i32 3], [4 x i32] [i32 15, i32 63, i32 46, i32 4], [4 x i32] [i32 12, i32 61, i32 50, i32 5], [4 x i32] [i32 10, i32 58, i32 53, i32 7], [4 x i32] [i32 8, i32 56, i32 56, i32 8], [4 x i32] [i32 7, i32 53, i32 58, i32 10], [4 x i32] [i32 5, i32 50, i32 61, i32 12], [4 x i32] [i32 4, i32 46, i32 63, i32 15], [4 x i32] [i32 3, i32 43, i32 65, i32 17], [4 x i32] [i32 3, i32 39, i32 66, i32 20], [4 x i32] [i32 2, i32 36, i32 67, i32 23], [4 x i32] [i32 2, i32 32, i32 68, i32 26]], [16 x [4 x i32]] [[4 x i32] [i32 32, i32 64, i32 32, i32 0], [4 x i32] [i32 28, i32 63, i32 34, i32 3], [4 x i32] [i32 25, i32 62, i32 37, i32 4], [4 x i32] [i32 22, i32 62, i32 40, i32 4], [4 x i32] [i32 19, i32 61, i32 43, i32 5], [4 x i32] [i32 17, i32 59, i32 46, i32 6], [4 x i32] [i32 15, i32 58, i32 48, i32 7], [4 x i32] [i32 13, i32 55, i32 51, i32 9], [4 x i32] [i32 11, i32 53, i32 53, i32 11], [4 x i32] [i32 9, i32 51, i32 55, i32 13], [4 x i32] [i32 7, i32 48, i32 58, i32 15], [4 x i32] [i32 6, i32 46, i32 59, i32 17], [4 x i32] [i32 5, i32 43, i32 61, i32 19], [4 x i32] [i32 4, i32 40, i32 62, i32 22], [4 x i32] [i32 4, i32 37, i32 62, i32 25], [4 x i32] [i32 3, i32 34, i32 63, i32 28]]], [448 x i8] zeroinitializer }, align 32
@gsc_exynos5250_drvdata = internal global { %struct.gsc_driverdata, [52 x i8] } { %struct.gsc_driverdata { ptr @gsc_5250_limits, i32 4, [8 x ptr] [ptr @.str.40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], i32 1 }, [52 x i8] zeroinitializer }, align 32
@gsc_exynos5420_drvdata = internal global { %struct.gsc_driverdata, [52 x i8] } { %struct.gsc_driverdata { ptr @gsc_5420_limits, i32 4, [8 x ptr] [ptr @.str.40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], i32 1 }, [52 x i8] zeroinitializer }, align 32
@gsc_exynos5433_drvdata = internal global { %struct.gsc_driverdata, [52 x i8] } { %struct.gsc_driverdata { ptr @gsc_5433_limits, i32 4, [8 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr null, ptr null, ptr null, ptr null], i32 4 }, [52 x i8] zeroinitializer }, align 32
@gsc_5250_limits = internal constant { [4 x %struct.drm_exynos_ipp_limit], [32 x i8] } { [4 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 4800, i32 8, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 3344, i32 8, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 4800, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 3344, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 196609, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 2048, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 2048, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 4096, i32 524288, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 4096, i32 524288, i32 0, i32 0 } }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gscl\00", [27 x i8] zeroinitializer }, align 32
@gsc_5420_limits = internal constant { [4 x %struct.drm_exynos_ipp_limit], [32 x i8] } { [4 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 4800, i32 8, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 3344, i32 8, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 4800, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 3344, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 196609, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 2016, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 2016, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 4096, i32 524288, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 4096, i32 524288, i32 0, i32 0 } }], [32 x i8] zeroinitializer }, align 32
@gsc_5433_limits = internal constant { [4 x %struct.drm_exynos_ipp_limit], [32 x i8] } { [4 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 8191, i32 16, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8191, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 4800, i32 1, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 3344, i32 1, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 196609, i32 0, %struct.drm_exynos_ipp_limit_val { i32 32, i32 2047, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 8, i32 8191, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 4096, i32 524288, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 4096, i32 524288, i32 0, i32 0 } }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_xiu\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_gsclbend\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id[%d]\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 842094169, i64 875714626, i64 909199186, i64 909202777, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.47 = internal global [17 x i64] [i64 15, i64 32, i64 825382478, i64 825644622, i64 842093913, i64 842094158, i64 842094169, i64 875713089, i64 875713112, i64 875714626, i64 909199186, i64 909202777, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1426, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"exynos_drm_gsc_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1404, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"gsc_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1353, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"gsc_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1422, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"gsc_formats\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1205, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1266, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1284, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"gsc_component_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1200, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1301, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1026, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1030, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1038, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1044, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 977, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 981, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1008, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 918, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 423, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"ipp_funcs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1164, i32 36 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1182, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1184, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1121, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1071, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 396, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 452, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 763, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 769, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 773, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 779, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 785, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 710, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 713, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"h_coef_8t\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 131, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant [10 x i8] c"v_coef_4t\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 255, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"gsc_exynos5250_drvdata\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1383, i32 30 }
@___asan_gen_.204 = private unnamed_addr constant [23 x i8] c"gsc_exynos5420_drvdata\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1390, i32 30 }
@___asan_gen_.207 = private unnamed_addr constant [23 x i8] c"gsc_exynos5433_drvdata\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1397, i32 30 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"gsc_5250_limits\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1359, i32 42 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1384, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"gsc_5420_limits\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1367, i32 42 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"gsc_5433_limits\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1375, i32 42 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1398, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1398, i32 24 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1398, i32 32 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1398, i32 44 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private constant [43 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_gsc.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 1327, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @gsc_bind._entry, ptr @gsc_bind._entry_ptr, ptr @gsc_commit._entry, ptr @gsc_commit._entry_ptr, ptr @gsc_irq_handler._entry, ptr @gsc_irq_handler._entry_ptr, ptr @gsc_probe._entry, ptr @gsc_probe._entry.6, ptr @gsc_probe._entry.9, ptr @gsc_probe._entry_ptr, ptr @gsc_probe._entry_ptr.12, ptr @gsc_probe._entry_ptr.8, ptr @gsc_reset._entry, ptr @gsc_reset._entry_ptr, ptr @.str, ptr @exynos_drm_gsc_of_match, ptr @gsc_pm_ops, ptr @gsc_driver, ptr @gsc_formats, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @gsc_component_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ipp_funcs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @h_coef_8t, ptr @v_coef_4t, ptr @gsc_exynos5250_drvdata, ptr @gsc_exynos5420_drvdata, ptr @gsc_exynos5433_drvdata, ptr @gsc_5250_limits, ptr @.str.40, ptr @gsc_5420_limits, ptr @gsc_5433_limits, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_drm_gsc_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h_coef_8t to i32), i32 3584, i32 4480, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v_coef_4t to i32), i32 1792, i32 2240, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_exynos5250_drvdata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_exynos5420_drvdata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_exynos5433_drvdata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_5250_limits to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_5420_limits to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsc_5433_limits to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %dev3 = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 4
  %num_clocks = getelementptr inbounds %struct.gsc_driverdata, ptr %call2, i32 0, i32 3
  %1 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_clocks, align 4
  %num_clocks4 = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 10
  %3 = ptrtoint ptr %num_clocks4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %num_clocks4, align 4
  %clk_names = getelementptr inbounds %struct.gsc_driverdata, ptr %call2, i32 0, i32 2
  %clk_names5 = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %clk_names5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %clk_names, ptr %clk_names5, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 408, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_limits = getelementptr inbounds %struct.gsc_driverdata, ptr %call2, i32 0, i32 1
  br label %for.body

for.cond16.preheader:                             ; preds = %for.body
  %arrayidx20 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15
  %5 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 842094158, ptr %arrayidx20, align 8
  %modifier = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 2
  %6 = ptrtoint ptr %modifier to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 288230376151711746, ptr %modifier, align 8
  %type24 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 1
  %7 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %type24, align 4
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call2, align 4
  %limits27 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 3
  %10 = ptrtoint ptr %limits27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %limits27, align 8
  %11 = ptrtoint ptr %num_limits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_limits, align 4
  %num_limits30 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 4
  %13 = ptrtoint ptr %num_limits30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %num_limits30, align 4
  %arrayidx20.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 16
  %14 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 825382478, ptr %arrayidx20.1, align 8
  %modifier.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 16, i32 2
  %15 = ptrtoint ptr %modifier.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 288230376151711746, ptr %modifier.1, align 8
  %type24.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 16, i32 1
  %16 = ptrtoint ptr %type24.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %type24.1, align 4
  %17 = load ptr, ptr %call2, align 4
  %limits27.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 16, i32 3
  %18 = ptrtoint ptr %limits27.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %limits27.1, align 8
  %19 = load i32, ptr %num_limits, align 4
  %num_limits30.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 16, i32 4
  %20 = ptrtoint ptr %num_limits30.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_limits30.1, align 4
  %formats35 = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %formats35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %formats35, align 4
  %num_formats36 = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %num_formats36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 17, ptr %num_formats36, align 4
  %23 = ptrtoint ptr %num_clocks4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_clocks4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp39182 = icmp sgt i32 %24, 0
  br i1 %cmp39182, label %for.cond16.preheader.for.body40_crit_edge, label %for.cond16.preheader.for.end57_crit_edge

for.cond16.preheader.for.end57_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end57

for.cond16.preheader.for.body40_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0179 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [15 x i32], ptr @gsc_formats, i32 0, i32 %i.0179
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0179
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx10, align 8
  %type = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0179, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %type, align 4
  %29 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call2, align 4
  %limits13 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0179, i32 3
  %31 = ptrtoint ptr %limits13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %limits13, align 8
  %32 = ptrtoint ptr %num_limits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_limits, align 4
  %num_limits15 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0179, i32 4
  %34 = ptrtoint ptr %num_limits15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %num_limits15, align 4
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body40:                                       ; preds = %for.inc55.for.body40_crit_edge, %for.cond16.preheader.for.body40_crit_edge
  %i.2183 = phi i32 [ %inc56, %for.inc55.for.body40_crit_edge ], [ 0, %for.cond16.preheader.for.body40_crit_edge ]
  %35 = ptrtoint ptr %clk_names5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_names5, align 4
  %arrayidx42 = getelementptr ptr, ptr %36, i32 %i.2183
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx42, align 4
  %call43 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %38) #5
  %arrayidx44 = getelementptr %struct.gsc_context, ptr %call.i, i32 0, i32 9, i32 %i.2183
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call43, ptr %arrayidx44, align 4
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.inc55

do.end:                                           ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %clk_names5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_names5, align 4
  %arrayidx50 = getelementptr ptr, ptr %41, i32 %i.2183
  %42 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %43) #8
  %44 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx44, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %cleanup

for.inc55:                                        ; preds = %for.body40
  %inc56 = add nuw nsw i32 %i.2183, 1
  %47 = ptrtoint ptr %num_clocks4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_clocks4, align 4
  %cmp39 = icmp slt i32 %inc56, %48
  br i1 %cmp39, label %for.inc55.for.body40_crit_edge, label %for.inc55.for.end57_crit_edge

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end57

for.inc55.for.body40_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %for.cond16.preheader.for.end57_crit_edge
  %call58 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call58, ptr %regs, align 4
  %cmp.i176 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then61, label %if.end64

if.then61:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %call58 to i32
  br label %cleanup

if.end64:                                         ; preds = %for.end57
  %call65 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 13
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call65, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp67 = icmp slt i32 %call65, 0
  br i1 %cmp67, label %if.end64.cleanup_crit_edge, label %if.end70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end70:                                         ; preds = %if.end64
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end70.dev_name.exit_crit_edge

if.end70.dev_name.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end70.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %55, %if.end.i ], [ %53, %if.end70.dev_name.exit_crit_edge ]
  %call.i177 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call65, ptr noundef nonnull @gsc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp74 = icmp slt i32 %call.i177, 0
  br i1 %cmp74, label %do.end78, label %if.end79

do.end78:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end79:                                         ; preds = %dev_name.exit
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %56 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id, align 4
  %id80 = getelementptr inbounds %struct.gsc_context, ptr %call.i, i32 0, i32 12
  %58 = ptrtoint ptr %id80 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %id80, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call81 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @gsc_component_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.end87, label %err_pm_dis

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %cleanup

err_pm_dis:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pm_dis, %do.end87, %do.end78, %if.end64.cleanup_crit_edge, %if.then61, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %do.end ], [ %50, %if.then61 ], [ %call.i177, %do.end78 ], [ %call81, %err_pm_dis ], [ 0, %do.end87 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call65, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev1, ptr noundef nonnull @gsc_component_ops) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_irq_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gsc_context, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.gsc_context, ptr %dev_id, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %3) #5
  %regs = getelementptr inbounds %struct.gsc_context, ptr %dev_id, i32 0, i32 7
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !128
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %and = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.14, i32 noundef %11, i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ 0, %entry.if.end_crit_edge ]
  %and4 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end25_crit_edge, label %if.then6

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_irq_handler.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_irq_handler, %if.then13)) #5
          to label %do.end18 [label %if.then13], !srcloc !130

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gsc_irq_handler.__UNIQUE_ID_ddebug307, ptr noundef %13, ptr noundef nonnull @.str.17, i32 noundef %15, i32 noundef %7) #5
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %if.then6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %19) #5
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 76
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !128
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %shr.i = lshr i32 %23, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %23)
  %cmp28.i = icmp ult i32 %23, 67108864
  br i1 %cmp28.i, label %for.body.i.preheader, label %do.end18.if.then5.i_crit_edge

do.end18.if.then5.i_crit_edge:                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

for.body.i.preheader:                             ; preds = %do.end18
  %umax = call i32 @llvm.umax.i32(i32 %shr.i, i32 3)
  %24 = shl nuw nsw i32 1, %shr.i
  %25 = and i32 %24, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %for.body.i.preheader.if.end7.i_crit_edge, label %for.inc.i

for.body.i.preheader.if.end7.i_crit_edge:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

for.inc.i:                                        ; preds = %for.body.i.preheader
  %inc.i = add nuw nsw i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331647, i32 %23)
  %exitcond.not = icmp ugt i32 %23, 50331647
  br i1 %exitcond.not, label %for.inc.i.if.then5.i_crit_edge, label %for.body.i.1

for.inc.i.if.then5.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

for.body.i.1:                                     ; preds = %for.inc.i
  %26 = shl i32 2, %shr.i
  %27 = and i32 %26, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.1 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.1, label %for.body.i.1.if.end7.i_crit_edge, label %for.inc.i.1

for.body.i.1.if.end7.i_crit_edge:                 ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

for.inc.i.1:                                      ; preds = %for.body.i.1
  %inc.i.1 = add nuw nsw i32 %shr.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %umax)
  %exitcond.not.1 = icmp eq i32 %inc.i, %umax
  br i1 %exitcond.not.1, label %for.inc.i.1.if.then5.i_crit_edge, label %for.body.i.2

for.inc.i.1.if.then5.i_crit_edge:                 ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %28 = shl i32 4, %shr.i
  %29 = and i32 %28, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.2 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.2, label %for.body.i.2.if.end7.i_crit_edge, label %for.inc.i.2

for.body.i.2.if.end7.i_crit_edge:                 ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

for.inc.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1, i32 %umax)
  %exitcond.not.2 = icmp eq i32 %inc.i.1, %umax
  br i1 %exitcond.not.2, label %for.inc.i.2.if.then5.i_crit_edge, label %for.body.i.3

for.inc.i.2.if.then5.i_crit_edge:                 ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %inc.i.2 = add nuw nsw i32 %shr.i, 3
  %30 = shl i32 8, %shr.i
  %31 = and i32 %30, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.3 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.3, label %for.body.i.3.if.end7.i_crit_edge, label %for.body.i.3.if.then5.i_crit_edge

for.body.i.3.if.then5.i_crit_edge:                ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5.i

for.body.i.3.if.end7.i_crit_edge:                 ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then5.i:                                       ; preds = %for.body.i.3.if.then5.i_crit_edge, %for.inc.i.2.if.then5.i_crit_edge, %for.inc.i.1.if.then5.i_crit_edge, %for.inc.i.if.then5.i_crit_edge, %do.end18.if.then5.i_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %33, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %23, i32 noundef %shr.i, i32 noundef 4) #5
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %35, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #5
  br label %gsc_get_src_buf_index.exit

if.end7.i:                                        ; preds = %for.body.i.3.if.end7.i_crit_edge, %for.body.i.2.if.end7.i_crit_edge, %for.body.i.1.if.end7.i_crit_edge, %for.body.i.preheader.if.end7.i_crit_edge
  %i.029.i.lcssa = phi i32 [ %shr.i, %for.body.i.preheader.if.end7.i_crit_edge ], [ %inc.i, %for.body.i.1.if.end7.i_crit_edge ], [ %inc.i.1, %for.body.i.2.if.end7.i_crit_edge ], [ %inc.i.2, %for.body.i.3.if.end7.i_crit_edge ]
  %.lcssa = phi i32 [ %24, %for.body.i.preheader.if.end7.i_crit_edge ], [ %26, %for.body.i.1.if.end7.i_crit_edge ], [ %28, %for.body.i.2.if.end7.i_crit_edge ], [ %30, %for.body.i.3.if.end7.i_crit_edge ]
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %37, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %23, i32 noundef %shr.i, i32 noundef %i.029.i.lcssa) #5
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 76
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !128
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %or.i.i = or i32 %41, %.lcssa
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %44, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %42) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %46, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %42) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %48, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %42) #5, !srcloc !134
  br label %gsc_get_src_buf_index.exit

gsc_get_src_buf_index.exit:                       ; preds = %if.end7.i, %if.then5.i
  %retval.0.i54 = phi i32 [ -22, %if.then5.i ], [ %i.029.i.lcssa, %if.end7.i ]
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %50, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %52) #5
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr.i58 = getelementptr i8, ptr %54, i32 268
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #5, !srcloc !128
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  %shr.i59 = lshr i32 %56, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %56)
  %cmp28.i60 = icmp ult i32 %56, 268435456
  br i1 %cmp28.i60, label %for.body.i63.preheader, label %gsc_get_src_buf_index.exit.if.then4.i_crit_edge

gsc_get_src_buf_index.exit.if.then4.i_crit_edge:  ; preds = %gsc_get_src_buf_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.body.i63.preheader:                           ; preds = %gsc_get_src_buf_index.exit
  %umax76 = call i32 @llvm.umax.i32(i32 %shr.i59, i32 15)
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.inc.i66.for.body.i63_crit_edge, %for.body.i63.preheader
  %i.029.i61 = phi i32 [ %inc.i64, %for.inc.i66.for.body.i63_crit_edge ], [ %shr.i59, %for.body.i63.preheader ]
  %57 = shl nuw nsw i32 1, %i.029.i61
  %58 = and i32 %57, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i62 = icmp eq i32 %58, 0
  br i1 %tobool.not.i62, label %if.end6.i, label %for.inc.i66

for.inc.i66:                                      ; preds = %for.body.i63
  %inc.i64 = add nuw nsw i32 %i.029.i61, 1
  %exitcond77.not = icmp eq i32 %i.029.i61, %umax76
  br i1 %exitcond77.not, label %for.inc.i66.if.then4.i_crit_edge, label %for.inc.i66.for.body.i63_crit_edge

for.inc.i66.for.body.i63_crit_edge:               ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i63

for.inc.i66.if.then4.i_crit_edge:                 ; preds = %for.inc.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then4.i:                                       ; preds = %for.inc.i66.if.then4.i_crit_edge, %gsc_get_src_buf_index.exit.if.then4.i_crit_edge
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %60, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21) #5
  br label %gsc_get_dst_buf_index.exit

if.end6.i:                                        ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @gsc_dst_set_buf_seq(ptr noundef %dev_id, i32 noundef %i.029.i61, i1 noundef zeroext false) #5
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %62, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %56, i32 noundef %shr.i59, i32 noundef %i.029.i61) #5
  br label %gsc_get_dst_buf_index.exit

gsc_get_dst_buf_index.exit:                       ; preds = %if.end6.i, %if.then4.i
  %retval.0.i67 = phi i32 [ -22, %if.then4.i ], [ %i.029.i61, %if.end6.i ]
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %64, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i54, i32 noundef %retval.0.i67) #5
  %65 = or i32 %retval.0.i67, %retval.0.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %.not = icmp sgt i32 %65, -1
  %err.1 = select i1 %.not, i32 %err.0, i32 -22
  br label %if.end25

if.end25:                                         ; preds = %gsc_get_dst_buf_index.exit, %if.end.if.end25_crit_edge
  %err.2 = phi i32 [ %err.1, %gsc_get_dst_buf_index.exit ], [ %err.0, %if.end.if.end25_crit_edge ]
  %task = getelementptr inbounds %struct.gsc_context, ptr %dev_id, i32 0, i32 4
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 4
  %tobool26.not = icmp eq ptr %67, null
  br i1 %tobool26.not, label %if.end25.if.end34_crit_edge, label %if.then27

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %task, align 4
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 12, i32 22
  %71 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %call.i68 = tail call i32 @__pm_runtime_suspend(ptr noundef %73, i32 noundef 13) #5
  tail call void @exynos_drm_ipp_task_done(ptr noundef nonnull %67, i32 noundef %err.2) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end25.if.end34_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_ipp_task_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsc_dst_set_buf_seq(ptr nocapture noundef readonly %ctx, i32 noundef %buf_id, i1 noundef zeroext %enqueue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lnot = xor i1 %enqueue, true
  %shl = shl nuw i32 1, %buf_id
  %regs = getelementptr inbounds %struct.gsc_context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 268
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !128
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %conv = zext i1 %lnot to i32
  %shl4 = shl nuw i32 %conv, %buf_id
  %or = or i32 %and, %shl4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %4) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %10, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %4) #5, !srcloc !134
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 268
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %15 = and i32 %14, 1
  %spec.select.i = sub nuw nsw i32 16, %15
  %and.1.i = shl i32 %14, 30
  %sext.i = ashr i32 %and.1.i, 31
  %spec.select.1.i = add nsw i32 %spec.select.i, %sext.i
  %and.2.i = shl i32 %14, 29
  %sext9.i = ashr i32 %and.2.i, 31
  %spec.select.2.i = add nsw i32 %spec.select.1.i, %sext9.i
  %and.3.i = shl i32 %14, 28
  %sext10.i = ashr i32 %and.3.i, 31
  %spec.select.3.i = add nsw i32 %spec.select.2.i, %sext10.i
  %and.4.i = shl i32 %14, 27
  %sext11.i = ashr i32 %and.4.i, 31
  %spec.select.4.i = add nsw i32 %spec.select.3.i, %sext11.i
  %and.5.i = shl i32 %14, 26
  %sext12.i = ashr i32 %and.5.i, 31
  %spec.select.5.i = add nsw i32 %spec.select.4.i, %sext12.i
  %and.6.i = shl i32 %14, 25
  %sext13.i = ashr i32 %and.6.i, 31
  %spec.select.6.i = add nsw i32 %spec.select.5.i, %sext13.i
  %and.7.i = shl i32 %14, 24
  %sext14.i = ashr i32 %and.7.i, 31
  %spec.select.7.i = add nsw i32 %spec.select.6.i, %sext14.i
  %and.8.i = shl i32 %14, 23
  %sext15.i = ashr i32 %and.8.i, 31
  %spec.select.8.i = add nsw i32 %spec.select.7.i, %sext15.i
  %and.9.i = shl i32 %14, 22
  %sext16.i = ashr i32 %and.9.i, 31
  %spec.select.9.i = add nsw i32 %spec.select.8.i, %sext16.i
  %and.10.i = shl i32 %14, 21
  %sext17.i = ashr i32 %and.10.i, 31
  %spec.select.10.i = add nsw i32 %spec.select.9.i, %sext17.i
  %and.11.i = shl i32 %14, 20
  %sext18.i = ashr i32 %and.11.i, 31
  %spec.select.11.i = add nsw i32 %spec.select.10.i, %sext18.i
  %and.12.i = shl i32 %14, 19
  %sext19.i = ashr i32 %and.12.i, 31
  %spec.select.12.i = add nsw i32 %spec.select.11.i, %sext19.i
  %and.13.i = shl i32 %14, 18
  %sext20.i = ashr i32 %and.13.i, 31
  %spec.select.13.i = add nsw i32 %spec.select.12.i, %sext20.i
  %and.14.i = shl i32 %14, 17
  %sext21.i = ashr i32 %and.14.i, 31
  %spec.select.14.i = add nsw i32 %spec.select.13.i, %sext21.i
  %and.15.i = shl i32 %14, 16
  %sext22.i = ashr i32 %and.15.i, 31
  %spec.select.15.i = add nsw i32 %spec.select.14.i, %sext22.i
  %dev.i = getelementptr inbounds %struct.gsc_context, ptr %ctx, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %17, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %spec.select.15.i) #5
  br i1 %enqueue, label %land.lhs.true, label %land.lhs.true22.critedge

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.15.i)
  %cmp = icmp ugt i32 %spec.select.15.i, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %23 = and i32 %22, -117440513
  %24 = or i32 %23, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr23.i = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %24) #5, !srcloc !134
  br label %if.end27

land.lhs.true22.critedge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.15.i)
  %cmp24 = icmp ult i32 %spec.select.15.i, 2
  br i1 %cmp24, label %if.then26, label %land.lhs.true22.critedge.if.end27_crit_edge

land.lhs.true22.critedge.if.end27_crit_edge:      ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %28, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr.i97 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %32 = and i32 %31, -117440513
  %33 = or i32 %32, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr23.i99 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i99, i32 %33) #5, !srcloc !134
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true22.critedge.if.end27_crit_edge, %if.then, %land.lhs.true.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev2 = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev2, align 4
  %dma_priv = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @exynos_drm_register_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #5
  %formats = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_formats, align 4
  %call5 = tail call i32 @exynos_drm_ipp_register(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @ipp_funcs, i32 noundef 15, ptr noundef %4, i32 noundef %6, ptr noundef nonnull @.str.24) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsc_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @exynos_drm_ipp_unregister(ptr noundef %dev, ptr noundef %1) #5
  %dma_priv = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 2
  tail call void @exynos_drm_unregister_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_commit(ptr noundef %ipp, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 3
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !145
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !146
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.27) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %task2 = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 4
  %5 = ptrtoint ptr %task2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %task, ptr %task2, align 4
  %call3 = tail call fastcc i32 @gsc_reset(ptr noundef %ipp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i56 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #5
  %8 = ptrtoint ptr %task2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %task2, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %fourcc = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fourcc, align 4
  %modifier = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 7
  %11 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool11.not = icmp eq i64 %12, 0
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %10) #5
  %regs.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %18 = and i32 %17, -418846721
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %20 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end8.gsc_src_set_fmt.exit_crit_edge [
    i32 909199186, label %sw.bb.i
    i32 909203022, label %sw.bb26.i
    i32 842094158, label %sw.bb24.i
    i32 875714626, label %sw.bb4.i
    i32 1448695129, label %sw.bb6.i
    i32 1431918169, label %sw.bb8.i
    i32 1498831189, label %sw.bb10.i
    i32 1498765654, label %sw.bb12.i
    i32 825382478, label %sw.bb14.i
    i32 825644622, label %sw.bb16.i
    i32 909202777, label %sw.bb18.i
    i32 842093913, label %sw.bb20.i
    i32 842094169, label %sw.bb22.i
  ]

if.end8.gsc_src_set_fmt.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_src_set_fmt.exit

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %19, 256
  br label %gsc_src_set_fmt.exit

sw.bb4.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or5.i = or i32 %19, 524288
  br label %gsc_src_set_fmt.exit

sw.bb6.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or7.i = or i32 %19, 1024
  br label %gsc_src_set_fmt.exit

sw.bb8.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or9.i = or i32 %19, 5120
  br label %gsc_src_set_fmt.exit

sw.bb10.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or11.i = or i32 %19, 9216
  br label %gsc_src_set_fmt.exit

sw.bb12.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or13.i = or i32 %19, 13312
  br label %gsc_src_set_fmt.exit

sw.bb14.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or15.i = or i32 %19, 4608
  br label %gsc_src_set_fmt.exit

sw.bb16.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or17.i = or i32 %19, 5376
  br label %gsc_src_set_fmt.exit

sw.bb18.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or19.i = or i32 %19, 1536
  br label %gsc_src_set_fmt.exit

sw.bb20.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or21.i = or i32 %19, 768
  br label %gsc_src_set_fmt.exit

sw.bb22.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or23.i = or i32 %19, 4864
  br label %gsc_src_set_fmt.exit

sw.bb24.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or25.i = or i32 %19, 512
  br label %gsc_src_set_fmt.exit

sw.bb26.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or27.i = or i32 %19, 1280
  br label %gsc_src_set_fmt.exit

gsc_src_set_fmt.exit:                             ; preds = %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %sw.bb6.i, %sw.bb4.i, %sw.bb.i, %if.end8.gsc_src_set_fmt.exit_crit_edge
  %cfg.0.i = phi i32 [ %or27.i, %sw.bb26.i ], [ %or25.i, %sw.bb24.i ], [ %or23.i, %sw.bb22.i ], [ %or21.i, %sw.bb20.i ], [ %or19.i, %sw.bb18.i ], [ %or17.i, %sw.bb16.i ], [ %or15.i, %sw.bb14.i ], [ %or13.i, %sw.bb12.i ], [ %or11.i, %sw.bb10.i ], [ %or9.i, %sw.bb8.i ], [ %or7.i, %sw.bb6.i ], [ %or5.i, %sw.bb4.i ], [ %or.i, %sw.bb.i ], [ %19, %if.end8.gsc_src_set_fmt.exit_crit_edge ]
  %or28.i = or i32 %cfg.0.i, 8
  %spec.select.i = select i1 %tobool11.not, i32 %cfg.0.i, i32 %or28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #5
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %21) #5, !srcloc !134
  %rotation = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rotation, align 4
  %and.i = and i32 %25, 15
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %29 = and i32 %28, -1793
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %31 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %and.i, label %gsc_src_set_fmt.exit.gsc_src_set_transf.exit_crit_edge [
    i32 1, label %sw.bb.i59
    i32 2, label %sw.bb9.i
    i32 4, label %sw.bb21.i
    i32 8, label %sw.bb33.i
  ]

gsc_src_set_fmt.exit.gsc_src_set_transf.exit_crit_edge: ; preds = %gsc_src_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_src_set_transf.exit

sw.bb.i59:                                        ; preds = %gsc_src_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and3.i = shl i32 %25, 12
  %32 = and i32 %and3.i, 196608
  %33 = or i32 %30, %32
  br label %gsc_src_set_transf.exit

sw.bb9.i:                                         ; preds = %gsc_src_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and11.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %spec.select74.v.i = select i1 %tobool12.not.i, i32 262144, i32 327680
  %and16.i = shl i32 %25, 12
  %34 = and i32 %and16.i, 131072
  %spec.select74.i = or i32 %spec.select74.v.i, %34
  %35 = or i32 %spec.select74.i, %30
  br label %gsc_src_set_transf.exit

sw.bb21.i:                                        ; preds = %gsc_src_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or22.i = or i32 %30, 196608
  %and23.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %and26.i = and i32 %or22.i, -327681
  %spec.select75.i = select i1 %tobool24.not.i, i32 %or22.i, i32 %and26.i
  %and28.i = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %and31.i = and i32 %spec.select75.i, -393217
  %spec.select79.i = select i1 %tobool29.not.i, i32 %spec.select75.i, i32 %and31.i
  br label %gsc_src_set_transf.exit

sw.bb33.i:                                        ; preds = %gsc_src_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or34.i = or i32 %30, 458752
  %and35.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %and38.i = and i32 %or34.i, -65537
  %spec.select76.i = select i1 %tobool36.not.i, i32 %or34.i, i32 %and38.i
  %and40.i = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %and43.i = and i32 %spec.select76.i, -131073
  %spec.select80.i = select i1 %tobool41.not.i, i32 %spec.select76.i, i32 %and43.i
  br label %gsc_src_set_transf.exit

gsc_src_set_transf.exit:                          ; preds = %sw.bb33.i, %sw.bb21.i, %sw.bb9.i, %sw.bb.i59, %gsc_src_set_fmt.exit.gsc_src_set_transf.exit_crit_edge
  %cfg.4.i = phi i32 [ %30, %gsc_src_set_fmt.exit.gsc_src_set_transf.exit_crit_edge ], [ %33, %sw.bb.i59 ], [ %35, %sw.bb9.i ], [ %spec.select79.i, %sw.bb21.i ], [ %spec.select80.i, %sw.bb33.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %cfg.4.i) #5
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %36) #5, !srcloc !134
  %rotation50.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 14
  %and47.i = lshr i32 %cfg.4.i, 18
  %39 = trunc i32 %and47.i to i8
  %40 = and i8 %39, 1
  %41 = ptrtoint ptr %rotation50.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %rotation50.i, align 4
  %sc1.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11
  %x.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 2
  %42 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %x.i, align 8
  %y.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 3
  %44 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %y.i, align 4
  %shl3.i = shl i32 %45, 16
  %or.i60 = or i32 %shl3.i, %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i60) #5
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %46) #5, !srcloc !134
  %w.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 4
  %49 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %w.i, align 8
  %h.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 5
  %51 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %h.i, align 4
  %shl7.i = shl i32 %52, 16
  %or8.i = or i32 %shl7.i, %50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #5
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %55, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %53) #5, !srcloc !134
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %57, i32 20
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %59 = and i32 %58, 12583136
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  %pitch.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 6
  %61 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pitch.i, align 8
  %format.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %format.i, align 8
  %65 = getelementptr inbounds %struct.drm_format_info, ptr %64, i32 0, i32 3
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 2
  %conv.i = zext i8 %67 to i32
  %div.i = udiv i32 %62, %conv.i
  %height.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 3
  %68 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height.i, align 4
  %shl21.i = shl i32 %69, 16
  %or22.i63 = or i32 %div.i, %60
  %or23.i64 = or i32 %or22.i63, %shl21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %or23.i64) #5
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %72, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %70) #5, !srcloc !134
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %74, i32 16
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  %76 = and i32 %75, -12582913
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %78 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %w.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %79)
  %cmp.i65 = icmp ugt i32 %79, 1279
  %80 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %sc1.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i = icmp eq i8 %81, 0
  br i1 %cmp.i65, label %if.then.i66, label %if.else43.i

if.then.i66:                                      ; preds = %gsc_src_set_transf.exit
  br i1 %tobool.not.i, label %if.else.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #7
  %or41.i = or i32 %77, 49152
  br label %gsc_src_set_size.exit

if.else.i:                                        ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #7
  %or42.i = or i32 %77, 32768
  br label %gsc_src_set_size.exit

if.else43.i:                                      ; preds = %gsc_src_set_transf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or47.i = or i32 %77, 16384
  %spec.select.i67 = select i1 %tobool.not.i, i32 %77, i32 %or47.i
  br label %gsc_src_set_size.exit

gsc_src_set_size.exit:                            ; preds = %if.else43.i, %if.else.i, %if.then40.i
  %cfg.0.i68 = phi i32 [ %or41.i, %if.then40.i ], [ %or42.i, %if.else.i ], [ %spec.select.i67, %if.else43.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %82 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i68) #5
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %84, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %82) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %dma_addr.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4
  %85 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_addr.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %89, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %87) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %arrayidx4.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4, i32 1
  %90 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx4.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #5
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %94, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %92) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %arrayidx12.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4, i32 2
  %95 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx12.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #5
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %99, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %97) #5, !srcloc !134
  %100 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %101, i32 76
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  %103 = and i32 %102, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %105, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %103) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %106 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %107, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %103) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %109, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %103) #5, !srcloc !134
  %fourcc15 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  %110 = ptrtoint ptr %fourcc15 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fourcc15, align 4
  %modifier18 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 7
  %112 = ptrtoint ptr %modifier18 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %modifier18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %113)
  %tobool19.not = icmp eq i64 %113, 0
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %115, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %111) #5
  %116 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %117, i32 32
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  %119 = and i32 %118, -1883177216
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #5
  %121 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %111, label %gsc_src_set_size.exit.gsc_dst_set_fmt.exit_crit_edge [
    i32 909199186, label %sw.bb.i75
    i32 875713089, label %gsc_src_set_size.exit.sw.bb2.i_crit_edge
    i32 875713112, label %gsc_src_set_size.exit.sw.bb2.i_crit_edge147
    i32 875714626, label %sw.bb4.i77
    i32 1448695129, label %sw.bb6.i79
    i32 1431918169, label %sw.bb8.i81
    i32 1498831189, label %sw.bb10.i83
    i32 1498765654, label %sw.bb12.i85
    i32 825382478, label %sw.bb14.i87
    i32 825644622, label %sw.bb16.i89
    i32 909202777, label %sw.bb18.i91
    i32 842093913, label %sw.bb20.i93
    i32 842094169, label %sw.bb22.i95
    i32 842094158, label %sw.bb24.i97
    i32 909203022, label %sw.bb26.i99
  ]

gsc_src_set_size.exit.sw.bb2.i_crit_edge147:      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

gsc_src_set_size.exit.sw.bb2.i_crit_edge:         ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

gsc_src_set_size.exit.gsc_dst_set_fmt.exit_crit_edge: ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_dst_set_fmt.exit

sw.bb.i75:                                        ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i74 = or i32 %120, 16
  br label %gsc_dst_set_fmt.exit

sw.bb2.i:                                         ; preds = %gsc_src_set_size.exit.sw.bb2.i_crit_edge, %gsc_src_set_size.exit.sw.bb2.i_crit_edge147
  %or3.i = or i32 %120, -16777216
  br label %gsc_dst_set_fmt.exit

sw.bb4.i77:                                       ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or5.i76 = or i32 %120, 4096
  br label %gsc_dst_set_fmt.exit

sw.bb6.i79:                                       ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or7.i78 = or i32 %120, 64
  br label %gsc_dst_set_fmt.exit

sw.bb8.i81:                                       ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or9.i80 = or i32 %120, 320
  br label %gsc_dst_set_fmt.exit

sw.bb10.i83:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or11.i82 = or i32 %120, 576
  br label %gsc_dst_set_fmt.exit

sw.bb12.i85:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or13.i84 = or i32 %120, 832
  br label %gsc_dst_set_fmt.exit

sw.bb14.i87:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or15.i86 = or i32 %120, 288
  br label %gsc_dst_set_fmt.exit

sw.bb16.i89:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or17.i88 = or i32 %120, 336
  br label %gsc_dst_set_fmt.exit

sw.bb18.i91:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or19.i90 = or i32 %120, 96
  br label %gsc_dst_set_fmt.exit

sw.bb20.i93:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or21.i92 = or i32 %120, 48
  br label %gsc_dst_set_fmt.exit

sw.bb22.i95:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or23.i94 = or i32 %120, 304
  br label %gsc_dst_set_fmt.exit

sw.bb24.i97:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or25.i96 = or i32 %120, 32
  br label %gsc_dst_set_fmt.exit

sw.bb26.i99:                                      ; preds = %gsc_src_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or27.i98 = or i32 %120, 80
  br label %gsc_dst_set_fmt.exit

gsc_dst_set_fmt.exit:                             ; preds = %sw.bb26.i99, %sw.bb24.i97, %sw.bb22.i95, %sw.bb20.i93, %sw.bb18.i91, %sw.bb16.i89, %sw.bb14.i87, %sw.bb12.i85, %sw.bb10.i83, %sw.bb8.i81, %sw.bb6.i79, %sw.bb4.i77, %sw.bb2.i, %sw.bb.i75, %gsc_src_set_size.exit.gsc_dst_set_fmt.exit_crit_edge
  %cfg.0.i100 = phi i32 [ %120, %gsc_src_set_size.exit.gsc_dst_set_fmt.exit_crit_edge ], [ %or27.i98, %sw.bb26.i99 ], [ %or25.i96, %sw.bb24.i97 ], [ %or23.i94, %sw.bb22.i95 ], [ %or21.i92, %sw.bb20.i93 ], [ %or19.i90, %sw.bb18.i91 ], [ %or17.i88, %sw.bb16.i89 ], [ %or15.i86, %sw.bb14.i87 ], [ %or13.i84, %sw.bb12.i85 ], [ %or11.i82, %sw.bb10.i83 ], [ %or9.i80, %sw.bb8.i81 ], [ %or7.i78, %sw.bb6.i79 ], [ %or5.i76, %sw.bb4.i77 ], [ %or3.i, %sw.bb2.i ], [ %or.i74, %sw.bb.i75 ]
  %or28.i101 = or i32 %cfg.0.i100, 2
  %spec.select.i102 = select i1 %tobool19.not, i32 %cfg.0.i100, i32 %or28.i101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %122 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i102) #5
  %123 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i103 = getelementptr i8, ptr %124, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i103, i32 %122) #5, !srcloc !134
  %x.i105 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 2
  %125 = ptrtoint ptr %x.i105 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %x.i105, align 8
  %y.i106 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 3
  %127 = ptrtoint ptr %y.i106 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %y.i106, align 4
  %shl3.i107 = shl i32 %128, 16
  %or.i108 = or i32 %shl3.i107, %126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %129 = tail call i32 @llvm.bswap.i32(i32 %or.i108) #5
  %130 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %131, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %129) #5, !srcloc !134
  %132 = ptrtoint ptr %rotation50.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %rotation50.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i111 = icmp eq i8 %133, 0
  %h.i112 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 5
  %w.i113 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 4
  %.sink95.in.i = select i1 %tobool.not.i111, ptr %h.i112, ptr %w.i113
  %.sink.in.i = select i1 %tobool.not.i111, ptr %w.i113, ptr %h.i112
  %134 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %135 = ptrtoint ptr %.sink95.in.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.sink95.i = load i32, ptr %.sink95.in.i, align 4
  %shl7.i116 = shl i32 %.sink95.i, 16
  %or8.i117 = or i32 %shl7.i116, %.sink.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %136 = tail call i32 @llvm.bswap.i32(i32 %or8.i117) #5
  %137 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %138, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %136) #5, !srcloc !134
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %140, i32 64
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  %142 = and i32 %141, 14680288
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #5
  %pitch.i118 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 6
  %144 = ptrtoint ptr %pitch.i118 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pitch.i118, align 8
  %format.i119 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 3
  %146 = ptrtoint ptr %format.i119 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %format.i119, align 8
  %148 = getelementptr inbounds %struct.drm_format_info, ptr %147, i32 0, i32 3
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %148, align 2
  %conv.i120 = zext i8 %150 to i32
  %div.i121 = udiv i32 %145, %conv.i120
  %height.i122 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 3
  %151 = ptrtoint ptr %height.i122 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %height.i122, align 4
  %shl28.i = shl i32 %152, 16
  %or29.i = or i32 %div.i121, %143
  %or30.i = or i32 %or29.i, %shl28.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %153 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #5
  %154 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %155, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %153) #5, !srcloc !134
  %156 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %157, i32 32
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  %159 = and i32 %158, -786433
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #5
  %161 = ptrtoint ptr %w.i113 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %w.i113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %162)
  %cmp.i123 = icmp ugt i32 %162, 1279
  %163 = ptrtoint ptr %sc1.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %sc1.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool48.not.i = icmp eq i8 %164, 0
  br i1 %cmp.i123, label %if.then47.i, label %if.else54.i

if.then47.i:                                      ; preds = %gsc_dst_set_fmt.exit
  br i1 %tobool48.not.i, label %if.else51.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #7
  %or50.i = or i32 %160, 2048
  br label %gsc_dst_set_size.exit

if.else51.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #7
  %or52.i = or i32 %160, 3072
  br label %gsc_dst_set_size.exit

if.else54.i:                                      ; preds = %gsc_dst_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or60.i = or i32 %160, 1024
  %spec.select.i124 = select i1 %tobool48.not.i, i32 %or60.i, i32 %160
  br label %gsc_dst_set_size.exit

gsc_dst_set_size.exit:                            ; preds = %if.else54.i, %if.else51.i, %if.then49.i
  %cfg.1.i = phi i32 [ %or50.i, %if.then49.i ], [ %or52.i, %if.else51.i ], [ %spec.select.i124, %if.else54.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %165 = tail call i32 @llvm.bswap.i32(i32 %cfg.1.i) #5
  %166 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i, align 4
  %add.ptr67.i = getelementptr i8, ptr %167, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 %165) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %dma_addr.i125 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4
  %168 = ptrtoint ptr %dma_addr.i125 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dma_addr.i125, align 4
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #5
  %171 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %172, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %170) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %arrayidx4.i128 = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4, i32 1
  %173 = ptrtoint ptr %arrayidx4.i128 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx4.i128, align 4
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #5
  %176 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i129 = getelementptr i8, ptr %177, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i129, i32 %175) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %arrayidx12.i130 = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4, i32 2
  %178 = ptrtoint ptr %arrayidx12.i130 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx12.i130, align 4
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #5
  %181 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs.i, align 4
  %add.ptr16.i131 = getelementptr i8, ptr %182, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i131, i32 %180) #5, !srcloc !134
  tail call fastcc void @gsc_dst_set_buf_seq(ptr noundef %ipp, i32 noundef 0, i1 noundef zeroext true) #5
  %183 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %w.i, align 4
  %185 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %h.i, align 4
  %187 = ptrtoint ptr %rotation50.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %rotation50.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i135 = icmp eq i8 %188, 0
  %dst_w.0.in.i = select i1 %tobool.not.i135, ptr %w.i113, ptr %h.i112
  %dst_h.0.in.i = select i1 %tobool.not.i135, ptr %h.i112, ptr %w.i113
  %189 = ptrtoint ptr %dst_h.0.in.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %dst_h.0.i = load i32, ptr %dst_h.0.in.i, align 4
  %190 = ptrtoint ptr %dst_w.0.in.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %dst_w.0.i = load i32, ptr %dst_w.0.in.i, align 4
  %pre_hratio.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11, i32 2
  %191 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %192, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %184, i32 noundef %dst_w.0.i) #5
  %mul.i.i = shl i32 %dst_w.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %184)
  %cmp.not.i.i = icmp ugt i32 %mul.i.i, %184
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then6.i

if.else.i.i:                                      ; preds = %gsc_dst_set_size.exit
  %mul2.i.i = shl i32 %dst_w.0.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i.i, i32 %184)
  %cmp3.not.i.i = icmp ugt i32 %mul2.i.i, %184
  %mul6.i.i = shl i32 %dst_w.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i.i, i32 %184)
  %cmp7.not.i.i = icmp ugt i32 %mul6.i.i, %184
  %..i = select i1 %cmp7.not.i.i, i32 1, i32 2
  %.sink.i136 = select i1 %cmp3.not.i.i, i32 %..i, i32 4
  %193 = ptrtoint ptr %pre_hratio.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %.sink.i136, ptr %pre_hratio.i, align 4
  %pre_vratio.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11, i32 3
  %194 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %195, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %186, i32 noundef %dst_h.0.i) #5
  %mul.i2.i = shl i32 %dst_h.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i2.i, i32 %186)
  %cmp.not.i3.i = icmp ugt i32 %mul.i2.i, %186
  br i1 %cmp.not.i3.i, label %if.else.i7.i, label %if.then10.i

if.then6.i:                                       ; preds = %gsc_dst_set_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %196 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %197, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39) #5
  %198 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %199, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33) #5
  br label %gsc_set_prescaler.exit

if.else.i7.i:                                     ; preds = %if.else.i.i
  %mul2.i5.i = shl i32 %dst_h.0.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i5.i, i32 %186)
  %cmp3.not.i6.i = icmp ugt i32 %mul2.i5.i, %186
  %mul6.i9.i = shl i32 %dst_h.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul6.i9.i, i32 %186)
  %cmp7.not.i10.i = icmp ugt i32 %mul6.i9.i, %186
  %.23.i = select i1 %cmp7.not.i10.i, i32 1, i32 2
  %.sink22.i = select i1 %cmp3.not.i6.i, i32 %.23.i, i32 4
  %200 = ptrtoint ptr %pre_vratio.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %.sink22.i, ptr %pre_vratio.i, align 4
  %201 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev, align 4
  %203 = ptrtoint ptr %pre_hratio.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pre_hratio.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %202, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %204, i32 noundef %.sink22.i) #5
  %shl.i = shl i32 %184, 16
  %div.i137 = udiv i32 %shl.i, %dst_w.0.i
  %main_hratio.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11, i32 4
  %205 = ptrtoint ptr %main_hratio.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %div.i137, ptr %main_hratio.i, align 4
  %shl16.i = shl i32 %186, 16
  %div17.i = udiv i32 %shl16.i, %dst_h.0.i
  %main_vratio.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11, i32 5
  %206 = ptrtoint ptr %main_vratio.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %div17.i, ptr %main_vratio.i, align 4
  %207 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %208, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %div.i137, i32 noundef %div17.i) #5
  %209 = ptrtoint ptr %pre_hratio.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %pre_hratio.i, align 4
  %211 = ptrtoint ptr %pre_vratio.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pre_vratio.i, align 4
  %pre_shfactor.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %210)
  %cmp.i.i = icmp eq i32 %210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %212)
  %cmp1.i.i = icmp eq i32 %212, 4
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.else.i7.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, label %if.else.i16.i

if.else.i7.i.gsc_get_prescaler_shfactor.exit.i_crit_edge: ; preds = %if.else.i7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_get_prescaler_shfactor.exit.i

if.then10.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %213 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %214, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39) #5
  %215 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %216, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34) #5
  br label %gsc_set_prescaler.exit

if.else.i16.i:                                    ; preds = %if.else.i7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %212)
  %cmp4.i.i = icmp eq i32 %212, 2
  %or.cond47.i.i = and i1 %cmp.i.i, %cmp4.i.i
  br i1 %or.cond47.i.i, label %if.else.i16.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, label %lor.lhs.false.i.i

if.else.i16.i.gsc_get_prescaler_shfactor.exit.i_crit_edge: ; preds = %if.else.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_get_prescaler_shfactor.exit.i

lor.lhs.false.i.i:                                ; preds = %if.else.i16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %210)
  %cmp5.i.i = icmp eq i32 %210, 2
  %or.cond48.i.i = and i1 %cmp5.i.i, %cmp1.i.i
  br i1 %or.cond48.i.i, label %lor.lhs.false.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, label %if.else9.i17.i

lor.lhs.false.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_get_prescaler_shfactor.exit.i

if.else9.i17.i:                                   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %212)
  %cmp12.i.i = icmp eq i32 %212, 1
  %or.cond49.i.i = and i1 %cmp.i.i, %cmp12.i.i
  br i1 %or.cond49.i.i, label %if.else9.i17.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, label %lor.lhs.false13.i.i

if.else9.i17.i.gsc_get_prescaler_shfactor.exit.i_crit_edge: ; preds = %if.else9.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_get_prescaler_shfactor.exit.i

lor.lhs.false13.i.i:                              ; preds = %if.else9.i17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %210)
  %cmp14.i.i = icmp eq i32 %210, 1
  %or.cond50.i.i = and i1 %cmp14.i.i, %cmp1.i.i
  %or.cond51.i.i = and i1 %cmp5.i.i, %cmp4.i.i
  %or.cond53.i.i = or i1 %or.cond50.i.i, %or.cond51.i.i
  br i1 %or.cond53.i.i, label %lor.lhs.false13.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, label %if.else22.i.i

lor.lhs.false13.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge: ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gsc_get_prescaler_shfactor.exit.i

if.else22.i.i:                                    ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.cond52.i.i = and i1 %cmp14.i.i, %cmp12.i.i
  %not.or.cond52.i.i = xor i1 %or.cond52.i.i, true
  %..i.i = zext i1 %not.or.cond52.i.i to i32
  br label %gsc_get_prescaler_shfactor.exit.i

gsc_get_prescaler_shfactor.exit.i:                ; preds = %if.else22.i.i, %lor.lhs.false13.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, %if.else9.i17.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, %lor.lhs.false.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, %if.else.i16.i.gsc_get_prescaler_shfactor.exit.i_crit_edge, %if.else.i7.i.gsc_get_prescaler_shfactor.exit.i_crit_edge
  %.sink.i.i = phi i32 [ 4, %if.else.i7.i.gsc_get_prescaler_shfactor.exit.i_crit_edge ], [ 3, %lor.lhs.false.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge ], [ 3, %if.else.i16.i.gsc_get_prescaler_shfactor.exit.i_crit_edge ], [ 2, %lor.lhs.false13.i.i.gsc_get_prescaler_shfactor.exit.i_crit_edge ], [ 2, %if.else9.i17.i.gsc_get_prescaler_shfactor.exit.i_crit_edge ], [ %..i.i, %if.else22.i.i ]
  %217 = ptrtoint ptr %pre_shfactor.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %.sink.i.i, ptr %pre_shfactor.i, align 4
  %218 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %219, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %.sink.i.i) #5
  %220 = ptrtoint ptr %pre_shfactor.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %pre_shfactor.i, align 4
  %shl26.i = shl i32 %221, 28
  %222 = ptrtoint ptr %pre_hratio.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pre_hratio.i, align 4
  %or.i138 = or i32 %shl26.i, %223
  %224 = ptrtoint ptr %pre_vratio.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %pre_vratio.i, align 4
  %shl30.i = shl i32 %225, 16
  %or31.i = or i32 %or.i138, %shl30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %226 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #5
  %227 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %228, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %226) #5, !srcloc !134
  br label %gsc_set_prescaler.exit

gsc_set_prescaler.exit:                           ; preds = %gsc_get_prescaler_shfactor.exit.i, %if.then10.i, %if.then6.i
  %229 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %230, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 0, i32 noundef 1) #5
  %231 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i142 = getelementptr i8, ptr %232, i32 8
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i142) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %234 = and i32 %233, -117440513
  %235 = or i32 %234, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %236 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %237, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i, i32 %235) #5, !srcloc !134
  %238 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regs.i, align 4
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  %241 = and i32 %240, -268500993
  %242 = or i32 %241, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %243 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #5, !srcloc !134
  %245 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %246, i32 16
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  %248 = and i32 %247, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %249 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regs.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %250, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %248) #5, !srcloc !134
  %251 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %252, i32 32
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %254 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i143 = getelementptr i8, ptr %255, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i143, i32 %253) #5, !srcloc !134
  %256 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev, align 4
  %main_hratio.i.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11, i32 4
  %258 = ptrtoint ptr %main_hratio.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %main_hratio.i.i, align 4
  %main_vratio.i.i = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 11, i32 5
  %260 = ptrtoint ptr %main_vratio.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %main_vratio.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %257, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %259, i32 noundef %261) #5
  %262 = ptrtoint ptr %main_hratio.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %main_hratio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %263)
  %cmp.i.i.i = icmp ult i32 %263, 65537
  br i1 %cmp.i.i.i, label %gsc_set_prescaler.exit.if.end20.i.i.i_crit_edge, label %if.else.i.i.i

gsc_set_prescaler.exit.if.end20.i.i.i_crit_edge:  ; preds = %gsc_set_prescaler.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i.i

if.else.i.i.i:                                    ; preds = %gsc_set_prescaler.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 74899, i32 %263)
  %cmp1.i.i.i = icmp ult i32 %263, 74899
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.if.end20.i.i.i_crit_edge, label %if.else3.i.i.i

if.else.i.i.i.if.end20.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i.i

if.else3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 87382, i32 %263)
  %cmp4.i.i.i = icmp ult i32 %263, 87382
  br i1 %cmp4.i.i.i, label %if.else3.i.i.i.if.end20.i.i.i_crit_edge, label %if.else6.i.i.i

if.else3.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i.i

if.else6.i.i.i:                                   ; preds = %if.else3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 104858, i32 %263)
  %cmp7.i.i.i = icmp ult i32 %263, 104858
  br i1 %cmp7.i.i.i, label %if.else6.i.i.i.if.end20.i.i.i_crit_edge, label %if.else9.i.i.i

if.else6.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i.i

if.else9.i.i.i:                                   ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %263)
  %cmp10.i.i.i = icmp ult i32 %263, 131073
  br i1 %cmp10.i.i.i, label %if.else9.i.i.i.if.end20.i.i.i_crit_edge, label %if.else12.i.i.i

if.else9.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i.i.i

if.else12.i.i.i:                                  ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 174763, i32 %263)
  %cmp13.i.i.i = icmp ult i32 %263, 174763
  %..i.i.i = select i1 %cmp13.i.i.i, i32 5, i32 6
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.else12.i.i.i, %if.else9.i.i.i.if.end20.i.i.i_crit_edge, %if.else6.i.i.i.if.end20.i.i.i_crit_edge, %if.else3.i.i.i.if.end20.i.i.i_crit_edge, %if.else.i.i.i.if.end20.i.i.i_crit_edge, %gsc_set_prescaler.exit.if.end20.i.i.i_crit_edge
  %sc_ratio.0.i.i.i = phi i32 [ 0, %gsc_set_prescaler.exit.if.end20.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end20.i.i.i_crit_edge ], [ 2, %if.else3.i.i.i.if.end20.i.i.i_crit_edge ], [ 3, %if.else6.i.i.i.if.end20.i.i.i_crit_edge ], [ 4, %if.else9.i.i.i.if.end20.i.i.i_crit_edge ], [ %..i.i.i, %if.else12.i.i.i ]
  br label %for.cond22.preheader.i.i.i

for.cond22.preheader.i.i.i:                       ; preds = %for.inc37.i.i.i.for.cond22.preheader.i.i.i_crit_edge, %if.end20.i.i.i
  %i.055.i.i.i = phi i32 [ 0, %if.end20.i.i.i ], [ %inc38.i.i.i, %for.inc37.i.i.i.for.cond22.preheader.i.i.i_crit_edge ]
  %mul.i.i.i = shl i32 %i.055.i.i.i, 2
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 768
  br label %for.cond25.preheader.i.i.i

for.cond25.preheader.i.i.i:                       ; preds = %for.cond25.preheader.i.i.i.for.cond25.preheader.i.i.i_crit_edge, %for.cond22.preheader.i.i.i
  %j.054.i.i.i = phi i32 [ 0, %for.cond22.preheader.i.i.i ], [ %inc35.i.i.i, %for.cond25.preheader.i.i.i.for.cond25.preheader.i.i.i_crit_edge ]
  %arrayidx29.i.i.i = getelementptr [7 x [16 x [8 x i32]]], ptr @h_coef_8t, i32 0, i32 %sc_ratio.0.i.i.i, i32 %i.055.i.i.i, i32 %j.054.i.i.i
  %mul30.i.i.i = mul nuw nsw i32 %j.054.i.i.i, 48
  %add31.i.i.i = add nuw nsw i32 %add.i.i.i, %mul30.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %264 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx29.i.i.i, align 4
  %266 = tail call i32 @llvm.bswap.i32(i32 %265) #5
  %267 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %268, i32 %add31.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %266) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %269 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs.i, align 4
  %add33.1.i.i.i = add nuw nsw i32 %add31.i.i.i, 768
  %add.ptr.1.i.i.i = getelementptr i8, ptr %270, i32 %add33.1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i.i.i, i32 %266) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %271 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs.i, align 4
  %add33.2.i.i.i = add nuw nsw i32 %add31.i.i.i, 1536
  %add.ptr.2.i.i.i = getelementptr i8, ptr %272, i32 %add33.2.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i.i.i, i32 %266) #5, !srcloc !134
  %inc35.i.i.i = add nuw nsw i32 %j.054.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc35.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %for.inc37.i.i.i, label %for.cond25.preheader.i.i.i.for.cond25.preheader.i.i.i_crit_edge

for.cond25.preheader.i.i.i.for.cond25.preheader.i.i.i_crit_edge: ; preds = %for.cond25.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond25.preheader.i.i.i

for.inc37.i.i.i:                                  ; preds = %for.cond25.preheader.i.i.i
  %inc38.i.i.i = add nuw nsw i32 %i.055.i.i.i, 1
  %exitcond56.not.i.i.i = icmp eq i32 %inc38.i.i.i, 9
  br i1 %exitcond56.not.i.i.i, label %gsc_set_h_coef.exit.i.i, label %for.inc37.i.i.i.for.cond22.preheader.i.i.i_crit_edge

for.inc37.i.i.i.for.cond22.preheader.i.i.i_crit_edge: ; preds = %for.inc37.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond22.preheader.i.i.i

gsc_set_h_coef.exit.i.i:                          ; preds = %for.inc37.i.i.i
  %273 = ptrtoint ptr %main_hratio.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %main_hratio.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %275 = tail call i32 @llvm.bswap.i32(i32 %274) #5
  %276 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %regs.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %277, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %275) #5, !srcloc !134
  %278 = ptrtoint ptr %main_vratio.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %main_vratio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %279)
  %cmp.i21.i.i = icmp ult i32 %279, 65537
  br i1 %cmp.i21.i.i, label %gsc_set_h_coef.exit.i.i.if.end20.i35.i.i_crit_edge, label %if.else.i23.i.i

gsc_set_h_coef.exit.i.i.if.end20.i35.i.i_crit_edge: ; preds = %gsc_set_h_coef.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i35.i.i

if.else.i23.i.i:                                  ; preds = %gsc_set_h_coef.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 74899, i32 %279)
  %cmp1.i22.i.i = icmp ult i32 %279, 74899
  br i1 %cmp1.i22.i.i, label %if.else.i23.i.i.if.end20.i35.i.i_crit_edge, label %if.else3.i25.i.i

if.else.i23.i.i.if.end20.i35.i.i_crit_edge:       ; preds = %if.else.i23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i35.i.i

if.else3.i25.i.i:                                 ; preds = %if.else.i23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 87382, i32 %279)
  %cmp4.i24.i.i = icmp ult i32 %279, 87382
  br i1 %cmp4.i24.i.i, label %if.else3.i25.i.i.if.end20.i35.i.i_crit_edge, label %if.else6.i27.i.i

if.else3.i25.i.i.if.end20.i35.i.i_crit_edge:      ; preds = %if.else3.i25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i35.i.i

if.else6.i27.i.i:                                 ; preds = %if.else3.i25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 104858, i32 %279)
  %cmp7.i26.i.i = icmp ult i32 %279, 104858
  br i1 %cmp7.i26.i.i, label %if.else6.i27.i.i.if.end20.i35.i.i_crit_edge, label %if.else9.i29.i.i

if.else6.i27.i.i.if.end20.i35.i.i_crit_edge:      ; preds = %if.else6.i27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i35.i.i

if.else9.i29.i.i:                                 ; preds = %if.else6.i27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %279)
  %cmp10.i28.i.i = icmp ult i32 %279, 131073
  br i1 %cmp10.i28.i.i, label %if.else9.i29.i.i.if.end20.i35.i.i_crit_edge, label %if.else12.i32.i.i

if.else9.i29.i.i.if.end20.i35.i.i_crit_edge:      ; preds = %if.else9.i29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i35.i.i

if.else12.i32.i.i:                                ; preds = %if.else9.i29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 174763, i32 %279)
  %cmp13.i30.i.i = icmp ult i32 %279, 174763
  %..i31.i.i = select i1 %cmp13.i30.i.i, i32 5, i32 6
  br label %if.end20.i35.i.i

if.end20.i35.i.i:                                 ; preds = %if.else12.i32.i.i, %if.else9.i29.i.i.if.end20.i35.i.i_crit_edge, %if.else6.i27.i.i.if.end20.i35.i.i_crit_edge, %if.else3.i25.i.i.if.end20.i35.i.i_crit_edge, %if.else.i23.i.i.if.end20.i35.i.i_crit_edge, %gsc_set_h_coef.exit.i.i.if.end20.i35.i.i_crit_edge
  %sc_ratio.0.i33.i.i = phi i32 [ 0, %gsc_set_h_coef.exit.i.i.if.end20.i35.i.i_crit_edge ], [ 1, %if.else.i23.i.i.if.end20.i35.i.i_crit_edge ], [ 2, %if.else3.i25.i.i.if.end20.i35.i.i_crit_edge ], [ 3, %if.else6.i27.i.i.if.end20.i35.i.i_crit_edge ], [ 4, %if.else9.i29.i.i.if.end20.i35.i.i_crit_edge ], [ %..i31.i.i, %if.else12.i32.i.i ]
  br label %for.cond22.preheader.i47.i.i

for.cond22.preheader.i47.i.i:                     ; preds = %for.cond22.preheader.i47.i.i.for.cond22.preheader.i47.i.i_crit_edge, %if.end20.i35.i.i
  %i.055.i36.i.i = phi i32 [ 0, %if.end20.i35.i.i ], [ %inc38.i45.i.i, %for.cond22.preheader.i47.i.i.for.cond22.preheader.i47.i.i_crit_edge ]
  %mul.i37.i.i = shl i32 %i.055.i36.i.i, 2
  %add.i38.i.i = add nuw nsw i32 %mul.i37.i.i, 512
  %arrayidx29.i39.i.i = getelementptr [7 x [16 x [4 x i32]]], ptr @v_coef_4t, i32 0, i32 %sc_ratio.0.i33.i.i, i32 %i.055.i36.i.i, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %280 = ptrtoint ptr %arrayidx29.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx29.i39.i.i, align 4
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #5
  %283 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regs.i, align 4
  %add.ptr.i40.i.i = getelementptr i8, ptr %284, i32 %add.i38.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i.i, i32 %282) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %285 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %regs.i, align 4
  %add33.1.i41.i.i = add nuw nsw i32 %mul.i37.i.i, 1280
  %add.ptr.1.i42.i.i = getelementptr i8, ptr %286, i32 %add33.1.i41.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i42.i.i, i32 %282) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %287 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regs.i, align 4
  %add33.2.i43.i.i = add nuw nsw i32 %mul.i37.i.i, 2048
  %add.ptr.2.i44.i.i = getelementptr i8, ptr %288, i32 %add33.2.i43.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i44.i.i, i32 %282) #5, !srcloc !134
  %arrayidx29.1.i.i.i = getelementptr [7 x [16 x [4 x i32]]], ptr @v_coef_4t, i32 0, i32 %sc_ratio.0.i33.i.i, i32 %i.055.i36.i.i, i32 1
  %add31.1.i.i.i = add nuw nsw i32 %mul.i37.i.i, 560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %289 = ptrtoint ptr %arrayidx29.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx29.1.i.i.i, align 4
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #5
  %292 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs.i, align 4
  %add.ptr.156.i.i.i = getelementptr i8, ptr %293, i32 %add31.1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.156.i.i.i, i32 %291) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %294 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs.i, align 4
  %add33.1.1.i.i.i = add nuw nsw i32 %mul.i37.i.i, 1328
  %add.ptr.1.1.i.i.i = getelementptr i8, ptr %295, i32 %add33.1.1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.1.i.i.i, i32 %291) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %296 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %regs.i, align 4
  %add33.2.1.i.i.i = add nuw nsw i32 %mul.i37.i.i, 2096
  %add.ptr.2.1.i.i.i = getelementptr i8, ptr %297, i32 %add33.2.1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.1.i.i.i, i32 %291) #5, !srcloc !134
  %arrayidx29.2.i.i.i = getelementptr [7 x [16 x [4 x i32]]], ptr @v_coef_4t, i32 0, i32 %sc_ratio.0.i33.i.i, i32 %i.055.i36.i.i, i32 2
  %add31.2.i.i.i = add nuw nsw i32 %mul.i37.i.i, 608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %298 = ptrtoint ptr %arrayidx29.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx29.2.i.i.i, align 4
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #5
  %301 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs.i, align 4
  %add.ptr.257.i.i.i = getelementptr i8, ptr %302, i32 %add31.2.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.257.i.i.i, i32 %300) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %303 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regs.i, align 4
  %add33.1.2.i.i.i = add nuw nsw i32 %mul.i37.i.i, 1376
  %add.ptr.1.2.i.i.i = getelementptr i8, ptr %304, i32 %add33.1.2.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.2.i.i.i, i32 %300) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %305 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %regs.i, align 4
  %add33.2.2.i.i.i = add nuw nsw i32 %mul.i37.i.i, 2144
  %add.ptr.2.2.i.i.i = getelementptr i8, ptr %306, i32 %add33.2.2.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.2.i.i.i, i32 %300) #5, !srcloc !134
  %arrayidx29.3.i.i.i = getelementptr [7 x [16 x [4 x i32]]], ptr @v_coef_4t, i32 0, i32 %sc_ratio.0.i33.i.i, i32 %i.055.i36.i.i, i32 3
  %add31.3.i.i.i = add nuw nsw i32 %mul.i37.i.i, 656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %307 = ptrtoint ptr %arrayidx29.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx29.3.i.i.i, align 4
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #5
  %310 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs.i, align 4
  %add.ptr.3.i.i.i = getelementptr i8, ptr %311, i32 %add31.3.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i.i.i, i32 %309) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %312 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regs.i, align 4
  %add33.1.3.i.i.i = add nuw nsw i32 %mul.i37.i.i, 1424
  %add.ptr.1.3.i.i.i = getelementptr i8, ptr %313, i32 %add33.1.3.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.3.i.i.i, i32 %309) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %314 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regs.i, align 4
  %add33.2.3.i.i.i = add nuw nsw i32 %mul.i37.i.i, 2192
  %add.ptr.2.3.i.i.i = getelementptr i8, ptr %315, i32 %add33.2.3.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.3.i.i.i, i32 %309) #5, !srcloc !134
  %inc38.i45.i.i = add nuw nsw i32 %i.055.i36.i.i, 1
  %exitcond.not.i46.i.i = icmp eq i32 %inc38.i45.i.i, 9
  br i1 %exitcond.not.i46.i.i, label %gsc_start.exit, label %for.cond22.preheader.i47.i.i.for.cond22.preheader.i47.i.i_crit_edge

for.cond22.preheader.i47.i.i.for.cond22.preheader.i47.i.i_crit_edge: ; preds = %for.cond22.preheader.i47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond22.preheader.i47.i.i

gsc_start.exit:                                   ; preds = %for.cond22.preheader.i47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %316 = ptrtoint ptr %main_vratio.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %main_vratio.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %318 = tail call i32 @llvm.bswap.i32(i32 %317) #5
  %319 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %320, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %318) #5, !srcloc !134
  %321 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs.i, align 4
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  %324 = or i32 %323, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %325 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %324) #5, !srcloc !134
  br label %cleanup

cleanup:                                          ; preds = %gsc_start.exit, %if.then4, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call3, %if.then4 ], [ 0, %gsc_start.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gsc_abort(ptr nocapture noundef %ipp, ptr nocapture noundef readnone %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gsc_reset(ptr noundef %ipp)
  %task1 = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 4
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %task1, align 4
  %dev = getelementptr inbounds %struct.gsc_context, ptr %ipp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 22
  %5 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #5
  tail call void @exynos_drm_ipp_task_done(ptr noundef nonnull %1, i32 noundef -5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsc_reset(ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %regs.i = getelementptr inbounds %struct.gsc_context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !134
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec74.i = phi i32 [ 49, %entry ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not.i = icmp eq i32 %4, 0
  br i1 %tobool4.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %dec.i = add nsw i32 %dec74.i, -1
  %tobool.not.i = icmp eq i32 %dec74.i, 0
  br i1 %tobool.not.i, label %do.end, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.gsc_context, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31) #5
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.29) #8
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %10, i32 76
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  %12 = or i32 %11, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %12) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %16, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %12) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %18, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %12) #5, !srcloc !134
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %20, i32 268
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #5, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  %22 = or i32 %21, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %24, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %22) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %26, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %22) #5, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %28, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %22) #5, !srcloc !134
  %sc1 = getelementptr inbounds %struct.gsc_context, ptr %ctx, i32 0, i32 11
  %29 = call ptr @memset(ptr %sc1, i32 0, i32 24)
  %30 = ptrtoint ptr %sc1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %sc1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @gsc_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %3) #5
  %num_clocks = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks, align 4
  %i.06 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.06)
  %cmp7 = icmp sgt i32 %i.06, -1
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.06, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_context, ptr %1, i32 0, i32 9, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %i.0 = add nsw i32 %i.08, -1
  %cmp = icmp sgt i32 %i.08, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsc_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %3) #5
  %num_clocks = getelementptr inbounds %struct.gsc_context, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24 = icmp sgt i32 %5, 0
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_context, ptr %1, i32 0, i32 9, i32 %i.025
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.clk_prepare_enable.exit_crit_edge

for.body.clk_prepare_enable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %for.body.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.clk_prepare_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.025)
  %cmp227 = icmp ugt i32 %i.025, 1
  br i1 %cmp227, label %clk_prepare_enable.exit.while.body_crit_edge, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

clk_prepare_enable.exit.while.body_crit_edge:     ; preds = %clk_prepare_enable.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %clk_prepare_enable.exit.while.body_crit_edge
  %dec28.in = phi i32 [ %dec28, %while.body.while.body_crit_edge ], [ %i.025, %clk_prepare_enable.exit.while.body_crit_edge ]
  %dec28 = add nsw i32 %dec28.in, -1
  %arrayidx4 = getelementptr %struct.gsc_context, ptr %1, i32 0, i32 9, i32 %dec28
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  %cmp2 = icmp sgt i32 %dec28.in, 2
  br i1 %cmp2, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.025, 1
  %10 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clocks, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1426, i32 11}
!2 = !{ptr @gsc_driver, !3, !"gsc_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1422, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1266, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gsc_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gsc_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1284, i32 3}
!14 = !{ptr @gsc_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gsc_probe._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1301, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gsc_probe._entry.9, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @gsc_probe._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @gsc_formats, !22, !"gsc_formats", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1205, i32 27}
!23 = distinct !{null, !24, !"gsc_tiled_formats", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1213, i32 27}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1026, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1030, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gsc_irq_handler._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @gsc_irq_handler._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1038, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @gsc_irq_handler.__UNIQUE_ID_ddebug307, !33, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1044, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 977, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 981, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1008, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 918, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 423, i32 2}
!48 = !{ptr @gsc_component_ops, !49, !"gsc_component_ops", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1200, i32 35}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1182, i32 36}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1184, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @gsc_bind._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @gsc_bind._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ipp_funcs, !58, !"ipp_funcs", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1164, i32 36}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1121, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @gsc_commit._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @gsc_commit._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1071, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @gsc_reset._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @gsc_reset._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 396, i32 3}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 452, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 763, i32 3}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 769, i32 3}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 773, i32 2}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 779, i32 2}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 785, i32 2}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 710, i32 2}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 713, i32 3}
!87 = !{ptr @h_coef_8t, !88, !"h_coef_8t", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 131, i32 18}
!89 = !{ptr @v_coef_4t, !90, !"v_coef_4t", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 255, i32 18}
!91 = !{ptr @exynos_drm_gsc_of_match, !92, !"exynos_drm_gsc_of_match", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1404, i32 34}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1384, i32 16}
!95 = !{ptr @gsc_exynos5250_drvdata, !96, !"gsc_exynos5250_drvdata", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1383, i32 30}
!97 = !{ptr @gsc_5250_limits, !98, !"gsc_5250_limits", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1359, i32 42}
!99 = !{ptr @gsc_exynos5420_drvdata, !100, !"gsc_exynos5420_drvdata", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1390, i32 30}
!101 = !{ptr @gsc_5420_limits, !102, !"gsc_5420_limits", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1367, i32 42}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1398, i32 16}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1398, i32 24}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1398, i32 32}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1398, i32 44}
!111 = !{ptr @gsc_exynos5433_drvdata, !112, !"gsc_exynos5433_drvdata", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1397, i32 30}
!113 = !{ptr @gsc_5433_limits, !114, !"gsc_5433_limits", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1375, i32 42}
!115 = !{ptr @gsc_pm_ops, !116, !"gsc_pm_ops", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1353, i32 32}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/exynos/exynos_drm_gsc.c", i32 1327, i32 2}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 5127223}
!129 = !{i64 2156688886}
!130 = !{i64 2148757831, i64 2148757836, i64 2148757849, i64 2148757893, i64 2148757927, i64 2148757948}
!131 = !{i64 2156687094}
!132 = !{i64 2156668561}
!133 = !{i64 2156668826}
!134 = !{i64 5126805}
!135 = !{i64 2156669269}
!136 = !{i64 2156669712}
!137 = !{i64 2156687993}
!138 = !{i64 2156683342}
!139 = !{i64 2156683610}
!140 = !{i64 2156684057}
!141 = !{i64 2156684504}
!142 = !{i64 2156659709}
!143 = !{i64 2156660046}
!144 = !{i64 2148275435}
!145 = !{i64 760258, i64 760283, i64 760305, i64 760321, i64 760333, i64 760353, i64 760377, i64 760393, i64 760405}
!146 = !{i64 2148275623}
!147 = !{i64 2156660836}
!148 = !{i64 2156663422}
!149 = !{i64 2156664267}
!150 = !{i64 2156664736}
!151 = !{i64 2156665236}
!152 = !{i64 2156665726}
!153 = !{i64 2156666440}
!154 = !{i64 2156666813}
!155 = !{i64 2156667527}
!156 = !{i8 0, i8 2}
!157 = !{i64 2156667847}
!158 = !{i64 2156670244}
!159 = !{i64 2156670836}
!160 = !{i64 2156671428}
!161 = !{i64 2156672278}
!162 = !{i64 2156674860}
!163 = !{i64 2156679334}
!164 = !{i64 2156679871}
!165 = !{i64 2156680585}
!166 = !{i64 2156680958}
!167 = !{i64 2156681672}
!168 = !{i64 2156681992}
!169 = !{i64 2156685044}
!170 = !{i64 2156685640}
!171 = !{i64 2156686236}
!172 = !{i64 2156676196}
!173 = !{i64 2156695458}
!174 = !{i64 2156695750}
!175 = !{i64 2156696464}
!176 = !{i64 2156696756}
!177 = !{i64 2156697470}
!178 = !{i64 2156697744}
!179 = !{i64 2156676872}
!180 = !{i64 2156678374}
!181 = !{i64 2156677662}
!182 = !{i64 2156678844}
!183 = !{i64 2156698458}
!184 = !{i64 2156698732}
!185 = !{i64 2156654418}
!186 = !{i64 2156655132}
!187 = !{i64 2156655790}
!188 = !{i64 2156656081}
!189 = !{i64 2156656524}
!190 = !{i64 2156656967}
!191 = !{i64 2156657687}
!192 = !{i64 2156657983}
!193 = !{i64 2156658430}
!194 = !{i64 2156658877}
