; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/exynos/exynos_drm_fimc.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_fimc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_exynos_ipp_limit = type { i32, i32, %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val }
%struct.drm_exynos_ipp_limit_val = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.exynos_drm_ipp_funcs = type { ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fimc_context = type { %struct.exynos_drm_ipp, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.spinlock, [4 x ptr], %struct.fimc_scaler, i32, i32 }
%struct.exynos_drm_ipp = type { ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.fimc_scaler = type { i8, i8, i8, i8, i32, i32 }
%struct.exynos_drm_ipp_formats = type { i32, i32, i64, ptr, i32 }
%struct.exynos_drm_ipp_task = type { ptr, ptr, %struct.list_head, %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer, %struct.drm_exynos_ipp_task_transform, %struct.drm_exynos_ipp_task_alpha, %struct.work_struct, i32, i32, ptr }
%struct.exynos_drm_ipp_buffer = type { %struct.drm_exynos_ipp_task_buffer, %struct.drm_exynos_ipp_task_rect, [4 x ptr], ptr, [4 x i32] }
%struct.drm_exynos_ipp_task_buffer = type { i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], i64 }
%struct.drm_exynos_ipp_task_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_exynos_ipp_task_transform = type { i32, i32 }
%struct.drm_exynos_ipp_task_alpha = type { i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.85, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.85 = type { [4 x i8] }

@__param_str_fimc_devs = internal constant [20 x i8] c"exynosdrm.fimc_devs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fimc_mask = internal global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@__param_fimc_devs = internal constant %struct.kernel_param { ptr @__param_str_fimc_devs, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @fimc_mask } }, section "__param", align 4
@__UNIQUE_ID_fimc_devstype307 = internal constant [34 x i8] c"exynosdrm.parmtype=fimc_devs:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_fimc_devs308 = internal constant [77 x i8] c"exynosdrm.parm=fimc_devs:Alias mask for assigning FIMC devices to Exynos DRM\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fimc\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exynos-drm-fimc\00", [16 x i8] zeroinitializer }, align 32
@fimc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@fimc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_runtime_suspend, ptr @fimc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fimc_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fimc_probe, ptr @fimc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fimc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@fimc_4210_limits_v1 = internal constant { [4 x %struct.drm_exynos_ipp_limit], [32 x i8] } { [4 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 8, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 4224, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 0, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 196609, i32 0, %struct.drm_exynos_ipp_limit_val { i32 128, i32 1920, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 128, i32 0, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 } }], [32 x i8] zeroinitializer }, align 32
@fimc_4210_limits_v2 = internal constant { [4 x %struct.drm_exynos_ipp_limit], [32 x i8] } { [4 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 8, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 8192, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 16, i32 1920, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 16, i32 0, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 196609, i32 0, %struct.drm_exynos_ipp_limit_val { i32 128, i32 1366, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 128, i32 0, i32 0, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 } }], [32 x i8] zeroinitializer }, align 32
@fimc_formats = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 875713112, i32 909199186, i32 842094158, i32 909203022, i32 825382478, i32 825644622, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 842093913, i32 842094169, i32 909202777, i32 875713881], [40 x i8] zeroinitializer }, align 32
@fimc_4210_limits_tiled_v1 = internal constant { [3 x %struct.drm_exynos_ipp_limit], [40 x i8] } { [3 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 128, i32 1920, i32 128, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 32, i32 1920, i32 32, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 128, i32 1920, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 128, i32 0, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 } }], [40 x i8] zeroinitializer }, align 32
@fimc_4210_limits_tiled_v2 = internal constant { [3 x %struct.drm_exynos_ipp_limit], [40 x i8] } { [3 x %struct.drm_exynos_ipp_limit] [%struct.drm_exynos_ipp_limit { i32 65537, i32 0, %struct.drm_exynos_ipp_limit_val { i32 128, i32 1920, i32 128, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 32, i32 1920, i32 32, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 131073, i32 0, %struct.drm_exynos_ipp_limit_val { i32 128, i32 1366, i32 2, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 128, i32 0, i32 2, i32 0 } }, %struct.drm_exynos_ipp_limit { i32 2, i32 0, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 }, %struct.drm_exynos_ipp_limit_val { i32 1024, i32 4194304, i32 0, i32 0 } }], [40 x i8] zeroinitializer }, align 32
@fimc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to request irq.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fimc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/exynos/exynos_drm_fimc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fimc_probe._entry_ptr = internal global ptr @fimc_probe._entry, section ".printk_index", align 4
@fimc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@fimc_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @fimc_bind, ptr @fimc_unbind }, [24 x i8] zeroinitializer }, align 32
@fimc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1358, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drm fimc registered successfully.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fimc_probe._entry_ptr.11 = internal global ptr @fimc_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fimc id[%d]\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buf_id[%d]\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flag[0x%x]\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* occurred overflow at %d, status 0x%x.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cfg[0x%x]\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"present[%d]before[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to get frame count.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"buf_id[%d]enqueu[%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable[%d]\0A\00", [20 x i8] zeroinitializer }, align 32
@fimc_setup_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fimc_setup_clocks\00", [46 x i8] zeroinitializer }, align 32
@fimc_setup_clocks._entry_ptr = internal global ptr @fimc_setup_clocks._entry, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sclk_fimc\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxl_async0\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxl_async1\00", [21 x i8] zeroinitializer }, align 32
@ipp_funcs = internal global { %struct.exynos_drm_ipp_funcs, [24 x i8] } { %struct.exynos_drm_ipp_funcs { ptr @fimc_commit, ptr @fimc_abort }, [24 x i8] zeroinitializer }, align 32
@fimc_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 1148, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"The exynos fimc has been probed successfully\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fimc_bind\00", [22 x i8] zeroinitializer }, align 32
@fimc_bind._entry_ptr = internal global ptr @fimc_bind._entry, section ".printk_index", align 4
@fimc_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1090, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable FIMC device.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fimc_commit\00", [20 x i8] zeroinitializer }, align 32
@fimc_commit._entry_ptr = internal global ptr @fimc_commit._entry, section ".printk_index", align 4
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fmt[0x%x]\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hsize[%d]vsize[%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"x[%d]y[%d]w[%d]h[%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"x[%d]y[%d]w[%d]h[%d]hsize[%d]vsize[%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"h1[%d]h2[%d]v1[%d]v2[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rotation[%x]\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rotation[0x%x]\0A\00", [16 x i8] zeroinitializer }, align 32
@fimc_set_prescaler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get ratio horizontal.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fimc_set_prescaler\00", [45 x i8] zeroinitializer }, align 32
@fimc_set_prescaler._entry_ptr = internal global ptr @fimc_set_prescaler._entry, section ".printk_index", align 4
@fimc_set_prescaler._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 772, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get ratio vertical.\0A\00", [33 x i8] zeroinitializer }, align 32
@fimc_set_prescaler._entry_ptr.41 = internal global ptr @fimc_set_prescaler._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pre_dst_width[%d]pre_dst_height[%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hfactor[%d]vfactor[%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"hratio[%d]vratio[%d]up_h[%d]up_v[%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shfactor[%d]\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"range[%d]bypass[%d]up_h[%d]up_v[%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hratio[%d]vratio[%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id[%d]\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 825644622, i64 875710290, i64 875713112, i64 909199186, i64 909202777, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 875710290, i64 875713112, i64 909199186]
@__sancov_gen_cov_switch_values.50 = internal global [9 x i64] [i64 7, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.51 = internal global [12 x i64] [i64 10, i64 32, i64 825644622, i64 875710290, i64 875713112, i64 909199186, i64 909202777, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 875710290, i64 875713112, i64 909199186]
@__sancov_gen_cov_switch_values.53 = internal global [9 x i64] [i64 7, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"fimc_mask\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 45, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1215, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1421, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"fimc_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1409, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"fimc_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1403, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"fimc_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1416, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"fimc_4210_limits_v1\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1234, i32 42 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"fimc_4210_limits_v2\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1242, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"fimc_formats\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1222, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"fimc_4210_limits_tiled_v1\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1250, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"fimc_4210_limits_tiled_v2\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1257, i32 42 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1339, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1347, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"fimc_component_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1164, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1358, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 951, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 964, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 225, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 232, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 247, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 269, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 274, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 911, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 201, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1199, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 60, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 62, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 63, i32 22 }
@___asan_gen_.169 = private unnamed_addr constant [10 x i8] c"ipp_funcs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1128, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1148, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1090, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 368, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 508, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 517, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 479, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 482, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 421, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 694, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 766, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 772, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 778, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 780, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 787, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 791, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 809, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 811, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [44 x i8] c"../drivers/gpu/drm/exynos/exynos_drm_fimc.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1389, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_fimc_devs308, ptr @__UNIQUE_ID_fimc_devstype307, ptr @__param_fimc_devs, ptr @fimc_bind._entry, ptr @fimc_bind._entry_ptr, ptr @fimc_commit._entry, ptr @fimc_commit._entry_ptr, ptr @fimc_probe._entry, ptr @fimc_probe._entry.8, ptr @fimc_probe._entry_ptr, ptr @fimc_probe._entry_ptr.11, ptr @fimc_set_prescaler._entry, ptr @fimc_set_prescaler._entry.39, ptr @fimc_set_prescaler._entry_ptr, ptr @fimc_set_prescaler._entry_ptr.41, ptr @fimc_setup_clocks._entry, ptr @fimc_setup_clocks._entry_ptr, ptr @fimc_mask, ptr @.str, ptr @.str.1, ptr @fimc_of_match, ptr @fimc_pm_ops, ptr @fimc_driver, ptr @fimc_4210_limits_v1, ptr @fimc_4210_limits_v2, ptr @fimc_formats, ptr @fimc_4210_limits_tiled_v1, ptr @fimc_4210_limits_tiled_v2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fimc_probe.__key, ptr @.str.7, ptr @fimc_component_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ipp_funcs, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_4210_limits_v1 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_4210_limits_v2 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_formats to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_4210_limits_tiled_v1 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_4210_limits_tiled_v2 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_setup_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_set_prescaler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fimc_set_prescaler._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_check_fimc_device(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %shl = shl nuw i32 1, %call
  %2 = load i32, ptr @fimc_mask, align 4
  %and = and i32 %2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %shl.i = shl nuw i32 1, %call.i
  %2 = load i32, ptr @fimc_mask, align 4
  %and.i = and i32 %2, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %call.i152 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 260, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i152, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.fimc_context, ptr %call.i152, i32 0, i32 3
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev5, align 4
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call6 = tail call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str) #5
  %id = getelementptr inbounds %struct.fimc_context, ptr %call.i152, i32 0, i32 11
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call6, ptr %id, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 384, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp12 = icmp slt i32 %8, 3
  %fimc_4210_limits_v1.fimc_4210_limits_v2 = select i1 %cmp12, ptr @fimc_4210_limits_v1, ptr @fimc_4210_limits_v2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10
  %i.0176 = phi i32 [ 0, %if.end10 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [14 x i32], ptr @fimc_formats, i32 0, i32 %i.0176
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0176
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx16, align 8
  %type = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0176, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %type, align 4
  %limits19 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0176, i32 3
  %13 = ptrtoint ptr %limits19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fimc_4210_limits_v1.fimc_4210_limits_v2, ptr %limits19, align 8
  %num_limits21 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 %i.0176, i32 4
  %14 = ptrtoint ptr %num_limits21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %num_limits21, align 4
  %inc = add nuw nsw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %fimc_4210_limits_tiled_v1.fimc_4210_limits_tiled_v2 = select i1 %cmp12, ptr @fimc_4210_limits_tiled_v1, ptr @fimc_4210_limits_tiled_v2
  %arrayidx31 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 14
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 842094158, ptr %arrayidx31, align 8
  %modifier = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 14, i32 2
  %16 = ptrtoint ptr %modifier to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 288230376151711745, ptr %modifier, align 8
  %type35 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 14, i32 1
  %17 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %type35, align 4
  %limits37 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 14, i32 3
  %18 = ptrtoint ptr %limits37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fimc_4210_limits_tiled_v1.fimc_4210_limits_tiled_v2, ptr %limits37, align 8
  %num_limits39 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 14, i32 4
  %19 = ptrtoint ptr %num_limits39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %num_limits39, align 4
  %arrayidx31.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15
  %20 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 825382478, ptr %arrayidx31.1, align 8
  %modifier.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 2
  %21 = ptrtoint ptr %modifier.1 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 288230376151711745, ptr %modifier.1, align 8
  %type35.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 1
  %22 = ptrtoint ptr %type35.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %type35.1, align 4
  %limits37.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 3
  %23 = ptrtoint ptr %limits37.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fimc_4210_limits_tiled_v1.fimc_4210_limits_tiled_v2, ptr %limits37.1, align 8
  %num_limits39.1 = getelementptr %struct.exynos_drm_ipp_formats, ptr %call5.i.i, i32 15, i32 4
  %24 = ptrtoint ptr %num_limits39.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %num_limits39.1, align 4
  %formats44 = getelementptr inbounds %struct.fimc_context, ptr %call.i152, i32 0, i32 5
  %25 = ptrtoint ptr %formats44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i, ptr %formats44, align 4
  %num_formats45 = getelementptr inbounds %struct.fimc_context, ptr %call.i152, i32 0, i32 6
  %26 = ptrtoint ptr %num_formats45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %num_formats45, align 4
  %call46 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.fimc_context, ptr %call.i152, i32 0, i32 7
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call46, ptr %regs, align 4
  %cmp.i153 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then49, label %if.end52

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end52:                                         ; preds = %for.end
  %call53 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i154 = icmp eq ptr %30, null
  br i1 %tobool.not.i154, label %if.end.i155, label %if.end56.dev_name.exit_crit_edge

if.end56.dev_name.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i155:                                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i155, %if.end56.dev_name.exit_crit_edge
  %retval.0.i156 = phi ptr [ %32, %if.end.i155 ], [ %30, %if.end56.dev_name.exit_crit_edge ]
  %call.i157 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call53, ptr noundef nonnull @fimc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i156, ptr noundef nonnull %call.i152) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp59 = icmp slt i32 %call.i157, 0
  br i1 %cmp59, label %do.end, label %if.end61

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end61:                                         ; preds = %dev_name.exit
  %33 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev5, align 4
  %arrayidx.i = getelementptr %struct.fimc_context, ptr %call.i152, i32 0, i32 9, i32 0
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.fimc_context, ptr %call.i152, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.fimc_context, ptr %call.i152, i32 0, i32 9, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.fimc_context, ptr %call.i152, i32 0, i32 9, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.3.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %call8.i = tail call ptr @clk_get(ptr noundef %34, ptr noundef nonnull @.str.23) #5
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end61.if.then14.i_crit_edge, label %if.end.1.i

if.end61.if.then14.i_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.end.1.i:                                       ; preds = %if.end61
  %call8.1.i = tail call ptr @clk_get(ptr noundef %34, ptr noundef nonnull @.str) #5
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.1.i, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call8.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end.1.i.if.then14.i_crit_edge, label %if.end.2.i

if.end.1.i.if.then14.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.end.2.i:                                       ; preds = %if.end.1.i
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent.i, align 8
  %call8.2.i = tail call ptr @clk_get(ptr noundef %42, ptr noundef nonnull @.str.24) #5
  %43 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.2.i, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call8.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %if.end.2.i.if.then14.i_crit_edge, label %if.end.3.i

if.end.2.i.if.then14.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.end.3.i:                                       ; preds = %if.end.2.i
  %44 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i, align 8
  %call8.3.i = tail call ptr @clk_get(ptr noundef %45, ptr noundef nonnull @.str.25) #5
  %46 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.3.i, ptr %arrayidx.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call8.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %if.end.3.i.if.then14.i_crit_edge, label %for.cond2.3.i

if.end.3.i.if.then14.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

for.cond2.3.i:                                    ; preds = %if.end.3.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.cond2.3.i.e_clk_free.i_crit_edge

for.cond2.3.i.e_clk_free.i_crit_edge:             ; preds = %for.cond2.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %e_clk_free.i

if.then14.i:                                      ; preds = %if.end.3.i.if.then14.i_crit_edge, %if.end.2.i.if.then14.i_crit_edge, %if.end.1.i.if.then14.i_crit_edge, %if.end61.if.then14.i_crit_edge
  %.lcssa58.i = phi ptr [ @.str.23, %if.end61.if.then14.i_crit_edge ], [ @.str, %if.end.1.i.if.then14.i_crit_edge ], [ @.str.24, %if.end.2.i.if.then14.i_crit_edge ], [ @.str.25, %if.end.3.i.if.then14.i_crit_edge ]
  %call8.lcssa57.i = phi ptr [ %call8.i, %if.end61.if.then14.i_crit_edge ], [ %call8.1.i, %if.end.1.i.if.then14.i_crit_edge ], [ %call8.2.i, %if.end.2.i.if.then14.i_crit_edge ], [ %call8.3.i, %if.end.3.i.if.then14.i_crit_edge ]
  %49 = ptrtoint ptr %call8.lcssa57.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.21, ptr noundef nonnull %.lcssa58.i) #8
  br label %e_clk_free.i

if.end.i.i:                                       ; preds = %for.cond2.3.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body66_crit_edge, label %if.then3.i.i

if.end.i.i.do.body66_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %48) #5
  br label %e_clk_free.i

e_clk_free.i:                                     ; preds = %if.then3.i.i, %if.then14.i, %for.cond2.3.i.e_clk_free.i_crit_edge
  %ret.0.i = phi i32 [ %49, %if.then14.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %for.cond2.3.i.e_clk_free.i_crit_edge ]
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i.i = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %e_clk_free.i.for.inc.i.i_crit_edge, label %if.end.i52.i

e_clk_free.i.for.inc.i.i_crit_edge:               ; preds = %e_clk_free.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i52.i:                                     ; preds = %e_clk_free.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %51) #5
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i52.i, %e_clk_free.i.for.inc.i.i_crit_edge
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i.i = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %54) #5
  %55 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i.i = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %57) #5
  %58 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %59 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.3.i.i = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i.i, label %for.inc.2.i.i.fimc_setup_clocks.exit_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.fimc_setup_clocks.exit_crit_edge:   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fimc_setup_clocks.exit

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %60) #5
  %61 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.3.i, align 4
  br label %fimc_setup_clocks.exit

fimc_setup_clocks.exit:                           ; preds = %if.end.3.i.i, %for.inc.2.i.i.fimc_setup_clocks.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp63 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp63, label %fimc_setup_clocks.exit.cleanup_crit_edge, label %fimc_setup_clocks.exit.do.body66_crit_edge

fimc_setup_clocks.exit.do.body66_crit_edge:       ; preds = %fimc_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

fimc_setup_clocks.exit.cleanup_crit_edge:         ; preds = %fimc_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body66:                                        ; preds = %fimc_setup_clocks.exit.do.body66_crit_edge, %if.end.i.i.do.body66_crit_edge
  %lock = getelementptr inbounds %struct.fimc_context, ptr %call.i152, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @fimc_probe.__key, i16 noundef signext 3) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i152, ptr %driver_data.i.i, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 2000) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call70 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @fimc_component_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.end76, label %err_pm_dis

do.end76:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

err_pm_dis:                                       ; preds = %do.body66
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i161 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i161, label %err_pm_dis.for.inc.i_crit_edge, label %if.end.i162

err_pm_dis.for.inc.i_crit_edge:                   ; preds = %err_pm_dis
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i162:                                      ; preds = %err_pm_dis
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %64) #5
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i162, %err_pm_dis.for.inc.i_crit_edge
  %66 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i164 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i164, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i165

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end.1.i165:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %67) #5
  %68 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i165, %for.inc.i.for.inc.1.i_crit_edge
  %69 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i167 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i167, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i168

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.end.2.i168:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %70) #5
  %71 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i168, %for.inc.1.i.for.inc.2.i_crit_edge
  %72 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.3.i170 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i170, label %for.inc.2.i.cleanup_crit_edge, label %if.end.3.i171

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.i171:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %73) #5
  %74 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.3.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.3.i171, %for.inc.2.i.cleanup_crit_edge, %do.end76, %fimc_setup_clocks.exit.cleanup_crit_edge, %do.end, %if.end52.cleanup_crit_edge, %if.then49, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then49 ], [ %call.i157, %do.end ], [ 0, %do.end76 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %ret.0.i, %fimc_setup_clocks.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %land.lhs.true.i.cleanup_crit_edge ], [ %call70, %for.inc.2.i.cleanup_crit_edge ], [ %call70, %if.end.3.i171 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @component_del(ptr noundef %dev1, ptr noundef nonnull @fimc_component_ops) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %arrayidx.i = getelementptr %struct.fimc_context, ptr %1, i32 0, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.for.inc.i_crit_edge, label %if.end.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %3) #5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.fimc_context, ptr %1, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %6) #5
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.fimc_context, ptr %1, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %9) #5
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.fimc_context, ptr %1, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.inc.2.i.fimc_put_clocks.exit_crit_edge, label %if.end.3.i

for.inc.2.i.fimc_put_clocks.exit_crit_edge:       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fimc_put_clocks.exit

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_put(ptr noundef %12) #5
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx.3.i, align 4
  br label %fimc_put_clocks.exit

fimc_put_clocks.exit:                             ; preds = %if.end.3.i, %for.inc.2.i.fimc_put_clocks.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fimc_context, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.fimc_context, ptr %dev_id, i32 0, i32 11
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %3) #5
  %regs.i.i = getelementptr inbounds %struct.fimc_context, ptr %dev_id, i32 0, i32 7
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %7 = or i32 %6, 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #5, !srcloc !140
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %9, i32 100
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #5, !srcloc !138
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef -536870912) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %11)
  %tobool.not.i = icmp ult i32 %11, 536870912
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  br i1 %tobool.not.i, label %if.end, label %fimc_check_ovf.exit.thread

fimc_check_ovf.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i10.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %17 = or i32 %16, 12582976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %17) #5, !srcloc !140
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %11) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i35 = getelementptr i8, ptr %15, i32 100
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #5, !srcloc !138
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %25, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %23) #5
  %and.i = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i37 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i37, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and1.i = and i32 %23, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %28, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %26) #5, !srcloc !140
  %29 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %30, i32 104
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #5, !srcloc !138
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %shr.i = lshr i32 %32, 7
  %and.i40 = and i32 %shr.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %cmp.i = icmp eq i32 %and.i40, 0
  %and1.i41 = and i32 %32, 63
  %spec.select.i = select i1 %cmp.i, i32 %and1.i41, i32 %and.i40
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %and1.i41, i32 noundef %and.i40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp5.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp5.i, label %fimc_get_buf_id.exit.thread, label %if.end6

fimc_get_buf_id.exit.thread:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %36, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sub.i = add nsw i32 %spec.select.i, -1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %38, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %sub.i) #5
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %40, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %sub.i) #5
  %task = getelementptr inbounds %struct.fimc_context, ptr %dev_id, i32 0, i32 4
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %task, align 4
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 12, i32 22
  %46 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %call.i43 = tail call i32 @__pm_runtime_suspend(ptr noundef %48, i32 noundef 13) #5
  tail call void @exynos_drm_ipp_task_done(ptr noundef nonnull %42, i32 noundef 0) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end6.if.end15_crit_edge
  tail call fastcc void @fimc_dst_set_buf_seq(ptr noundef %dev_id, i32 noundef %sub.i, i1 noundef zeroext false)
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %50, i32 252
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %52 = and i32 %51, -150994945
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %54, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %52) #5, !srcloc !140
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %56, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 0) #5
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %60 = and i32 %59, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %62, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %60) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %64, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #5, !srcloc !140
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %66, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %68 = and i32 %67, -8388609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %68) #5, !srcloc !140
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %70, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %72 = and i32 %71, -193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %72) #5, !srcloc !140
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %74, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %76 = or i32 %75, 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %76) #5, !srcloc !140
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %fimc_get_buf_id.exit.thread, %if.end.cleanup_crit_edge, %fimc_check_ovf.exit.thread
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %fimc_check_ovf.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %fimc_get_buf_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_ipp_task_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fimc_dst_set_buf_seq(ptr noundef %ctx, i32 noundef %buf_id, i1 noundef zeroext %enqueue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fimc_context, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = zext i1 %enqueue to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %buf_id, i32 noundef %conv) #5
  %lock = getelementptr inbounds %struct.fimc_context, ptr %ctx, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %regs.i = getelementptr inbounds %struct.fimc_context, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 508
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !138
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %shl = shl nuw i32 1, %buf_id
  %or = or i32 %5, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %cfg.0 = select i1 %enqueue, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %cfg.0) #5
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i358 = getelementptr i8, ptr %8, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358, i32 %6) #5, !srcloc !140
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %cfg.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp294 = icmp ugt i32 %call.i, 1
  %or.cond = select i1 %enqueue, i1 %cmp294, i1 false
  br i1 %or.cond, label %if.then296, label %if.else297

if.then296:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 1) #5
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %14 = and i32 %13, -20737
  %15 = or i32 %14, 4352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %15) #5, !srcloc !140
  br label %if.end304

if.else297:                                       ; preds = %entry
  %enqueue.not = xor i1 %enqueue, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp300 = icmp ult i32 %call.i, 2
  %or.cond356 = select i1 %enqueue.not, i1 %cmp300, i1 false
  br i1 %or.cond356, label %if.then302, label %if.else297.if.end304_crit_edge

if.else297.if.end304_crit_edge:                   ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end304

if.then302:                                       ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 0) #5
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i361 = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i361) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %23 = and i32 %22, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10.i365 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i365, i32 %23) #5, !srcloc !140
  br label %if.end304

if.end304:                                        ; preds = %if.then302, %if.else297.if.end304_crit_edge, %if.then296
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev2 = getelementptr inbounds %struct.fimc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev2, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %1, align 4
  %dma_priv = getelementptr inbounds %struct.fimc_context, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @exynos_drm_register_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #5
  %formats = getelementptr inbounds %struct.fimc_context, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %formats, align 4
  %num_formats = getelementptr inbounds %struct.fimc_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %num_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_formats, align 4
  %call5 = tail call i32 @exynos_drm_ipp_register(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @ipp_funcs, i32 noundef 15, ptr noundef %5, i32 noundef %7, ptr noundef nonnull @.str) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @exynos_drm_ipp_unregister(ptr noundef %dev, ptr noundef %1) #5
  %dma_priv = getelementptr inbounds %struct.fimc_context, ptr %1, i32 0, i32 2
  tail call void @exynos_drm_unregister_dma(ptr noundef %data, ptr noundef %dev, ptr noundef %dma_priv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_ipp_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_commit(ptr noundef %ipp, ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 3
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #5, !srcloc !146
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !147
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %task2 = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 4
  %5 = ptrtoint ptr %task2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %task, ptr %task2, align 4
  %fourcc = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc, align 4
  %modifier = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 7
  %8 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not = icmp eq i64 %9, 0
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %11, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %7) #5
  %regs.i.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 7
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 252
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !138
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %and.i = and i32 %15, -7
  %16 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.sw.epilog.i_crit_edge [
    i32 909199186, label %if.end.sw.bb.i_crit_edge
    i32 875710290, label %if.end.sw.bb.i_crit_edge131
    i32 875713112, label %if.end.sw.bb.i_crit_edge132
    i32 909202777, label %if.end.sw.bb5.i_crit_edge
    i32 1448695129, label %if.end.sw.bb3.i_crit_edge
    i32 1431918169, label %if.end.sw.bb3.i_crit_edge133
    i32 1498831189, label %if.end.sw.bb3.i_crit_edge134
    i32 1498765654, label %if.end.sw.bb3.i_crit_edge135
    i32 909203022, label %if.end.sw.bb5.i_crit_edge136
    i32 825644622, label %if.end.sw.bb5.i_crit_edge137
  ]

if.end.sw.bb5.i_crit_edge137:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.sw.bb5.i_crit_edge136:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.sw.bb3.i_crit_edge135:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge134:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge133:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end.sw.bb3.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end.sw.bb5.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.sw.bb.i_crit_edge132:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge131:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge131, %if.end.sw.bb.i_crit_edge132
  %or.i = or i32 %15, 6
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.sw.bb3.i_crit_edge, %if.end.sw.bb3.i_crit_edge133, %if.end.sw.bb3.i_crit_edge134, %if.end.sw.bb3.i_crit_edge135
  %or4.i = or i32 %and.i, 4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.sw.bb5.i_crit_edge, %if.end.sw.bb5.i_crit_edge136, %if.end.sw.bb5.i_crit_edge137
  %or6.i = or i32 %and.i, 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i, %if.end.sw.epilog.i_crit_edge
  %cfg.0.i = phi i32 [ %or6.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i ], [ %or.i, %sw.bb.i ], [ %and.i, %if.end.sw.epilog.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i) #5
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %19, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %17) #5, !srcloc !140
  %20 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %21, i32 396
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %23 = and i32 %22, -97
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %masksel.i = select i1 %tobool.not, i32 0, i32 1610612736
  %cfg.1.i = or i32 %24, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %cfg.1.i) #5
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %27, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %25) #5, !srcloc !140
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %29, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %7) #5
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 88
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %33 = and i32 %32, -6291457
  %34 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %7, label %sw.epilog.i.i [
    i32 909199186, label %sw.bb.i.i
    i32 875710290, label %sw.epilog.i.sw.bb1.i.i_crit_edge
    i32 875713112, label %sw.epilog.i.sw.bb1.i.i_crit_edge138
  ]

sw.epilog.i.sw.bb1.i.i_crit_edge138:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

sw.epilog.i.sw.bb1.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i.i

sw.bb.i.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i41.i.i = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i.i, i32 %33) #5, !srcloc !140
  br label %fimc_src_set_fmt.exit

sw.bb1.i.i:                                       ; preds = %sw.epilog.i.sw.bb1.i.i_crit_edge, %sw.epilog.i.sw.bb1.i.i_crit_edge138
  %37 = or i32 %33, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i43.i.i = getelementptr i8, ptr %39, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i.i, i32 %37) #5, !srcloc !140
  br label %fimc_src_set_fmt.exit

sw.epilog.i.i:                                    ; preds = %sw.epilog.i
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i45.i.i = getelementptr i8, ptr %41, i32 252
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %43 = and i32 %42, -813695745
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %45 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %7, label %sw.epilog.i.i.sw.epilog19.i.i_crit_edge [
    i32 1448695129, label %sw.bb5.i.i
    i32 1431918169, label %sw.bb7.i.i
    i32 1498831189, label %sw.bb9.i.i
    i32 909203022, label %sw.epilog.i.i.sw.bb17.i.i_crit_edge
    i32 842094158, label %sw.epilog.i.i.sw.bb17.i.i_crit_edge139
    i32 825382478, label %sw.epilog.i.i.sw.bb13.i.i_crit_edge
    i32 825644622, label %sw.epilog.i.i.sw.bb13.i.i_crit_edge140
  ]

sw.epilog.i.i.sw.bb13.i.i_crit_edge140:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i.i

sw.epilog.i.i.sw.bb13.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i.i

sw.epilog.i.i.sw.bb17.i.i_crit_edge139:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i.i

sw.epilog.i.i.sw.bb17.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i.i

sw.epilog.i.i.sw.epilog19.i.i_crit_edge:          ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog19.i.i

sw.bb5.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or6.i.i = or i32 %44, 48
  br label %sw.epilog19.i.i

sw.bb7.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or8.i.i = or i32 %44, 16
  br label %sw.epilog19.i.i

sw.bb9.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or10.i.i = or i32 %44, 32
  br label %sw.epilog19.i.i

sw.bb13.i.i:                                      ; preds = %sw.epilog.i.i.sw.bb13.i.i_crit_edge, %sw.epilog.i.i.sw.bb13.i.i_crit_edge140
  %or14.i.i = or i32 %44, 98304
  br label %sw.epilog19.i.i

sw.bb17.i.i:                                      ; preds = %sw.epilog.i.i.sw.bb17.i.i_crit_edge, %sw.epilog.i.i.sw.bb17.i.i_crit_edge139
  %or18.i.i = or i32 %44, 32768
  br label %sw.epilog19.i.i

sw.epilog19.i.i:                                  ; preds = %sw.bb17.i.i, %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %sw.epilog.i.i.sw.epilog19.i.i_crit_edge
  %cfg.0.i.i = phi i32 [ %or18.i.i, %sw.bb17.i.i ], [ %or14.i.i, %sw.bb13.i.i ], [ %or10.i.i, %sw.bb9.i.i ], [ %or8.i.i, %sw.bb7.i.i ], [ %or6.i.i, %sw.bb5.i.i ], [ %44, %sw.epilog.i.i.sw.epilog19.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %46 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i.i) #5
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %48, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 %46) #5, !srcloc !140
  br label %fimc_src_set_fmt.exit

fimc_src_set_fmt.exit:                            ; preds = %sw.epilog19.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %pitch.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 6
  %49 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pitch.i, align 8
  %format.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %format.i, align 8
  %53 = getelementptr inbounds %struct.drm_format_info, ptr %52, i32 0, i32 3
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 2
  %conv.i = zext i8 %55 to i32
  %div.i = udiv i32 %50, %conv.i
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %height.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 0, i32 3
  %58 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %57, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %div.i, i32 noundef %59) #5
  %60 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height.i, align 4
  %shl6.i = shl i32 %61, 16
  %or.i46 = or i32 %shl6.i, %div.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i46) #5
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %64, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %62) #5, !srcloc !140
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %x.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 2
  %67 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %x.i, align 8
  %y.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 3
  %69 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %y.i, align 4
  %w.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 4
  %71 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %w.i, align 8
  %h.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 1, i32 5
  %73 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %h.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %66, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74) #5
  %75 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %76, i32 248
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %78 = and i32 %77, 12583104
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  %80 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %w.i, align 8
  %82 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %h.i, align 4
  %shl16.i = shl i32 %83, 16
  %or17.i = or i32 %79, %81
  %or18.i = or i32 %or17.i, %shl16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %84 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #5
  %85 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %86, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 %84) #5, !srcloc !140
  %shl19.i = shl i32 %div.i, 16
  %87 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %height.i, align 4
  %or20.i = or i32 %shl19.i, %88
  %or24.i = or i32 %or20.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %89 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #5
  %90 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #5, !srcloc !140
  %92 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %x.i, align 8
  %94 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %y.i, align 4
  %shl30.i = shl i32 %95, 16
  %or31.i = or i32 %shl30.i, %93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %96 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #5
  %97 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %98, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 %96) #5, !srcloc !140
  %99 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %x.i, align 8
  %101 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %y.i, align 4
  %shl37.i = shl i32 %102, 16
  %or38.i = or i32 %shl37.i, %100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %103 = tail call i32 @llvm.bswap.i32(i32 %or38.i) #5
  %104 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %105, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %103) #5, !srcloc !140
  %106 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %x.i, align 8
  %108 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %y.i, align 4
  %shl44.i = shl i32 %109, 16
  %or45.i = or i32 %shl44.i, %107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %110 = tail call i32 @llvm.bswap.i32(i32 %or45.i) #5
  %111 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %112, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %110) #5, !srcloc !140
  %113 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pitch.i, align 8
  %115 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %format.i, align 8
  %117 = getelementptr inbounds %struct.drm_format_info, ptr %116, i32 0, i32 3
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 2
  %conv.i.i = zext i8 %119 to i32
  %div.i.i = udiv i32 %114, %conv.i.i
  %120 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %x.i, align 8
  %122 = ptrtoint ptr %w.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %w.i, align 8
  %124 = add i32 %121, %123
  %sub6.i.i = sub i32 %div.i.i, %124
  %125 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %y.i, align 4
  %127 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %height.i, align 4
  %129 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %h.i, align 4
  %131 = add i32 %126, %130
  %sub13.i.i = sub i32 %128, %131
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %133, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %121, i32 noundef %126, i32 noundef %123, i32 noundef %130, i32 noundef %div.i.i, i32 noundef %128) #5
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %135, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %121, i32 noundef %sub6.i.i, i32 noundef %126, i32 noundef %sub13.i.i) #5
  %136 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %137, i32 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i49) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %139 = and i32 %138, 15728760
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #5
  %shl.i.i = shl i32 %121, 16
  %or.i.i = or i32 %shl.i.i, %126
  %or26.i.i = or i32 %or.i.i, %140
  %or27.i.i = or i32 %or26.i.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %141 = tail call i32 @llvm.bswap.i32(i32 %or27.i.i) #5
  %142 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i58.i.i = getelementptr i8, ptr %143, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i.i, i32 %141) #5, !srcloc !140
  %shl28.i.i = shl i32 %sub6.i.i, 16
  %or30.i.i = or i32 %sub13.i.i, %shl28.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %144 = tail call i32 @llvm.bswap.i32(i32 %or30.i.i) #5
  %145 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %146, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i.i, i32 %144) #5, !srcloc !140
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %148, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef 1) #5
  %149 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %150, i32 252
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %152 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %153, i32 72
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %155 = and i32 %154, -129
  %156 = and i32 %151, -6291457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %158, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %156) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %159 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %160, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %155) #5, !srcloc !140
  %dma_addr.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4
  %161 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dma_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #5
  %164 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %165, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %163) #5, !srcloc !140
  %arrayidx2.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4, i32 1
  %166 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #5
  %169 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %170, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %168) #5, !srcloc !140
  %arrayidx4.i = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 3, i32 4, i32 2
  %171 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #5
  %174 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %175, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %173) #5, !srcloc !140
  %fourcc8 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  %176 = ptrtoint ptr %fourcc8 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %fourcc8, align 4
  %modifier11 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 7
  %178 = ptrtoint ptr %modifier11 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %modifier11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %179)
  %tobool12.not = icmp eq i64 %179, 0
  %180 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %181, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %177) #5
  %182 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %183, i32 392
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #5, !srcloc !138
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448433985, i32 %177)
  %cmp.i58 = icmp eq i32 %177, 1448433985
  br i1 %cmp.i58, label %if.then.i60, label %if.else.i

if.then.i60:                                      ; preds = %fimc_src_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i59 = or i32 %185, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %186 = tail call i32 @llvm.bswap.i32(i32 %or.i59) #5
  %187 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %188, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %186) #5, !srcloc !140
  br label %if.end.i

if.else.i:                                        ; preds = %fimc_src_set_fmt.exit
  %and.i61 = and i32 %185, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %189 = tail call i32 @llvm.bswap.i32(i32 %and.i61) #5
  %190 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %191, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %189) #5, !srcloc !140
  %192 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %193, i32 72
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #5, !srcloc !138
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %and2.i = and i32 %195, -1610612737
  %196 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %177, label %if.else.i.sw.epilog.i64_crit_edge [
    i32 909199186, label %if.else.i.sw.bb.i62_crit_edge
    i32 875710290, label %if.else.i.sw.bb.i62_crit_edge141
    i32 875713112, label %if.else.i.sw.bb.i62_crit_edge142
    i32 1448695129, label %if.else.i.sw.bb4.i_crit_edge
    i32 1431918169, label %if.else.i.sw.bb4.i_crit_edge143
    i32 1498831189, label %if.else.i.sw.bb4.i_crit_edge144
    i32 1498765654, label %if.else.i.sw.bb4.i_crit_edge145
    i32 909203022, label %if.else.i.sw.bb6.i_crit_edge
    i32 825644622, label %if.else.i.sw.bb6.i_crit_edge146
    i32 909202777, label %if.else.i.sw.bb6.i_crit_edge147
  ]

if.else.i.sw.bb6.i_crit_edge147:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

if.else.i.sw.bb6.i_crit_edge146:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

if.else.i.sw.bb6.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

if.else.i.sw.bb4.i_crit_edge145:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.else.i.sw.bb4.i_crit_edge144:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.else.i.sw.bb4.i_crit_edge143:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.else.i.sw.bb4.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.else.i.sw.bb.i62_crit_edge142:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i62

if.else.i.sw.bb.i62_crit_edge141:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i62

if.else.i.sw.bb.i62_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i62

if.else.i.sw.epilog.i64_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i64

sw.bb.i62:                                        ; preds = %if.else.i.sw.bb.i62_crit_edge, %if.else.i.sw.bb.i62_crit_edge141, %if.else.i.sw.bb.i62_crit_edge142
  %or3.i = or i32 %195, 1610612736
  br label %sw.epilog.i64

sw.bb4.i:                                         ; preds = %if.else.i.sw.bb4.i_crit_edge, %if.else.i.sw.bb4.i_crit_edge143, %if.else.i.sw.bb4.i_crit_edge144, %if.else.i.sw.bb4.i_crit_edge145
  %or5.i = or i32 %and2.i, 1073741824
  br label %sw.epilog.i64

sw.bb6.i:                                         ; preds = %if.else.i.sw.bb6.i_crit_edge, %if.else.i.sw.bb6.i_crit_edge146, %if.else.i.sw.bb6.i_crit_edge147
  %or7.i = or i32 %and2.i, 536870912
  br label %sw.epilog.i64

sw.epilog.i64:                                    ; preds = %sw.bb6.i, %sw.bb4.i, %sw.bb.i62, %if.else.i.sw.epilog.i64_crit_edge
  %cfg.0.i63 = phi i32 [ %or7.i, %sw.bb6.i ], [ %or5.i, %sw.bb4.i ], [ %or3.i, %sw.bb.i62 ], [ %and2.i, %if.else.i.sw.epilog.i64_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %197 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i63) #5
  %198 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %199, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %197) #5, !srcloc !140
  br label %if.end.i

if.end.i:                                         ; preds = %sw.epilog.i64, %if.then.i60
  %200 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %201, i32 396
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %203 = and i32 %202, -6291457
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #5
  %masksel.i65 = select i1 %tobool12.not, i32 0, i32 24576
  %cfg.1.i66 = or i32 %204, %masksel.i65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %205 = tail call i32 @llvm.bswap.i32(i32 %cfg.1.i66) #5
  %206 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %207, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %205) #5, !srcloc !140
  %208 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %209, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %177) #5
  %210 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i67 = getelementptr i8, ptr %211, i32 88
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i67) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %213 = and i32 %212, -1572865
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #5
  %215 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %177, label %sw.epilog.i.i70 [
    i32 909199186, label %sw.bb.i.i68
    i32 875710290, label %sw.bb1.i.i69
    i32 875713112, label %sw.epilog.thread.i.i
  ]

sw.bb.i.i68:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %216 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i53.i.i = getelementptr i8, ptr %217, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 %213) #5, !srcloc !140
  br label %fimc_dst_set_fmt.exit

sw.bb1.i.i69:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or2.i.i = or i32 %214, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %218 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #5
  %219 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %220, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 %218) #5, !srcloc !140
  br label %fimc_dst_set_fmt.exit

sw.epilog.thread.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or4.i.i = or i32 %214, 5120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %221 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #5
  %222 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %223, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 %221) #5, !srcloc !140
  %224 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i5962.i.i = getelementptr i8, ptr %225, i32 76
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5962.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %227 = and i32 %226, 82903036
  %228 = or i32 %227, -267452416
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #5
  br label %sw.epilog25.i.i

sw.epilog.i.i70:                                  ; preds = %if.end.i
  %230 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %231, i32 76
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %233 = and i32 %232, -184549380
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #5
  %235 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %177, label %sw.epilog.i.i70.sw.epilog25.i.i_crit_edge [
    i32 842094158, label %sw.epilog.i.i70.sw.bb22.i.i_crit_edge
    i32 909203022, label %sw.epilog.i.i70.sw.bb22.i.i_crit_edge148
    i32 1431918169, label %sw.bb11.i.i
    i32 1498831189, label %sw.bb13.i.i72
    i32 1498765654, label %sw.bb15.i.i
    i32 825382478, label %sw.epilog.i.i70.sw.bb17.i.i73_crit_edge
    i32 825644622, label %sw.epilog.i.i70.sw.bb17.i.i73_crit_edge149
  ]

sw.epilog.i.i70.sw.bb17.i.i73_crit_edge149:       ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i.i73

sw.epilog.i.i70.sw.bb17.i.i73_crit_edge:          ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i.i73

sw.epilog.i.i70.sw.bb22.i.i_crit_edge148:         ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb22.i.i

sw.epilog.i.i70.sw.bb22.i.i_crit_edge:            ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb22.i.i

sw.epilog.i.i70.sw.epilog25.i.i_crit_edge:        ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25.i.i

sw.bb11.i.i:                                      ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  %or12.i.i = or i32 %234, 1
  br label %sw.epilog25.i.i

sw.bb13.i.i72:                                    ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  %or14.i.i71 = or i32 %234, 2
  br label %sw.epilog25.i.i

sw.bb15.i.i:                                      ; preds = %sw.epilog.i.i70
  call void @__sanitizer_cov_trace_pc() #7
  %or16.i.i = or i32 %234, 3
  br label %sw.epilog25.i.i

sw.bb17.i.i73:                                    ; preds = %sw.epilog.i.i70.sw.bb17.i.i73_crit_edge, %sw.epilog.i.i70.sw.bb17.i.i73_crit_edge149
  %or19.i.i = or i32 %234, 16777224
  br label %sw.epilog25.i.i

sw.bb22.i.i:                                      ; preds = %sw.epilog.i.i70.sw.bb22.i.i_crit_edge, %sw.epilog.i.i70.sw.bb22.i.i_crit_edge148
  %or24.i.i = or i32 %234, 8
  br label %sw.epilog25.i.i

sw.epilog25.i.i:                                  ; preds = %sw.bb22.i.i, %sw.bb17.i.i73, %sw.bb15.i.i, %sw.bb13.i.i72, %sw.bb11.i.i, %sw.epilog.i.i70.sw.epilog25.i.i_crit_edge, %sw.epilog.thread.i.i
  %cfg.0.i.i74 = phi i32 [ %or24.i.i, %sw.bb22.i.i ], [ %or19.i.i, %sw.bb17.i.i73 ], [ %or16.i.i, %sw.bb15.i.i ], [ %or14.i.i71, %sw.bb13.i.i72 ], [ %or12.i.i, %sw.bb11.i.i ], [ %229, %sw.epilog.thread.i.i ], [ %234, %sw.epilog.i.i70.sw.epilog25.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %236 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i.i74) #5
  %237 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %238, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 %236) #5, !srcloc !140
  br label %fimc_dst_set_fmt.exit

fimc_dst_set_fmt.exit:                            ; preds = %sw.epilog25.i.i, %sw.bb1.i.i69, %sw.bb.i.i68
  %rotation = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 5, i32 1
  %239 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %rotation, align 4
  %and.i75 = and i32 %240, 15
  %241 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %242, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %240) #5
  %243 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %244, i32 72
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i78) #5, !srcloc !138
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %and2.i79 = and i32 %246, -57345
  %247 = zext i32 %and.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and.i75, label %fimc_dst_set_fmt.exit.fimc_dst_set_transf.exit_crit_edge [
    i32 1, label %sw.bb.i80
    i32 2, label %sw.bb9.i
    i32 4, label %sw.bb21.i
    i32 8, label %sw.bb33.i
  ]

fimc_dst_set_fmt.exit.fimc_dst_set_transf.exit_crit_edge: ; preds = %fimc_dst_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fimc_dst_set_transf.exit

sw.bb.i80:                                        ; preds = %fimc_dst_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and3.i = shl i32 %240, 10
  %248 = and i32 %and3.i, 49152
  %249 = or i32 %and2.i79, %248
  br label %fimc_dst_set_transf.exit

sw.bb9.i:                                         ; preds = %fimc_dst_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and11.i = and i32 %240, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %spec.select69.v.i = select i1 %tobool12.not.i, i32 8192, i32 24576
  %and16.i = shl i32 %240, 10
  %250 = and i32 %and16.i, 32768
  %spec.select69.i = or i32 %spec.select69.v.i, %250
  %251 = or i32 %spec.select69.i, %and2.i79
  br label %fimc_dst_set_transf.exit

sw.bb21.i:                                        ; preds = %fimc_dst_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and23.i = and i32 %240, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %spec.select70.v.i = select i1 %tobool24.not.i, i32 49152, i32 32768
  %spec.select70.i = or i32 %and2.i79, %spec.select70.v.i
  %and28.i = and i32 %240, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %and31.i = and i32 %spec.select70.i, -40961
  %spec.select74.i = select i1 %tobool29.not.i, i32 %spec.select70.i, i32 %and31.i
  br label %fimc_dst_set_transf.exit

sw.bb33.i:                                        ; preds = %fimc_dst_set_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or34.i = or i32 %246, 57344
  %and35.i = and i32 %240, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %and38.i = and i32 %or34.i, -16385
  %spec.select71.i = select i1 %tobool36.not.i, i32 %or34.i, i32 %and38.i
  %and40.i = and i32 %240, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  %and43.i = and i32 %spec.select71.i, -32769
  %spec.select75.i = select i1 %tobool41.not.i, i32 %spec.select71.i, i32 %and43.i
  br label %fimc_dst_set_transf.exit

fimc_dst_set_transf.exit:                         ; preds = %sw.bb33.i, %sw.bb21.i, %sw.bb9.i, %sw.bb.i80, %fimc_dst_set_fmt.exit.fimc_dst_set_transf.exit_crit_edge
  %cfg.4.i = phi i32 [ %and2.i79, %fimc_dst_set_fmt.exit.fimc_dst_set_transf.exit_crit_edge ], [ %249, %sw.bb.i80 ], [ %251, %sw.bb9.i ], [ %spec.select74.i, %sw.bb21.i ], [ %spec.select75.i, %sw.bb33.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %252 = tail call i32 @llvm.bswap.i32(i32 %cfg.4.i) #5
  %253 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %254, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 %252) #5, !srcloc !140
  %pitch.i82 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 6
  %255 = ptrtoint ptr %pitch.i82 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %pitch.i82, align 8
  %format.i83 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 3
  %257 = ptrtoint ptr %format.i83 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %format.i83, align 8
  %259 = getelementptr inbounds %struct.drm_format_info, ptr %258, i32 0, i32 3
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %259, align 2
  %conv.i84 = zext i8 %261 to i32
  %div.i85 = udiv i32 %256, %conv.i84
  %262 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev, align 4
  %height.i87 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 3
  %264 = ptrtoint ptr %height.i87 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %height.i87, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %263, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %div.i85, i32 noundef %265) #5
  %266 = ptrtoint ptr %height.i87 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %height.i87, align 4
  %shl6.i88 = shl i32 %267, 16
  %or.i89 = or i32 %shl6.i88, %div.i85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %268 = tail call i32 @llvm.bswap.i32(i32 %or.i89) #5
  %269 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %270, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91, i32 %268) #5, !srcloc !140
  %271 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev, align 4
  %x.i92 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 2
  %273 = ptrtoint ptr %x.i92 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %x.i92, align 8
  %y.i93 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 3
  %275 = ptrtoint ptr %y.i93 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %y.i93, align 4
  %w.i94 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 4
  %277 = ptrtoint ptr %w.i94 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %w.i94, align 8
  %h.i95 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 1, i32 5
  %279 = ptrtoint ptr %h.i95 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %h.i95, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %272, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %274, i32 noundef %276, i32 noundef %278, i32 noundef %280) #5
  %281 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %282, i32 8
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %width.i = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 0, i32 2
  %284 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %285)
  %cmp.i96 = icmp ugt i32 %285, 1279
  %286 = and i32 %283, -536870913
  %287 = tail call i32 @llvm.bswap.i32(i32 %286) #5
  %masksel.i97 = select i1 %cmp.i96, i32 32, i32 0
  %cfg.0.i98 = or i32 %masksel.i97, %287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %288 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i98) #5
  %289 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %290, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %288) #5, !srcloc !140
  %291 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %292, i32 72
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %294 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %295, i32 72
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %297 = and i32 %293, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool.not.i = icmp eq i32 %297, 0
  %spec.select = select i1 %tobool.not.i, ptr %h.i95, ptr %w.i94
  %spec.select124 = select i1 %tobool.not.i, ptr %w.i94, ptr %h.i95
  %298 = ptrtoint ptr %spec.select124 to i32
  call void @__asan_load4_noabort(i32 %298)
  %shl34.sink.in.in.i = load i32, ptr %spec.select124, align 4
  %shl34.sink.in.i = shl i32 %shl34.sink.in.in.i, 16
  %shl34.sink.i = and i32 %shl34.sink.in.i, 536805376
  %299 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %299)
  %.sink.i = load i32, ptr %spec.select, align 4
  %and37.i = and i32 %.sink.i, 8191
  %300 = and i32 %296, 14680288
  %301 = tail call i32 @llvm.bswap.i32(i32 %300) #5
  %or39.i = or i32 %and37.i, %301
  %cfg.1.i99 = or i32 %or39.i, %shl34.sink.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %302 = tail call i32 @llvm.bswap.i32(i32 %cfg.1.i99) #5
  %303 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %304, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %302) #5, !srcloc !140
  %305 = ptrtoint ptr %w.i94 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %w.i94, align 8
  %307 = ptrtoint ptr %h.i95 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %h.i95, align 4
  %mul.i = mul i32 %308, %306
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %309 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #5
  %310 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %311, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %309) #5, !srcloc !140
  %312 = ptrtoint ptr %x.i92 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %x.i92, align 8
  %314 = ptrtoint ptr %y.i93 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %y.i93, align 4
  %shl52.i = shl i32 %315, 16
  %or53.i = or i32 %shl52.i, %313
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %316 = tail call i32 @llvm.bswap.i32(i32 %or53.i) #5
  %317 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %318, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %316) #5, !srcloc !140
  %319 = ptrtoint ptr %x.i92 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %x.i92, align 8
  %321 = ptrtoint ptr %y.i93 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %y.i93, align 4
  %shl59.i = shl i32 %322, 16
  %or60.i = or i32 %shl59.i, %320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %323 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #5
  %324 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %325, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %323) #5, !srcloc !140
  %326 = ptrtoint ptr %x.i92 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %x.i92, align 8
  %328 = ptrtoint ptr %y.i93 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %y.i93, align 4
  %shl66.i = shl i32 %329, 16
  %or67.i = or i32 %shl66.i, %327
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %330 = tail call i32 @llvm.bswap.i32(i32 %or67.i) #5
  %331 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %332, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 %330) #5, !srcloc !140
  %dma_addr.i100 = getelementptr inbounds %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4
  %333 = ptrtoint ptr %dma_addr.i100 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %dma_addr.i100, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #5
  %336 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %337, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102, i32 %335) #5, !srcloc !140
  %arrayidx2.i103 = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4, i32 1
  %338 = ptrtoint ptr %arrayidx2.i103 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %arrayidx2.i103, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %340 = tail call i32 @llvm.bswap.i32(i32 %339) #5
  %341 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %342, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %340) #5, !srcloc !140
  %arrayidx4.i104 = getelementptr %struct.exynos_drm_ipp_task, ptr %task, i32 0, i32 4, i32 4, i32 2
  %343 = ptrtoint ptr %arrayidx4.i104 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx4.i104, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %345 = tail call i32 @llvm.bswap.i32(i32 %344) #5
  %346 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %347, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %345) #5, !srcloc !140
  tail call fastcc void @fimc_dst_set_buf_seq(ptr noundef %ipp, i32 noundef 0, i1 noundef zeroext true) #5
  %sc = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10
  %348 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %349, i32 72
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i106) #5, !srcloc !138
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %351)
  %tobool.not.i107 = icmp sgt i32 %351, -1
  %src_w.0.in.i = select i1 %tobool.not.i107, ptr %w.i, ptr %h.i
  %src_h.0.in.i = select i1 %tobool.not.i107, ptr %h.i, ptr %w.i
  %352 = ptrtoint ptr %src_h.0.in.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %src_h.0.i = load i32, ptr %src_h.0.in.i, align 4
  %353 = ptrtoint ptr %src_w.0.in.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %src_w.0.i = load i32, ptr %src_w.0.in.i, align 4
  %and3.i110 = and i32 %351, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i110)
  %tobool4.not.i = icmp eq i32 %and3.i110, 0
  %dst_w.0.in.i = select i1 %tobool4.not.i, ptr %w.i94, ptr %h.i95
  %dst_h.0.in.i = select i1 %tobool4.not.i, ptr %h.i95, ptr %w.i94
  %354 = ptrtoint ptr %dst_h.0.in.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %dst_h.0.i = load i32, ptr %dst_h.0.in.i, align 4
  %355 = ptrtoint ptr %dst_w.0.in.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %dst_w.0.i = load i32, ptr %dst_w.0.in.i, align 4
  %div.i111 = udiv i32 %src_w.0.i, %dst_w.0.i
  %div121.i = lshr i32 %div.i111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div.i111)
  %tobool.not.i.i = icmp ult i32 %div.i111, 2
  %356 = tail call i32 @llvm.ctlz.i32(i32 %div121.i, i1 true) #5, !range !148
  %sub.i.i = sub nuw nsw i32 32, %356
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.i.i)
  %cmp.i112 = icmp ugt i32 %cond.i.i, 5
  br i1 %cmp.i112, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %fimc_dst_set_transf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %357 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %358, ptr noundef nonnull @.str.37) #8
  br label %fimc_set_prescaler.exit

if.end15.i:                                       ; preds = %fimc_dst_set_transf.exit
  %div16.i = udiv i32 %src_h.0.i, %dst_h.0.i
  %div172.i = lshr i32 %div16.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div16.i)
  %tobool.not.i3.i = icmp ult i32 %div16.i, 2
  %359 = tail call i32 @llvm.ctlz.i32(i32 %div172.i, i1 true) #5, !range !148
  %sub.i4.i = sub nuw nsw i32 32, %359
  %cond.i5.i = select i1 %tobool.not.i3.i, i32 0, i32 %sub.i4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.i5.i)
  %cmp19.i = icmp ugt i32 %cond.i5.i, 5
  br i1 %cmp19.i, label %do.end23.i, label %if.end25.i

do.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %360 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %361, ptr noundef nonnull @.str.40) #8
  br label %fimc_set_prescaler.exit

if.end25.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i = lshr i32 %src_w.0.i, %cond.i.i
  %shr26.i = lshr i32 %src_h.0.i, %cond.i5.i
  %362 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %363, i32 noundef 4, ptr noundef nonnull @.str.42, i32 noundef %shr.i, i32 noundef %shr26.i) #5
  %364 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %365, i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef %cond.i.i, i32 noundef %cond.i5.i) #5
  %shl.i = shl i32 %src_w.0.i, 14
  %shl29.i = shl i32 %dst_w.0.i, %cond.i.i
  %div30.i = udiv i32 %shl.i, %shl29.i
  %hratio.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 4
  %366 = ptrtoint ptr %hratio.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %div30.i, ptr %hratio.i, align 4
  %shl31.i = shl i32 %src_h.0.i, 14
  %shl32.i = shl i32 %dst_h.0.i, %cond.i5.i
  %div33.i = udiv i32 %shl31.i, %shl32.i
  %vratio.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 5
  %367 = ptrtoint ptr %vratio.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %div33.i, ptr %vratio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_w.0.i, i32 %src_w.0.i)
  %cmp34.i = icmp uge i32 %dst_w.0.i, %src_w.0.i
  %up_h.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 2
  %frombool.i = zext i1 %cmp34.i to i8
  %368 = ptrtoint ptr %up_h.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %frombool.i, ptr %up_h.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_h.0.i, i32 %src_h.0.i)
  %cmp35.i = icmp uge i32 %dst_h.0.i, %src_h.0.i
  %up_v.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 3
  %frombool36.i = zext i1 %cmp35.i to i8
  %369 = ptrtoint ptr %up_v.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %frombool36.i, ptr %up_v.i, align 1
  %370 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %dev, align 4
  %372 = zext i1 %cmp34.i to i32
  %conv44.i = zext i1 %cmp35.i to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %371, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %div30.i, i32 noundef %div33.i, i32 noundef %372, i32 noundef %conv44.i) #5
  %373 = add nuw nsw i32 %cond.i.i, %cond.i5.i
  %sub.i = sub nuw nsw i32 10, %373
  %374 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %375, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %sub.i) #5
  %shl46.i = shl nuw i32 %sub.i, 28
  %shl48.i = shl nuw nsw i32 65536, %cond.i.i
  %shl49.i = shl nuw nsw i32 1, %cond.i5.i
  %or.i114 = or i32 %shl49.i, %shl48.i
  %or51.i = or i32 %or.i114, %shl46.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %376 = tail call i32 @llvm.bswap.i32(i32 %or51.i) #5
  %377 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %378, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %376) #5, !srcloc !140
  %shl52.i115 = shl i32 %shr.i, 16
  %or54.i = or i32 %shr26.i, %shl52.i115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %379 = tail call i32 @llvm.bswap.i32(i32 %or54.i) #5
  %380 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %381, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %379) #5, !srcloc !140
  br label %fimc_set_prescaler.exit

fimc_set_prescaler.exit:                          ; preds = %if.end25.i, %do.end23.i, %do.end.i
  %382 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %383, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 1) #5
  %384 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i116 = getelementptr i8, ptr %385, i32 8
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i116) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %387 = and i32 %386, -20737
  %388 = or i32 %387, 4352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %389 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %390, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %388) #5, !srcloc !140
  %391 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %392, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 0) #5
  %393 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %394, i32 8
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %396 = and i32 %395, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %397 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %398, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %396) #5, !srcloc !140
  %399 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dev, align 4
  %401 = ptrtoint ptr %sc to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %sc, align 4, !range !149
  %403 = zext i8 %402 to i32
  %bypass.i.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 1
  %404 = ptrtoint ptr %bypass.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %bypass.i.i, align 1, !range !149
  %406 = zext i8 %405 to i32
  %up_h.i.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 2
  %407 = ptrtoint ptr %up_h.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %up_h.i.i, align 2, !range !149
  %409 = zext i8 %408 to i32
  %up_v.i.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 3
  %410 = ptrtoint ptr %up_v.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %up_v.i.i, align 1, !range !149
  %412 = zext i8 %411 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %400, i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef %403, i32 noundef %406, i32 noundef %409, i32 noundef %412) #5
  %413 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev, align 4
  %hratio.i.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 4
  %415 = ptrtoint ptr %hratio.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %hratio.i.i, align 4
  %vratio.i.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10, i32 5
  %417 = ptrtoint ptr %vratio.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %vratio.i.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %414, i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %416, i32 noundef %418) #5
  %419 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i36.i = getelementptr i8, ptr %420, i32 88
  %421 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %422 = and i32 %421, 16646150
  %423 = tail call i32 @llvm.bswap.i32(i32 %422) #5
  %424 = ptrtoint ptr %sc to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %sc, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %tobool9.not.i.i = icmp eq i8 %425, 0
  %or.i37.i = or i32 %423, 402653184
  %spec.select.i.i = select i1 %tobool9.not.i.i, i32 %423, i32 %or.i37.i
  %426 = ptrtoint ptr %bypass.i.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %bypass.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool11.not.i.i = icmp eq i8 %427, 0
  %or13.i.i = or i32 %spec.select.i.i, -2147483648
  %cfg.1.i.i = select i1 %tobool11.not.i.i, i32 %spec.select.i.i, i32 %or13.i.i
  %428 = ptrtoint ptr %up_h.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %up_h.i.i, align 2, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %429)
  %tobool16.not.i.i = icmp eq i8 %429, 0
  %or18.i.i117 = or i32 %cfg.1.i.i, 1073741824
  %cfg.2.i.i = select i1 %tobool16.not.i.i, i32 %cfg.1.i.i, i32 %or18.i.i117
  %430 = ptrtoint ptr %up_v.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %up_v.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %431)
  %tobool21.not.i.i = icmp eq i8 %431, 0
  %or23.i.i = or i32 %cfg.2.i.i, 536870912
  %cfg.3.i.i = select i1 %tobool21.not.i.i, i32 %cfg.2.i.i, i32 %or23.i.i
  %432 = ptrtoint ptr %hratio.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %hratio.i.i, align 4
  %434 = shl i32 %433, 10
  %shl.i.i118 = and i32 %434, -65536
  %435 = ptrtoint ptr %vratio.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %vratio.i.i, align 4
  %shr27.i.i = lshr i32 %436, 6
  %or29.i.i = or i32 %shl.i.i118, %shr27.i.i
  %or30.i.i119 = or i32 %or29.i.i, %cfg.3.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %437 = tail call i32 @llvm.bswap.i32(i32 %or30.i.i119) #5
  %438 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i69.i.i = getelementptr i8, ptr %439, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i.i, i32 %437) #5, !srcloc !140
  %440 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i71.i.i = getelementptr i8, ptr %441, i32 392
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %443 = and i32 %442, -1073479681
  %444 = tail call i32 @llvm.bswap.i32(i32 %443) #5
  %445 = ptrtoint ptr %hratio.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %hratio.i.i, align 4
  %and35.i.i = shl i32 %446, 10
  %shl36.i.i = and i32 %and35.i.i, 64512
  %447 = ptrtoint ptr %vratio.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %vratio.i.i, align 4
  %and38.i.i = and i32 %448, 63
  %or39.i.i = or i32 %and38.i.i, %444
  %or40.i.i = or i32 %or39.i.i, %shl36.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %449 = tail call i32 @llvm.bswap.i32(i32 %or40.i.i) #5
  %450 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i73.i.i = getelementptr i8, ptr %451, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i.i, i32 %449) #5, !srcloc !140
  %452 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %453, i32 8
  %454 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %455 = and i32 %454, 939261895
  %456 = or i32 %455, -2147221472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %457 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %458, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %456) #5, !srcloc !140
  %459 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %460, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef 0) #5
  %461 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %462, i32 76
  %463 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %464 = and i32 %463, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %465 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i2.i43.i = getelementptr i8, ptr %466, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i43.i, i32 %464) #5, !srcloc !140
  %467 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %468, i32 252
  %469 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i120) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %470 = or i32 %469, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %471 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %472, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %470) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %473 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %474, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 0) #5, !srcloc !140
  %475 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %476, i32 192
  %477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %478 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %479, i32 88
  %480 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %481 = and i32 %480, -8388611
  %482 = or i32 %481, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %483 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %484, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %482) #5, !srcloc !140
  %485 = or i32 %477, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %486 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %487, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %485) #5, !srcloc !140
  %488 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %489, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %490 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %491 = and i32 %490, -1025
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %491) #5, !srcloc !140
  %492 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %493, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %494 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %495 = and i32 %494, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %495) #5, !srcloc !140
  %496 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %497, i32 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %498 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %499 = or i32 %498, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %499) #5, !srcloc !140
  br label %cleanup

cleanup:                                          ; preds = %fimc_set_prescaler.exit, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %fimc_set_prescaler.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fimc_abort(ptr nocapture noundef %ipp, ptr nocapture noundef readnone %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 7
  %0 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 100
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %entry.fimc_sw_reset.exit.i_crit_edge, label %if.then.i.i

entry.fimc_sw_reset.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fimc_sw_reset.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %5, i32 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %7) #5, !srcloc !140
  br label %fimc_sw_reset.exit.i

fimc_sw_reset.exit.i:                             ; preds = %if.then.i.i, %entry.fimc_sw_reset.exit.i_crit_edge
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %11 = or i32 %10, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #5, !srcloc !140
  %12 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %13, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %15 = and i32 %14, -193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 %15) #5, !srcloc !140
  %16 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %19 = or i32 %18, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 %19) #5, !srcloc !140
  %20 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %23 = and i32 %22, -129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %23) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %25, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 0) #5, !srcloc !140
  %sc.i = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 10
  %26 = call ptr @memset(ptr %sc.i, i32 0, i32 12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %28, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4.i, i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i57.i.i = getelementptr i8, ptr %30, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %32, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i.i, i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %34, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i.i, i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i57.1.i.i = getelementptr i8, ptr %36, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.1.i.i, i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i59.1.i.i = getelementptr i8, ptr %38, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.1.i.i, i32 0) #5, !srcloc !140
  br label %for.body8.i.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %fimc_sw_reset.exit.i
  %i.167.i.i = phi i32 [ 0, %fimc_sw_reset.exit.i ], [ %inc34.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.167.i.i)
  %cmp9.i.i = icmp ult i32 %i.167.i.i, 4
  %mul.i.i = shl i32 %i.167.i.i, 2
  %cond12.v.i.i = select i1 %cmp9.i.i, i32 24, i32 496
  %cond12.i.i = add i32 %cond12.v.i.i, %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %40, i32 %cond12.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 0) #5, !srcloc !140
  %cond22.v.i.i = select i1 %cmp9.i.i, i32 40, i32 608
  %cond22.i.i = add i32 %cond22.v.i.i, %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %42, i32 %cond22.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i.i, i32 0) #5, !srcloc !140
  %cond32.v.i.i = select i1 %cmp9.i.i, i32 56, i32 720
  %cond32.i.i = add i32 %cond32.v.i.i, %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i65.i.i = getelementptr i8, ptr %44, i32 %cond32.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 0) #5, !srcloc !140
  %inc34.i.i = add nuw nsw i32 %i.167.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc34.i.i, 32
  br i1 %exitcond.not.i.i, label %fimc_reset.exit, label %for.body8.i.i.for.body8.i.i_crit_edge

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8.i.i

fimc_reset.exit:                                  ; preds = %for.body8.i.i
  %task1 = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 4
  %45 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task1, align 4
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %fimc_reset.exit.if.end_crit_edge, label %if.then

fimc_reset.exit.if.end_crit_edge:                 ; preds = %fimc_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %fimc_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %task1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %task1, align 4
  %dev = getelementptr inbounds %struct.fimc_context, ptr %ipp, i32 0, i32 3
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 12, i32 22
  %50 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %52, i32 noundef 13) #5
  tail call void @exynos_drm_ipp_task_done(ptr noundef nonnull %46, i32 noundef -5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %fimc_reset.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_ipp_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_unregister_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.fimc_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %3) #5
  %arrayidx = getelementptr %struct.fimc_context, ptr %1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fimc_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.fimc_context, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.48, i32 noundef %3) #5
  %arrayidx = getelementptr %struct.fimc_context, ptr %1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__param_fimc_devs, !1, !"__param_fimc_devs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_fimc_devstype307, !1, !"__UNIQUE_ID_fimc_devstype307", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fimc_devs308, !4, !"__UNIQUE_ID_fimc_devs308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 47, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1215, i32 41}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1421, i32 11}
!9 = !{ptr @fimc_driver, !10, !"fimc_driver", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1416, i32 24}
!11 = !{ptr @__param_str_fimc_devs, !1, !"__param_str_fimc_devs", i1 false, i1 false}
!12 = !{ptr @fimc_mask, !13, !"fimc_mask", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 45, i32 21}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1339, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fimc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @fimc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @fimc_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1347, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1358, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fimc_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @fimc_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @fimc_4210_limits_v1, !31, !"fimc_4210_limits_v1", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1234, i32 42}
!32 = !{ptr @fimc_4210_limits_v2, !33, !"fimc_4210_limits_v2", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1242, i32 42}
!34 = !{ptr @fimc_formats, !35, !"fimc_formats", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1222, i32 27}
!36 = !{ptr @fimc_4210_limits_tiled_v1, !37, !"fimc_4210_limits_tiled_v1", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1250, i32 42}
!38 = !{ptr @fimc_4210_limits_tiled_v2, !39, !"fimc_4210_limits_tiled_v2", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1257, i32 42}
!40 = distinct !{null, !41, !"fimc_tiled_formats", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1230, i32 27}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 951, i32 2}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 964, i32 2}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 225, i32 2}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 232, i32 3}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 247, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 269, i32 2}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 274, i32 3}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 911, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 201, i32 2}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1199, i32 4}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fimc_setup_clocks._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fimc_setup_clocks._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 60, i32 22}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 62, i32 22}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 63, i32 22}
!71 = distinct !{null, !72, !"fimc_clock_names", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 59, i32 27}
!73 = !{ptr @fimc_component_ops, !74, !"fimc_component_ops", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1164, i32 35}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1148, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @fimc_bind._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @fimc_bind._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ipp_funcs, !81, !"ipp_funcs", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1128, i32 36}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1090, i32 3}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @fimc_commit._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @fimc_commit._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 368, i32 2}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 508, i32 2}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 517, i32 2}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 479, i32 2}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 482, i32 2}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 421, i32 2}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 694, i32 2}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 766, i32 3}
!103 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @fimc_set_prescaler._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @fimc_set_prescaler._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 772, i32 3}
!108 = !{ptr @fimc_set_prescaler._entry.39, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @fimc_set_prescaler._entry_ptr.41, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 778, i32 2}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 780, i32 2}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 787, i32 2}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 791, i32 2}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 809, i32 2}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 811, i32 2}
!122 = !{ptr @fimc_of_match, !123, !"fimc_of_match", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1409, i32 34}
!124 = !{ptr @fimc_pm_ops, !125, !"fimc_pm_ops", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1403, i32 32}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/exynos/exynos_drm_fimc.c", i32 1389, i32 2}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2156635271}
!138 = !{i64 5079928}
!139 = !{i64 2156636116}
!140 = !{i64 5079510}
!141 = !{i64 2156634031}
!142 = !{i64 2156634243}
!143 = !{i64 2156636991}
!144 = !{i64 2156637838}
!145 = !{i64 2148274313}
!146 = !{i64 759136, i64 759161, i64 759183, i64 759199, i64 759211, i64 759231, i64 759255, i64 759271, i64 759283}
!147 = !{i64 2148274501}
!148 = !{i32 0, i32 33}
!149 = !{i8 0, i8 2}
